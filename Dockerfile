FROM mono:latest

RUN nuget install Paket -excludeversion -outputdirectory /opt/
ADD . /app
WORKDIR /app
RUN mono /opt/Paket/tools/paket.exe install
RUN xbuild /p:Configuration=Release
