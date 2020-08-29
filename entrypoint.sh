#!/bin/sh

if [-z "${FIREBASE_TOKEN}" ]; then
  echo "FIREBASE_TOKEN is missing"
  echo "Add the token to secrets in your repo"
  exit 1
fi

if [-z "${FIREBASE_PROJECT}" ]; then
  echo "FIREBASE_PROJECT is missing"
  echo "Add the token to secrets in your repo"
  exit 1
fi

firebase deploy \
  -m "${GITHUB_SHA}" \
  --project ${FIREBASE_PROJECT}
