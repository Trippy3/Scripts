#!/bin/bash
free | grep "^Mem:" | awk '{printf("%3d%\n", (($7 / $2) * 100) + 0.5)}'
