if [[ -v FABRICA_FIRST_RUN_OPTIONAL_APPS ]]; then
	apps=$FABRICA_FIRST_RUN_OPTIONAL_APPS

	if [[ -n "$apps" ]]; then
		for app in $apps; do
			source "$FABRICA_PATH/install/desktop/optional/app-${app,,}.sh"
		done
	fi
fi
