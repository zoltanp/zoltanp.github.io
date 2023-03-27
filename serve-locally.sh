#!/bin/sh
#jekyll --auto --serve --url http://127.0.0.1:4000 $@
jekyll serve --drafts --watch --config _config_localhost.yml $@
