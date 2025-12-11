#!/bin/bash

EXPECTED="Hello, Test!"

OUTPUT=$(node -e "console.log(require('./src/app.js')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "Test Successfully!"
    exit 0
else
    echo "Test Failed!"
    exit 1
fi
