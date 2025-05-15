import subprocess
import openai

def analyze_binary(file_path, output_file, openai_api_key):
    # Run objdump to disassemble the binary file
    objdump_command = f"objdump -d {file_path}"
    result = subprocess.run(objdump_command, shell=True, capture_output=True, text=True)

    if result.returncode != 0:
        raise Exception(f"Error running objdump: {result.stderr}")

    # Save objdump output to a file
    with open(output_file, "w") as f:
        f.write(result.stdout)

    # Send the disassembled code to OpenAI for analysis
    openai.api_key = openai_api_key
    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[{"role": "system", "content": "Analyze the following assembly code for potential buffer overflow vulnerabilities."},
                  {"role": "user", "content": result.stdout}]
    )

    return response["choices"][0]["message"]["content"]

# Example usage
binary_file = "example_binary"
output_file = "objdump_output.txt"
openai_api_key = "your_openai_api_key_here"

try:
    analysis_result = analyze_binary(binary_file, output_file, openai_api_key)
    print("OpenAI Analysis:")
    print(analysis_result)
except Exception as e:
    print(f"Error: {e}")
