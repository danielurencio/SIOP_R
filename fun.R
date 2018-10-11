a = str_extract_all('C/500M C/ 500 M C/500 M 300M 300 M','[C/\\s]+?\\d+\\s?M')[[1]]
b = sapply(a,function(x) if(!grepl('C/',x)) x else FALSE)
b =as.vector(b)
b = b[ b != FALSE]


st = 'C/500M C/ 500 M C/500 M 300M 300 M'

metros = function(st) {
  a = str_extract_all(st,'[C/\\s]+?\\d+\\s?M')[[1]]
  b = sapply(a,function(x) if(!grepl('C/',x)) x else FALSE)
  b =as.vector(b)
  b = b[ b != FALSE]
  return(b)
}
