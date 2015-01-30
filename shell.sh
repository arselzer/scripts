#!/bin/bash

## Remote shell that shows the commands on screen while they are typed.

nc -l 8181 | tee /dev/tty | bash
