##Load data-first column is titled X and then the rest are names of individual

#####ForMac
ImantodesComp <- read.csv("/Volumes/GoogleDrive/My Drive/Projects/NSF_FAPESP_Scales/Collaborative_Projects/Imantodes/Raw_Data/Proteomics/HPLC/Imantodes_RAW.csv",header = TRUE)

View(ImantodesComp)
################ForMac
i=2 ##starts with first individual which should be your second column
while(i<=4) ##Goes to your last column which should be your last individual
{
  name1="/Volumes/GoogleDrive/My Drive/Projects/NSF_FAPESP_Scales/Collaborative_Projects/Imantodes/Raw_Data/Proteomics/HPLC/Graphs/"
  num=(colnames(ImantodesComp[i]))
  ext=".pdf"
  path3=paste(name1,num,ext)
  pdf(file=path3,height=7,width=10)
  plot(ImantodesComp[[i]]~ImantodesComp$Time,type="l", xlim=c(6,140), cex.axis=2, cex.lab=1.5, lwd=3,
       ylab="Absorbance at 220 nm",xlab="Time (minutes)",
       main=colnames(ImantodesComp[i]))
  dev.off()
  i=i+1
}





################ForWindows
i=2 ##starts with first individual which should be your second column
while(i<=27) ##Goes to your last column which should be your last individual
{
  name1="C:/Users/jason_000/Dropbox/For Miguel/Crotalus_molossus/HPLCGraphs/"
  num=(colnames(MoloComp[i]))
  ext=".pdf"
  path3=paste(name1,num,ext)
  pdf(file=path3,height=7,width=10)
  plot(MoloComp[[i]]~MoloComp$Time,type="l", xlim=c(6,140), cex.axis=2, cex.lab=1.5, lwd=3,
       ylab="Absorbance at 220 nm",xlab="Time (minutes)",
       main=colnames(MoloComp[i]))
  dev.off()
  i=i+1
}

##Jason's note - I have modified the graph output to fit what I wanted in my paper, they can all be modified
##however you want