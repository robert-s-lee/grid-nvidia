#!/usr/bin/env python3

from time import sleep
import pytorch_lightning as pl
if __name__ == "__main__":
    print("Hello, world!")
    print(f"PyTorch Lightning version: {pl.__version__}")
    for i in range(10):
        print(f"Loop {i}")
        sleep(1)