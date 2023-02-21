#!/bin/bash

volume=0
cube_volume () {
	volume=$(( $1*$2*$3 ))
	echo $volume
}

cube_volume 2 3 4
