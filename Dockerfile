FROM squidfunk/mkdocs-material:6.1.4
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

RUN pip install mkdocs-git-revision-date-plugin

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
