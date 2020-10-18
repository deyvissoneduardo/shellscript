#!/bin/bash

#funcao que converte para png
convert_to_png(){
	local path_image=$1
	local new_image=$(ls $path_image | awk -F. '{ print $1 }')
	convert $new_image.jpg $new_image.png
}


#funcao que verifica se a pasta 
checkInFolder(){
	$1
	# path do diretorio dos arquivos
	cd ~/Downloads/new_images

	# pecorre pastas
	for archive in *
	do
		# guarda o path do arquivo
		local path_archive=$(find ~/Downloads/new_images -name $archive)
 		# verifica se e diretorio ou arquivo
		if [ -d $path_archive ]
		then
			checkInFolder $path_archive
		else
			# converte para png
			convert_to_png $path_archive
		fi
  	done
}

checkInFolder ~/Downloads/imagens-livros

#verifica status de saida da funcao
if [ $? -eq 0 ]
then 
	echo "conversão realizado com sucesso"
else
	echo "conversão não realizada"
fi

