FROM fedora:24

RUN dnf install -y java-1.8.0-openjdk gradle && dnf clean all -y

LABEL io.k8s.description="Platform for building EnMasse java components" \
      io.k8s.display-name="enmasse-java-builder" \
      io.openshift.tags="java,builder,enmasse" \
      io.openshift.s2i.scripts-url=image:///usr/libexec/s2i

COPY ./.s2i/bin/ /usr/libexec/s2i
USER default
