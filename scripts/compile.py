import os
import subprocess

def compile_latex_to_pdf(tex_file_path):
    """
    Compile a LaTeX file to PDF using pdflatex.

    Args:
        tex_file_path (str): Path to the .tex file.
    """
    # Ensure the .tex file exists
    if not os.path.isfile(tex_file_path):
        print(f"Error: File '{tex_file_path}' not found.")
        return

    # Get the directory and filename
    tex_dir = os.path.dirname(tex_file_path)
    tex_file_name = os.path.basename(tex_file_path)

    # Change to the directory of the .tex file
    os.chdir(tex_dir)

    # Run pdflatex to compile the .tex file
    try:
        subprocess.run(["pdflatex", "-interaction=nonstopmode", tex_file_name], check=True)
        print(f"Successfully compiled '{tex_file_name}' to PDF.")
    except subprocess.CalledProcessError as e:
        print(f"Error: Failed to compile '{tex_file_name}'.")
        print(e)

if __name__ == "__main__":
    # Path to the .tex file you want to compile
    tex_file_path = "main.tex"  # Replace with your .tex file path

    # Compile the .tex file
    compile_latex_to_pdf(tex_file_path)
