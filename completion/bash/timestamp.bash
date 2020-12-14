#!/usr/bin/env bash

_timestamp_completion() {
	COMPREPLY=($(compgen -W "create verify examine remove push fetch help" "${COMP_WORDS[1]}"))
}

complete -F _timestamp_completion timestamp
