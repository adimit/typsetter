FROM debian:testing
MAINTAINER Aleksandar Dimitrov <aleks.dimitrov@gmail.com>
ENV PACKAGES="emacs25-nox org-mode texlive texlive-xetex biber pandoc"
ENV BUILD_DEPENDENCIES="curl unzip"

RUN apt-get update\
 && apt-get install --no-install-recommends -y $PACKAGES $BUILD_DEPENDENCIES\
 && curl -L http://personal.psu.edu/jcc8//software/latexmk-jcc/latexmk-454c.zip > /tmp/latexmk.zip\
 && cd /tmp\
 && unzip latexmk.zip\
 && mv latexmk/latexmk.pl /usr/local/bin/latexmk\
 && rm -rf latexmk*\
 && apt-get remove -y $BUILD_DEPENDENCIES\
 && apt-get autoremove -y\
 && rm -rf /var/apt/lists/*

COPY emacs/*.el /etc/emacs25/site-start.d/
COPY entrypoint.sh /bin
RUN chmod +x /bin/entrypoint.sh

RUN useradd -ms /bin/bash typesetter
USER typesetter
VOLUME /src

WORKDIR /src
ENTRYPOINT ["/bin/entrypoint.sh"]
