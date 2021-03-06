#' @title Exporta head de un dataframe
#' @description Función que exporta un .csv con los 100 primeros registros de un dataframe en el path indicado
#' @param dataset Dataframe
#' @param path Lugar donde se exportará el archivo
#' @details Esta función fue creada principalmente para facilitar el trabajo de exploración de datos.
#' @return Retorna un dataframe con los 100 primeros registros del dataset
#' @examples
#' dataset <- V4DATOFIN_v1
#' path <- "C:/Byte/Machine Learning/Predictivo Port Out - Oficial/Dataset/v.1/V4DATOFIN_v1_HEAD.csv"
#' view <- exporta100primeros(dataset, path) 
#' @export
exporta100primeros <- function(dataset, path){
  dataset_head <- as.data.frame(head(dataset, n=100L))
  write.csv(dataset_head,path)
  return(dataset_head)
}

