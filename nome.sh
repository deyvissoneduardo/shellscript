#!/bin/bash

# esse codigo para fins de estudos
# assim se faz um comentario nao funcional
# no shell

#atribuicao de valor na variavel
DATE=$(date +%D-%M-%y)

echo Digite seu nome
        read NOME
echo Digite sua idade
        read IDADE
echo Ola ${NOME} sua idade e ${IDADE} hoje e ${DATE}

