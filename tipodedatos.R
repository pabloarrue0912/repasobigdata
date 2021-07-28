install.packages("rvest")

library(rvest)

sensacine <- read_html("https://www.sensacine.com/peliculas/mejores-peliculas/%22)

#Revisando el contenido 

print(html_text(sensacine))

titulos<- html_nodes(sensacine, css=".meta-title-link")
print(html_text(titulos))

#Navegacion en 10 paginas, 10 peliculas por pagina =100

for (nropagina in 1:10) {
print ("==========================================================================")
print(paste("Navegando por el nro de pagina",nropagina))
url1sensacine<- (paste("https://www.sensacine.com/peliculas/mejores-peliculas/%22,%22?page=%22,nropagina,sep = ""))
print(url1sensacine)
sensacine<- read_html(url1sensacine)
print(html_text(sensacine))

}

titulos2<-html_nodes(sensacine,css=".meta-title-link")
print(html_text(titulos2))