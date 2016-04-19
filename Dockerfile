FROM openblockchain/baseimage:latest 

ENV GOPATH=/opt/gopath
ENV GOROOT=/opt/go
ADD . $GOPATH/src/github.com/hyperledger/fabric/
ENV PATH=$PATH:$GOPATH/src/github.com/hyperledger/fabric/bin:$GOROOT/bin
WORKDIR  $GOPATH/src/github.com/hyperledger/fabric/