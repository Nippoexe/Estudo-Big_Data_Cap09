# Solução Lista de Exercícios - Capítulo 12 

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
projeto_path = "D:/FCDados/[12] - Azure Machine Learning/[03] - Projetos/"
input_path = "D:/FCDados/[12] - Azure Machine Learning/[01] - InputData/"
output_path = "D:/FCDados/[12] - Azure Machine Learning/[02] - OutputData/"
setwd(projeto_path)
getwd()

# Existem diversos pacotes para arvores de recisao em R. Usaremos aqui o rpart.
#install.packages('rpart')
library(rpart)

# Vamos utilizar um dataset que é disponibilizado junto com o pacote rpart
str(kyphosis)
head(kyphosis)
?kyphosis
?rpart

# Exercício 1 - Depois de explorar o dataset, crie um modelo de árvore de decisão
View(kyphosis)
modelo <- rpart(Kyphosis ~ ., kyphosis, method = 'anova')

# Para examinar o resultado de uma árvore de decisao, existem diversas funcões, mas você pode usar printcp()
printcp(modelo)

# Visualizando a ávore (execute uma função para o plot e outra para o texto no plot)
# Utilize o zoom para visualizar melhor o gráfico
plot(modelo)
text(modelo)
# Este outro pacote faz a visualizaco ficar mais legivel
#install.packages('rpart.plot')
library(rpart.plot)
prp(modelo, 
    faclen = 0, 
    extra = 1, 
    roundint = T, 
    digits = 1)
