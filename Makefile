ARTIFACTS_DIR=src
DEPLOYMENT_DIR=/etc/nginx/html/landing-page

build:
	git pull

install:
	rm -r  "${DEPLOYMENT_DIR}" || true
	mkdir -p "${DEPLOYMENT_DIR}"
	cp -r ${ARTIFACTS_DIR}/* "${DEPLOYMENT_DIR}"
	systemctl reload nginx