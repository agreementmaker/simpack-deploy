#!/usr/bin/env bash

if [ ! -e simpack-0.91-bin.jar ]; then
  wget https://files.ifi.uzh.ch/ddis/oldweb/ddis/fileadmin/user_upload/kiefer/simpack/simpack-0.91-bin.jar
fi

mvn deploy:deploy-file \
  -Durl=scpexe://onawh.im/maven \
  -DrepositoryId=ssh-repository \
  -Dfile=simpack-0.91-bin.jar \
  -DgroupId=com.github.agreementmaker \
  -DartifactId=simpack \
  -Dversion=0.91 \
  -Dpackaging=jar \
  -DgeneratePom=true \
  -DgeneratePom.description="SimPack is intended primarily for the research of similarity between concepts in ontologies or ontologies as a whole - https://files.ifi.uzh.ch/ddis/oldweb/ddis/research/simpack/index.html"
