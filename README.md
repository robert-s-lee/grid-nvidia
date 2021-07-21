Demo of Grid.ai using Poetry as the package manager.

- [Test Locally](#test-locally)
- [Running when source control is GitHub](#running-when-source-control-is-github)
- [Running when source control is BitBucket and others](#running-when-source-control-is-bitbucket-and-others)
- [Example Output](#example-output)

# Test Locally
```bash
# require python 3.8 for Grid.ai CLI
conda create --name python38 python=3.8
conda activate python38
# build docker
docker build -t poetry:latest -f poetry.Dockerfile .
# run 
docker run -it poetry:latest /gridai/project/run.py
```

# Running when source control is GitHub
- Run on Grid.ai CLI below or click
[![Grid.ai Run](https://img.shields.io/badge/rid_AI-run-78FF96.svg?labelColor=black&logo=data:image/svg%2bxml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEgMTR2MjBhMTQgMTQgMCAwMDE0IDE0aDlWMzYuOEgxMi42VjExaDIyLjV2N2gxMS4yVjE0QTE0IDE0IDAgMDAzMi40IDBIMTVBMTQgMTQgMCAwMDEgMTR6IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0iTTM1LjIgNDhoMTEuMlYyNS41SDIzLjl2MTEuM2gxMS4zVjQ4eiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)](
https://platform.grid.ai/#/runs?script=https://github.com/robert-s-lee/grid-poetry/blob/218147c10e887722952f53b6d29983f3c3019d7d/run.py&cloud=grid&instance=t2.medium&accelerators=1&disk_size=200&framework=lightning&script_args=run.py
)
```
grid run --dockerfile poetry.Dockerfile run.py
```

# Running when source control is BitBucket and others
Clone the [BitBucket repo](https://bitbucket.org/robert-s-lee/grid-poetry/src/main/) to local environment and use Grid.ai `--localdir`
```
grid run --dockerfile poetry.Dockerfile --localdir run.py
```

# Example Output
- An example of output from the Run
```log
grid logs powerful-ape-262-exp0

[build] [2021-07-21T19:55:11.574530+00:00] INFO[0001] Built cross stage deps: map[]                
[build] [2021-07-21T19:55:11.574550+00:00] INFO[0001] Retrieving image manifest python:3.9.6-slim  
[build] [2021-07-21T19:55:11.574553+00:00] INFO[0001] Returning cached image manifest              
[build] [2021-07-21T19:55:11.574555+00:00] INFO[0001] Retrieving image manifest python:3.9.6-slim  
[build] [2021-07-21T19:55:11.574558+00:00] INFO[0001] Returning cached image manifest              
[build] [2021-07-21T19:55:11.574667+00:00] INFO[0001] Executing 0 build triggers                   
[build] [2021-07-21T19:55:11.575388+00:00] INFO[0001] Checking for cached layer 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:38068a114ff88ae05f0779b5395d2d1762d5a72b645b884a829b709021f8f610... 
[build] [2021-07-21T19:55:12.174679+00:00] INFO[0001] No cached layer found for cmd RUN pip install poetry 
[build] [2021-07-21T19:55:12.174707+00:00] INFO[0001] Unpacking rootfs as cmd COPY . . requires it. 
[build] [2021-07-21T19:55:14.027631+00:00] INFO[0003] Taking snapshot of full filesystem...        
[build] [2021-07-21T19:55:14.572107+00:00] INFO[0004] WORKDIR /gridai/project                      
[build] [2021-07-21T19:55:14.572133+00:00] INFO[0004] cmd: workdir                                 
[build] [2021-07-21T19:55:14.572136+00:00] INFO[0004] Changed working directory to /gridai/project 
[build] [2021-07-21T19:55:14.572138+00:00] INFO[0004] Creating directory /gridai/project           
[build] [2021-07-21T19:55:14.572273+00:00] INFO[0004] Taking snapshot of files...                  
[build] [2021-07-21T19:55:14.573178+00:00] INFO[0004] COPY . .                                     
[build] [2021-07-21T19:55:14.574645+00:00] INFO[0004] Taking snapshot of files...                  
[build] [2021-07-21T19:55:14.577044+00:00] INFO[0004] ARG TMPDIR=/var/tmp                          
[build] [2021-07-21T19:55:14.577106+00:00] INFO[0004] No files changed in this command, skipping snapshotting. 
[build] [2021-07-21T19:55:14.577115+00:00] INFO[0004] RUN pip install poetry                       
[build] [2021-07-21T19:55:14.606103+00:00] INFO[0004] cmd: /bin/sh                                 
[build] [2021-07-21T19:55:14.606118+00:00] INFO[0004] args: [-c pip install poetry]                
[build] [2021-07-21T19:55:14.606143+00:00] INFO[0004] Running: [/bin/sh -c pip install poetry]     
[build] [2021-07-21T19:55:16.161877+00:00] Collecting poetry
[build] [2021-07-21T19:55:16.195934+00:00]   Downloading poetry-1.1.7-py2.py3-none-any.whl (173 kB)
[build] [2021-07-21T19:55:16.365703+00:00] Collecting virtualenv<21.0.0,>=20.0.26
[build] [2021-07-21T19:55:16.371615+00:00]   Downloading virtualenv-20.6.0-py2.py3-none-any.whl (5.3 MB)
[build] [2021-07-21T19:55:16.499022+00:00] Collecting poetry-core<1.1.0,>=1.0.3
[build] [2021-07-21T19:55:16.506960+00:00]   Downloading poetry_core-1.0.3-py2.py3-none-any.whl (424 kB)
[build] [2021-07-21T19:55:16.537869+00:00] Collecting requests-toolbelt<0.10.0,>=0.9.1
[build] [2021-07-21T19:55:16.541313+00:00]   Downloading requests_toolbelt-0.9.1-py2.py3-none-any.whl (54 kB)
[build] [2021-07-21T19:55:16.559592+00:00] Collecting crashtest<0.4.0,>=0.3.0
[build] [2021-07-21T19:55:16.563762+00:00]   Downloading crashtest-0.3.1-py3-none-any.whl (7.0 kB)
[build] [2021-07-21T19:55:16.585860+00:00] Collecting cachecontrol[filecache]<0.13.0,>=0.12.4
[build] [2021-07-21T19:55:16.589361+00:00]   Downloading CacheControl-0.12.6-py2.py3-none-any.whl (19 kB)
[build] [2021-07-21T19:55:16.631970+00:00] Collecting tomlkit<1.0.0,>=0.7.0
[build] [2021-07-21T19:55:16.635971+00:00]   Downloading tomlkit-0.7.2-py2.py3-none-any.whl (32 kB)
[build] [2021-07-21T19:55:16.667216+00:00] Collecting clikit<0.7.0,>=0.6.2
[build] [2021-07-21T19:55:16.671135+00:00]   Downloading clikit-0.6.2-py2.py3-none-any.whl (91 kB)
[build] [2021-07-21T19:55:16.696423+00:00] Collecting pkginfo<2.0,>=1.4
[build] [2021-07-21T19:55:16.705982+00:00]   Downloading pkginfo-1.7.1-py2.py3-none-any.whl (25 kB)
[build] [2021-07-21T19:55:16.729063+00:00] Collecting html5lib<2.0,>=1.0
[build] [2021-07-21T19:55:16.732573+00:00]   Downloading html5lib-1.1-py2.py3-none-any.whl (112 kB)
[build] [2021-07-21T19:55:16.756059+00:00] Collecting pexpect<5.0.0,>=4.7.0
[build] [2021-07-21T19:55:16.759465+00:00]   Downloading pexpect-4.8.0-py2.py3-none-any.whl (59 kB)
[build] [2021-07-21T19:55:16.792332+00:00] Collecting shellingham<2.0,>=1.1
[build] [2021-07-21T19:55:16.797544+00:00]   Downloading shellingham-1.4.0-py2.py3-none-any.whl (9.4 kB)
[build] [2021-07-21T19:55:16.818588+00:00] Collecting cachy<0.4.0,>=0.3.0
[build] [2021-07-21T19:55:16.822215+00:00]   Downloading cachy-0.3.0-py2.py3-none-any.whl (20 kB)
[build] [2021-07-21T19:55:16.856462+00:00] Collecting cleo<0.9.0,>=0.8.1
[build] [2021-07-21T19:55:16.860265+00:00]   Downloading cleo-0.8.1-py2.py3-none-any.whl (21 kB)
[build] [2021-07-21T19:55:16.924880+00:00] Collecting requests<3.0,>=2.18
[build] [2021-07-21T19:55:16.928650+00:00]   Downloading requests-2.26.0-py2.py3-none-any.whl (62 kB)
[build] [2021-07-21T19:55:17.011543+00:00] Collecting keyring<22.0.0,>=21.2.0
[build] [2021-07-21T19:55:17.015107+00:00]   Downloading keyring-21.8.0-py3-none-any.whl (32 kB)
[build] [2021-07-21T19:55:17.059204+00:00] Collecting packaging<21.0,>=20.4
[build] [2021-07-21T19:55:17.063730+00:00]   Downloading packaging-20.9-py2.py3-none-any.whl (40 kB)
[build] [2021-07-21T19:55:17.136359+00:00] Collecting msgpack>=0.5.2
[build] [2021-07-21T19:55:17.141752+00:00]   Downloading msgpack-1.0.2-cp39-cp39-manylinux1_x86_64.whl (294 kB)
[build] [2021-07-21T19:55:17.172710+00:00] Collecting lockfile>=0.9
[build] [2021-07-21T19:55:17.177471+00:00]   Downloading lockfile-0.12.2-py2.py3-none-any.whl (13 kB)
[build] [2021-07-21T19:55:17.223286+00:00] Collecting pastel<0.3.0,>=0.2.0
[build] [2021-07-21T19:55:17.226485+00:00]   Downloading pastel-0.2.1-py2.py3-none-any.whl (6.0 kB)
[build] [2021-07-21T19:55:17.242740+00:00] Collecting pylev<2.0,>=1.3
[build] [2021-07-21T19:55:17.245914+00:00]   Downloading pylev-1.4.0-py2.py3-none-any.whl (6.1 kB)
[build] [2021-07-21T19:55:17.286193+00:00] Collecting six>=1.9
[build] [2021-07-21T19:55:17.289537+00:00]   Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
[build] [2021-07-21T19:55:17.304730+00:00] Collecting webencodings
[build] [2021-07-21T19:55:17.308018+00:00]   Downloading webencodings-0.5.1-py2.py3-none-any.whl (11 kB)
[build] [2021-07-21T19:55:17.348119+00:00] Collecting jeepney>=0.4.2
[build] [2021-07-21T19:55:17.351575+00:00]   Downloading jeepney-0.7.0-py3-none-any.whl (53 kB)
[build] [2021-07-21T19:55:17.384260+00:00] Collecting SecretStorage>=3.2
[build] [2021-07-21T19:55:17.387550+00:00]   Downloading SecretStorage-3.3.1-py3-none-any.whl (15 kB)
[build] [2021-07-21T19:55:17.469484+00:00] Collecting pyparsing>=2.0.2
[build] [2021-07-21T19:55:17.473301+00:00]   Downloading pyparsing-2.4.7-py2.py3-none-any.whl (67 kB)
[build] [2021-07-21T19:55:17.503610+00:00] Collecting ptyprocess>=0.5
[build] [2021-07-21T19:55:17.506998+00:00]   Downloading ptyprocess-0.7.0-py2.py3-none-any.whl (13 kB)
[build] [2021-07-21T19:55:17.592476+00:00] Collecting idna<4,>=2.5
[build] [2021-07-21T19:55:17.606157+00:00]   Downloading idna-3.2-py3-none-any.whl (59 kB)
[build] [2021-07-21T19:55:17.641331+00:00] Collecting certifi>=2017.4.17
[build] [2021-07-21T19:55:17.645129+00:00]   Downloading certifi-2021.5.30-py2.py3-none-any.whl (145 kB)
[build] [2021-07-21T19:55:17.677260+00:00] Collecting charset-normalizer~=2.0.0
[build] [2021-07-21T19:55:17.680738+00:00]   Downloading charset_normalizer-2.0.3-py3-none-any.whl (35 kB)
[build] [2021-07-21T19:55:17.742188+00:00] Collecting urllib3<1.27,>=1.21.1
[build] [2021-07-21T19:55:17.746116+00:00]   Downloading urllib3-1.26.6-py2.py3-none-any.whl (138 kB)
[build] [2021-07-21T19:55:18.162069+00:00] Collecting cryptography>=2.0
[build] [2021-07-21T19:55:18.170795+00:00]   Downloading cryptography-3.4.7-cp36-abi3-manylinux2014_x86_64.whl (3.2 MB)
[build] [2021-07-21T19:55:18.504819+00:00] Collecting cffi>=1.12
[build] [2021-07-21T19:55:18.510247+00:00]   Downloading cffi-1.14.6-cp39-cp39-manylinux1_x86_64.whl (405 kB)
[build] [2021-07-21T19:55:18.541771+00:00] Collecting pycparser
[build] [2021-07-21T19:55:18.545321+00:00]   Downloading pycparser-2.20-py2.py3-none-any.whl (112 kB)
[build] [2021-07-21T19:55:18.639984+00:00] Collecting platformdirs<3,>=2
[build] [2021-07-21T19:55:18.643479+00:00]   Downloading platformdirs-2.0.2-py2.py3-none-any.whl (10 kB)
[build] [2021-07-21T19:55:18.663089+00:00] Collecting distlib<1,>=0.3.1
[build] [2021-07-21T19:55:18.667746+00:00]   Downloading distlib-0.3.2-py2.py3-none-any.whl (338 kB)
[build] [2021-07-21T19:55:18.691065+00:00] Collecting backports.entry-points-selectable>=1.0.4
[build] [2021-07-21T19:55:18.694339+00:00]   Downloading backports.entry_points_selectable-1.1.0-py2.py3-none-any.whl (6.2 kB)
[build] [2021-07-21T19:55:18.717056+00:00] Collecting filelock<4,>=3.0.0
[build] [2021-07-21T19:55:18.720345+00:00]   Downloading filelock-3.0.12-py3-none-any.whl (7.6 kB)
[build] [2021-07-21T19:55:19.019805+00:00] Installing collected packages: pycparser, urllib3, idna, charset-normalizer, cffi, certifi, requests, pylev, pastel, msgpack, jeepney, cryptography, crashtest, webencodings, six, SecretStorage, pyparsing, ptyprocess, platformdirs, lockfile, filelock, distlib, clikit, cachecontrol, backports.entry-points-selectable, virtualenv, tomlkit, shellingham, requests-toolbelt, poetry-core, pkginfo, pexpect, packaging, keyring, html5lib, cleo, cachy, poetry
[build] [2021-07-21T19:55:21.000925+00:00] Successfully installed SecretStorage-3.3.1 backports.entry-points-selectable-1.1.0 cachecontrol-0.12.6 cachy-0.3.0 certifi-2021.5.30 cffi-1.14.6 charset-normalizer-2.0.3 cleo-0.8.1 clikit-0.6.2 crashtest-0.3.1 cryptography-3.4.7 distlib-0.3.2 filelock-3.0.12 html5lib-1.1 idna-3.2 jeepney-0.7.0 keyring-21.8.0 lockfile-0.12.2 msgpack-1.0.2 packaging-20.9 pastel-0.2.1 pexpect-4.8.0 pkginfo-1.7.1 platformdirs-2.0.2 poetry-1.1.7 poetry-core-1.0.3 ptyprocess-0.7.0 pycparser-2.20 pylev-1.4.0 pyparsing-2.4.7 requests-2.26.0 requests-toolbelt-0.9.1 shellingham-1.4.0 six-1.16.0 tomlkit-0.7.2 urllib3-1.26.6 virtualenv-20.6.0 webencodings-0.5.1
[build] [2021-07-21T19:55:21.000970+00:00] WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
[build] [2021-07-21T19:55:21.425437+00:00] INFO[0011] Taking snapshot of files...                  
[build] [2021-07-21T19:55:22.469082+00:00] INFO[0012] RUN poetry config virtualenvs.create false   
[build] [2021-07-21T19:55:22.511215+00:00] INFO[0012] Pushing layer 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:38068a114ff88ae05f0779b5395d2d1762d5a72b645b884a829b709021f8f610 to cache now 
[build] [2021-07-21T19:55:22.531516+00:00] INFO[0012] cmd: /bin/sh                                 
[build] [2021-07-21T19:55:22.531539+00:00] INFO[0012] args: [-c poetry config virtualenvs.create false] 
[build] [2021-07-21T19:55:22.531544+00:00] INFO[0012] Running: [/bin/sh -c poetry config virtualenvs.create false] 
[build] [2021-07-21T19:55:22.777804+00:00] INFO[0012] Pushing image to 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:38068a114ff88ae05f0779b5395d2d1762d5a72b645b884a829b709021f8f610 
[build] [2021-07-21T19:55:23.021266+00:00] INFO[0012] Taking snapshot of files...                  
[build] [2021-07-21T19:55:23.051311+00:00] INFO[0012] Pushing layer 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:ca8f55d340b93f9886c36f8c2fdba6d8db8d25e2228eed069088f22361ab71b5 to cache now 
[build] [2021-07-21T19:55:23.051322+00:00] INFO[0012] RUN poetry install                           
[build] [2021-07-21T19:55:23.123232+00:00] INFO[0012] cmd: /bin/sh                                 
[build] [2021-07-21T19:55:23.123255+00:00] INFO[0012] args: [-c poetry install]                    
[build] [2021-07-21T19:55:23.123258+00:00] INFO[0012] Running: [/bin/sh -c poetry install]         
[build] [2021-07-21T19:55:23.317189+00:00] INFO[0013] Pushing image to 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:ca8f55d340b93f9886c36f8c2fdba6d8db8d25e2228eed069088f22361ab71b5 
[build] [2021-07-21T19:55:23.503974+00:00] Skipping virtualenv creation, as specified in config file.
[build] [2021-07-21T19:55:23.555448+00:00] Updating dependencies
[build] [2021-07-21T19:55:23.555465+00:00] Resolving dependencies...
[build] [2021-07-21T19:55:23.939240+00:00] INFO[0013] Pushed image to 1 destinations               
[build] [2021-07-21T19:55:24.964159+00:00] INFO[0014] Pushed image to 1 destinations               
[build] [2021-07-21T19:55:50.783121+00:00] 
[build] [2021-07-21T19:55:50.783147+00:00] Writing lock file
[build] [2021-07-21T19:55:50.889537+00:00] 
[build] [2021-07-21T19:55:50.889564+00:00] Package operations: 32 installs, 1 update, 0 removals
[build] [2021-07-21T19:55:50.889572+00:00] 
[build] [2021-07-21T19:55:50.890335+00:00]   • Installing pyasn1 (0.4.8)
[build] [2021-07-21T19:55:51.343880+00:00]   • Installing cachetools (4.2.2)
[build] [2021-07-21T19:55:51.345766+00:00]   • Installing multidict (5.1.0)
[build] [2021-07-21T19:55:51.347736+00:00]   • Installing oauthlib (3.1.1)
[build] [2021-07-21T19:55:51.348906+00:00]   • Installing pyasn1-modules (0.2.8)
[build] [2021-07-21T19:55:51.349318+00:00]   • Installing rsa (4.7.2)
[build] [2021-07-21T19:55:52.688116+00:00]   • Installing async-timeout (3.0.1)
[build] [2021-07-21T19:55:52.689392+00:00]   • Installing attrs (21.2.0)
[build] [2021-07-21T19:55:52.691395+00:00]   • Installing google-auth (1.33.1)
[build] [2021-07-21T19:55:52.692535+00:00]   • Installing requests-oauthlib (1.3.0)
[build] [2021-07-21T19:55:52.696254+00:00]   • Installing typing-extensions (3.10.0.0)
[build] [2021-07-21T19:55:52.709681+00:00]   • Installing chardet (4.0.0)
[build] [2021-07-21T19:55:52.714130+00:00]   • Installing yarl (1.6.3)
[build] [2021-07-21T19:55:55.061497+00:00]   • Installing absl-py (0.13.0)
[build] [2021-07-21T19:55:55.062649+00:00]   • Installing aiohttp (3.7.4.post0)
[build] [2021-07-21T19:55:55.064420+00:00]   • Installing grpcio (1.38.1)
[build] [2021-07-21T19:55:55.065902+00:00]   • Installing google-auth-oauthlib (0.4.4)
[build] [2021-07-21T19:55:55.067100+00:00]   • Installing numpy (1.21.1)
[build] [2021-07-21T19:55:55.069634+00:00]   • Installing markdown (3.3.4)
[build] [2021-07-21T19:55:55.075160+00:00]   • Updating packaging (20.9 -> 21.0)
[build] [2021-07-21T19:55:55.076718+00:00]   • Installing protobuf (3.17.3)
[build] [2021-07-21T19:55:55.080974+00:00]   • Installing werkzeug (2.0.1)
[build] [2021-07-21T19:55:55.082721+00:00]   • Installing torch (1.9.0)
[build] [2021-07-21T19:55:55.086769+00:00]   • Installing tensorboard-plugin-wit (1.8.0)
[build] [2021-07-21T19:56:17.297118+00:00]   • Installing fsspec (2021.7.0)
[build] [2021-07-21T19:56:17.298093+00:00]   • Installing future (0.18.2)
[build] [2021-07-21T19:56:17.300272+00:00]   • Installing pillow (8.3.1)
[build] [2021-07-21T19:56:17.301059+00:00]   • Installing pyyaml (5.4.1)
[build] [2021-07-21T19:56:17.302128+00:00]   • Installing pydeprecate (0.3.0)
[build] [2021-07-21T19:56:17.302942+00:00]   • Installing tensorboard (2.4.1)
[build] [2021-07-21T19:56:17.303857+00:00]   • Installing torchmetrics (0.4.1)
[build] [2021-07-21T19:56:17.305405+00:00]   • Installing tqdm (4.61.2)
[build] [2021-07-21T19:56:21.629815+00:00]   • Installing pytorch-lightning (1.3.8)
[build] [2021-07-21T19:56:23.371359+00:00] INFO[0073] Taking snapshot of files...     
[build] [2021-07-21T19:57:26.726641+00:00] INFO[0136] Pushing layer 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:59b0debd150bdc914a8a8405ffc2daf0f8a2f865c1374fb02e644d4442a37aa9 to cache now 
[build] [2021-07-21T19:57:27.101134+00:00] INFO[0136] Pushing image to 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:59b0debd150bdc914a8a8405ffc2daf0f8a2f865c1374fb02e644d4442a37aa9 
[build] [2021-07-21T19:59:02.469954+00:00] INFO[0232] Pushed image to 1 destinations               
[build] [2021-07-21T19:59:02.841279+00:00] INFO[0232] Pushing image to 302180240179.dkr.ecr.us-east-1.amazonaws.com/grid-cloud-prod:21dad55a-ea48-488f-aa1e-a49a8e15e3f0 
[build] [2021-07-21T19:59:03.489464+00:00] INFO[0233] Pushed image to 1 destinations  
[experiment] [2021-07-21T20:04:52.203580+00:00] Hello, world!
[experiment] [2021-07-21T20:04:52.203605+00:00] PyTorch Lightning version: 1.3.8
[experiment] [2021-07-21T20:04:52.203610+00:00] Loop 0
[experiment] [2021-07-21T20:04:52.203614+00:00] Loop 1
[experiment] [2021-07-21T20:04:52.203617+00:00] Loop 2
[experiment] [2021-07-21T20:04:52.203621+00:00] Loop 3
[experiment] [2021-07-21T20:04:52.203625+00:00] Loop 4
[experiment] [2021-07-21T20:04:52.203628+00:00] Loop 5
[experiment] [2021-07-21T20:04:52.203632+00:00] Loop 6
[experiment] [2021-07-21T20:04:52.203636+00:00] Loop 7
[experiment] [2021-07-21T20:04:52.203639+00:00] Loop 8
[experiment] [2021-07-21T20:04:52.203643+00:00] Loop 9
```
