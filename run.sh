JNI_DIR=jni
VERSION=1.0-SNAPSHOT
PROGRAM=dk.kb.TensorProgram
#PROGRAM=dk.kb.MandelBrot
if [ ! -d ${JNI_DIR} ]; then
 echo Missing directory: $JNI_DIR 
 echo Please run the download_jni.sh script first 
 exit 1;
fi 
JARFILE=target/intelligence-$VERSION.jar
if [ ! -f ${JARFILE} ]; then
 echo Missing jarfile $JARFILE 
 echo Please run mvn clean install or mvn clean package first 
 exit 1;
fi
if [ ! -f ./strawberry.jpg ]; then
wget https://docs.oracle.com/javase/tutorial/2d/images/examples/strawberry.jpg
fi
echo Running program $PROGRAM
java -cp lib/libtensorflow-1.6.0.jar:target/intelligence-$VERSION.jar -Djava.library.path=jni $PROGRAM


