#' Keeps track of the cassette persisters in a hash-like object
#'
#' @export
#' @keywords internal
#' @param persisters A list
#' @param name (character) Persister name, only option right now is "FileSystem"
#' @details There's only one option: `FileSystem`
#'
#' \strong{Private Methods}
#'  \describe{
#'     \item{\code{persister_get()}}{
#'       Gets and sets a named persister
#'     }
#'   }
#' @format NULL
#' @usage NULL
#' @examples
#' (aa <- Persisters$new())
#' aa$name
#' aa$persisters
#' yaml_serializer <- aa$persisters$new()
#' yaml_serializer
Persisters <- R6::R6Class(
  "Persisters",
   public = list(
     persisters = list(),
     name = "FileSystem",

     initialize = function(persisters = list(), name = "FileSystem") {
       self$persisters <- persisters
       self$name <- name
       private$persister_get()
     }
   ),

   private = list(
     # Gets and sets a named persister
     persister_get = function() {
       if (!self$name %in% 'FileSystem') {
         stop(sprintf("The requested VCR cassette persister (%s) is not registered.", self$name),
              call. = FALSE)
       }
       self$persisters <- switch(self$name,
                                 FileSystem = FileSystem
       )
     }
   )
)

#' @rdname Persisters
persister_fetch <- function(x = "FileSystem", file_name) {
  per <- Persisters$new(name = x)
  per <- per$persisters
  per$new(file_name = file_name)
}
