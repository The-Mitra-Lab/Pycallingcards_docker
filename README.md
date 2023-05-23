# PyCallingcards Docker

## How to build
1. Clone this repository
2. Modify the [script](https://github.com/The-Mitra-Lab/Pycallingcards_docker/blob/main/src/build.sh) 
as you like. For instance, change version number, modify requirements, add/drop build platforms.
3. Run the script


## How to run

### Express trial
1. Run the following command:
```docker run -p 10981:10981 juanruguo/pycallingcards```
It will choose the most appriopriate platform for you automatically.
2. Open a web browser and go to http://localhost:10981

### Advanced options
1. Mount host file system into docker container

For example, if you wish your working directory on the host is ```/home/UserName/data/*```
I.e. all the input files are already here, and you wish the output files to be saved here as well.
Use following command: 
```docker run -p 10981:10981 -v /home/UserName/data/*:/code juanruguo/pycallingcards```

See [here](https://docs.docker.com/storage/bind-mounts/) for more details.


## Test files
The container provides all the examples from [**here**](https://pycallingcards.readthedocs.io/en/latest/)

## Homer usage
The docker does not contain reference genome. If you need to use homer, please install the genome you use.
For example, if you are using ``mm10``, please run the following in the terminal after you start your docker.

```shell
perl /homer/configureHomer.pl -install mm10
```


