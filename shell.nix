{ pkgs ? import <nixpkgs> {}, monitor ? false }:

pkgs.mkShell {
  shellHook = ''
    ${if monitor then ''
      latexmk -pdf -pvc -view=none -shell-escape -interaction=nonstopmode -output-directory="./out" -f slide.tex
    '' else ''
      latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f slide.tex
    ''}
    exit
  '';
}
