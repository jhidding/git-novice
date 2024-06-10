#!/bin/bash

pushd "$(dirname "$0")" >/dev/null

for md in ../episodes/*.md; do
	pandoc "${md}" -t markdown --lua-filter ./get_challenges.lua
done

popd >/dev/null
