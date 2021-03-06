#' @title Exporta tail de un dataframe
#' @description Funci�n que exporta un .csv con los 100 �ltimos registros de un dataframe en el path indicado
#' @param dataset Dataframe
#' @param path Lugar donde se exportar� el archivo
#' @details Esta funci�n fue creada principalmente para facilitar el trabajo de exploraci�n de datos.
#' @return Retorna un dataframe con los 100 �ltimos registros del dataset
#' @examples
#' dataset <- V4DATOFIN_v1
#' path <- "C:/Byte/Machine Learning/Predictivo Port Out - Oficial/Dataset/v.1/V4DATOFIN_v1_TAIL.csv"
#' view <- exporta100utlimos(dataset, path) 
#' @export
exporta100ultimos <- function(dataset, path){
  dataset_tail <- as.data.frame(tail(dataset, n=100L))
  write.csv(dataset_tail,path)
  return(dataset_tail)
}

