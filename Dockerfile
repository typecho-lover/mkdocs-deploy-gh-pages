FROM squidfunk/mkdocs-material:7.1.3
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

RUN pip install mkdocs-git-revision-date-plugin

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
