infcon <- file("D:/SdmPsiGui-win64-v6.21/home/my/new")
outfcon <- file("D:/SdmPsiGui-win64-v6.21/home/my")
batch <- 30
while(TRUE){
  lines <- readLines(infcon, n=batch)
  if(length(lines)==0) break
  chartr(" ", ",", c(lines))
  writeLines(outlines, con=outfcon)
}
close(outfcon)
close(infcon)
