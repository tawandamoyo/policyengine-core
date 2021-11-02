## Install openfisca-core for deployment and publishing.
build:
	@## This allows us to be sure tests are run against the packaged version
	@## of openfisca-core, the same we put in the hands of users and reusers.
	@$(call print_help,$@:)
	@pip install --upgrade pip build twine
	@python -m build
	@find dist -name "*.whl" -exec pip install --force-reinstall {}[dev] \;
	@$(call print_pass,$@:)
