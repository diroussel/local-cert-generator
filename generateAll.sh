set -x
./createRootCA.sh
./createRootSignedCert.sh chef
./createRootSignedCert.sh repo