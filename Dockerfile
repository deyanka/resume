FROM fedora:39

RUN dnf -y update && \
    dnf -y install \
    wget \
    perl \
    fontconfig \
    python3 \
    ghostscript \
    make \
    texlive-scheme-basic \
    texlive-fontawesome5 \
    texlive-cm-super \
    texlive-latex \
    texlive-xetex \
    texlive-collection-langcyrillic \
    texlive-collection-fontsrecommended \
    texlive-collection-latex \
    texlive-titlesec \
    texlive-geometry \
    texlive-xcolor \
    texlive-paracol \
    texlive-enumitem \
    texlive-hyperref \
    texlive-lastpage \
    texlive-bookmark \
    texlive-charter \
    texlive-eso-pic \
    texlive-needspace \
    make ghostscript perl wget python3 fontconfig \
    && dnf clean all

ENV PATH="/usr/local/texlive/2023/bin/x86_64-linux:${PATH}"

WORKDIR /workspace/CV
COPY . .

CMD ["sh", "-c", "pdflatex -interaction=nonstopmode main.tex && pdflatex -interaction=nonstopmode main.tex"]

