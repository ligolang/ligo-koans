FROM ligolang/ligo:0.42.0 as ligo

FROM gitpod/workspace-full:latest

RUN npm i -g @esy-nightly/esy
COPY --from=ligo /root/ligo /usr/local/bin/ligo

RUN sudo add-apt-repository ppa:serokell/tezos && sudo apt-get update
RUN sudo apt-get install -y apt-transport-https
RUN sudo touch /.containerenv
RUN sudo apt-get install -y tezos-client 
