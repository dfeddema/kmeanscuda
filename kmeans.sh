if [ $# -ne 2 ]
then
    echo "First arg should be CPU or GPU"
    echo "Second arg should matrix dimension"
    exit 1
fi

set -vx


python $1  $2 

