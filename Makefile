all:
	openapi-generator-cli generate \
		-i openapi.yaml \
		-g python \
		--package-name nhentai_api \
		--git-user-id Shikanime \
		--git-repo-id nhentai-api \
		--git-host github.com