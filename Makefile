all: L7131_FredericBastien.pdf

L7131_FredericBastien.pdf: L7131_FredericBastien.tex
	pdflatex L7131_FredericBastien.tex
	pdflatex L7131_FredericBastien.tex

clean:
	rm *.toc *.snm *.aux *.log *.nav *.out *.vrb

lab.zip: notebook/*.py notebook/*.ipynb notebook/mnist.pkl.gz notebook/vgg16.pkl notebook/test/* notebook/dog/* notebook/donut/*
	zip -r lab.zip notebook/*.py notebook/*.ipynb notebook/mnist.pkl.gz notebook/vgg16.pkl notebook/test/* notebook/dog/* notebook/donut/*
