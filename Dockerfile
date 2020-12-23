FROM squidfunk/mkdocs-material:6.2.2
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

RUN pip install mkdocs-git-revision-date-plugin

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
