if [ $# -ne 2 ]
then
    echo "First arg should be mlcc created 20YYMMDDhhmmss_Dockerfile"
    echo "Second arg should be your desired image name"
    exit 1
fi

set -vx

unlink Dockerfile
ln -s $1 Dockerfile


/bin/date > nohup.out
nohup  docker build -t $2 .  2>&1 
/bin/date >> nohup.out


mv nohup.out $1_nohup.out

