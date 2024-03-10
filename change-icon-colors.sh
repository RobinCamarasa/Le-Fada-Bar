#!/bin/bash

find ./public/icons/ -name '*.svg' | while read file
do
	sed -i "s/fill:#.\{6\}/fill:#${1}/g" "${file}"
done
