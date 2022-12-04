#!/bin/bash
sensors | grep "CPU\ Tem" | awk '{printf("%3d deg\n", $3)}'
