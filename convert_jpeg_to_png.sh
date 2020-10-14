#!/bin/bash

# path
PATH_IMAGE = ~/Downloads/imagens-livros


for image in $@
do
	convert $PATH_IMAGE/$image.jpg $PAHT_IMAGE/$image.png
done
