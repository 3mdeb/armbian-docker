This repository aim to provide container for building [Armbian](https://github.com/igorpecovnik/lib).

Assumptions:

* x86_64 Debian sid as host and container system
* there should be minimal number of packets installed by Armbian
* setup should simplify contribution (ie. using forked repo)

Usage
-----


```
git clone https://github.com/igorpecovnik/lib.git
cd armbian-docker
docker build -t 3mdeb/armbian .
cd ..
docker run -v ${PWD}/lib:/root/lib -t -i 3mdeb/armbian
```

Shorter way:

```
git clone https://github.com/3mdeb/armbian-docker.git
cd armbian-docker
REPO=git@github.com:3mdeb/lib.git ./init.sh
```

_NOTE_: you need access to `..`, also if `REPO` not provided
`https://github.com/igorpecovnik/lib.git` will be used

Development setup
-----------------


## Prepare repository

Clone your Armbian fork:

```
git clone git@github.com:3mdeb/lib.git

```

Add Igor's repository as upstream:

```
cd lib
git remote add upstream https://github.com/igorpecovnik/lib.git
git fetch upstream
```

Pull recent changes if needed.

## Run container

```
docker run -v ${PWD}/lib:/root/lib -t -i 3mdeb/armbian
```

Edit and commit your code on host side.
