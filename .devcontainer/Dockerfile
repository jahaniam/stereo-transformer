# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.148.1/containers/python-3-anaconda/.devcontainer/base.Dockerfile

FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime

COPY library-scripts/common-debian.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/common-debian.sh true automatic 1001 1001 true

# [Optional] Uncomment this section to install additional OS packages.
RUN export DEBIAN_FRONTEND=noninteractive \
     && apt-get install -y libgl1-mesa-glx

RUN pip install tqdm sklearn pandas matplotlib jupyterlab
USER vscode
RUN pip install opencv-python --user
USER root