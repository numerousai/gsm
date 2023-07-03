# install python
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install -y python3.10

# create an environment
conda create --name py310 python=3.10 -y
conda activate py310
pip install -r requirements.txt
pip install accelerate
pip install scipy

# install falcontune
python setup/setup.py install         
python setup/setup_cuda.py install