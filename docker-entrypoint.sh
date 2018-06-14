#!/usr/bin/env bash

if [ -z "$*" ]; then
  bash
else
  bash -c "$@"
fi
