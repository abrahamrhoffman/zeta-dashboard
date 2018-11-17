#!/bin/bash

function startUI () {
  cd /zeta-ui
  nohup yarn start &> /zeta-ui.log&
}

function main () {
  startUI
  sleep infinity
}

main
