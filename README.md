# Thapathali Report LaTeX Template
This LaTeX template is crafted to assist students of Thapathali Campus, Institute of Engineering, Tribhuvan University (IOE TU) in preparing their project reports. It adheres as closely as possible to the institution's formatting and style guidelines, ensuring a professional and consistent presentation.

**To download the template, go to the [releases section](https://github.com/AC17dollars/thapathali-report-latex-template/releases) and download the source code in zip.**

## Features
  - Standardized title page
  - Sections for abstract, introduction, literature review, methodology, results, discussion, conclusion, references, and appendices
  - Automatically generated table of contents, list of figures, and list of tables
  - Customizable to meet specific requirements

## Preview
A preview of the generated **pdf** is available [here](main.pdf).

*Note: The generated pdf contains outlined hyperrefs, this won't affect when printing the document so you can leave it as is. If this bothers you, you can add `\hypersetup{hidelinks}` in main.tex*

![image showing outlined hyperref](https://i.imgur.com/e7o5lP9.png)

## Usage Instructions
1. **Compiling with PDFLaTeX**

    1. Install LaTeX Distribution: Ensure you have a LaTeX distribution installed (e.g., TeX Live, MiKTeX).
    2. Open the Template: Open the main.tex file in your LaTeX editor (e.g., TeXstudio).
    3. Compile the Document: Select appropriate compiler and compile the document to generate the PDF report.

    Or you can directly compile through command line.
    ```
    latexmk -pdf -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build main.tex

    makeglossaries -d build main
    
    latexmk -pdf -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build main.tex
    ```

2. **Using Overleaf**

    1. Create an Overleaf Account: Go to Overleaf and sign up for an account if you don't have one.
    2. Upload the Template: Create a new project and upload all the files from this repository.
    3. Edit and Compile: Edit the main.tex file as needed and click on "Recompile" to generate the PDF.

3. **Using VSCode**

    1. Install LaTeX Workshop Extension: In VSCode, go to Extensions and install the "LaTeX Workshop" extension.
    2. Open the Template: Open the main.tex file in VSCode.
    3. Compile the Document: Use the "LaTeX Workshop" extension to compile the document by clicking on the "TeX" icon in the toolbar and selecting "Build LaTeX project".

## Contribution

Contributions are welcome! If you find any issues or have suggestions for improvements, please create an issue or submit a pull request in this repository. Your feedback will help enhance the template for future users.

## Contact

If any issues arise, you can contact me or create an issue in the GitHub repository.

---

_This template aims to streamline the report-writing process for Thapathali Campus students, ensuring compliance with institutional guidelines while allowing for flexibility and ease of use._
