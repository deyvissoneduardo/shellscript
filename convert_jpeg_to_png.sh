#!/bin/bash

#criando a funcao
convert_image(){
  # abre a pasta
  cd ~/Downloads/imagens-livro

  # verifica se existe a pastas de saida
  if [ ! -d png ]
  then 
	mkdir png
  fi

  # for em todos arquivos de extensão .jpg
  for image in *.jpg
  do
	#remove a extensao .jpg para conversao
	local result_image=$(ls $image | awk -F. '{ print $1 }')
	convert $result_image.jpg png/$result_image.png
  done
}


# cria pasta para saida de erros
if [ ! -d erro_log ]
then
	mkdir erro_log
fi

# executa a funcao
convert_image erro_log/2>erros_convert.txt


# exibe mensagem de acordo com o status da execucao
if [ $? -eq 0 ]
then 
	echo "
***********************************
* conversão realizada com sucesso *
***********************************"
      else

	echo "
***********************************
* houve uma falha no processo     *
***********************************"
fi

