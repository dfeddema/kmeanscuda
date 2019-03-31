from setuptools import setup, find_packages

setup (
    name             = "matrixmult",
    version          = "0.1",
    description      = "Matrix Multiplication with tenforflow"
    packages         = find_packages()
    install_requires = ["gunicorn"],
    )
