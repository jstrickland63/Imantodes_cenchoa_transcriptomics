##Load data-first column is titled X and then the rest are names of individual

#####ForMac
ImantodesComp <- read.csv("Imantodes_RAW.csv",header = TRUE)

View(ImantodesComp)
################ForMac
i=2 ##starts with first individual which should be your second column
while(i<=5) ##Goes to your last column which should be your last individual
{
  name1="/HPLC/Graphs/"
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

##Graph output to fit what was wanted for paper, they can all be modified however you want
