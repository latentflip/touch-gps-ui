#!/bin/sh
npm run build

mkdir -p /artifacts
cp -r /src/build /artifacts
