# My Dockerfile Repo

- ansilbe:2.8.6
- rapipdf

  > translate local swagger.json to pdf
  > docker run --rm -p 8081:80 -v \$(swagger file path):/usr/share/nginx/html/swagger.json highkay/rapipdf:latest
  > open http://localhost:8081 and click button
  > if there is a tab open and close suddenly, disable your chrome ad block or some staff.
