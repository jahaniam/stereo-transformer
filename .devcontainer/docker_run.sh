docker build -t transformer-stereo:latest .
docker run -idt -v /home/jahaniam/dataset:/dataset: --gpus=all -v "$(pwd)"/..:/workspace --name transformer-stereo -u vscode transformer-stereo:latest bash
docker start transformer-stereo
docker exec transformer-stereo pip install -r requirements.txt --user