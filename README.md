Demo of Grid.ai using Poetry

Test Locally
```bash
# require python 3.8 for Grid.ai CLI
conda create --name python38 python=3.8
conda activate python38
# build docker
docker build -t poetry:latest -f poetry.Dockerfile .
# run 
docker run -it poetry:latest /gridai/project/run.py
```

Run on Grid.ai
```
grid run --dockerfile poetry.Dockerfile run.py
```
