# Run incron in a container

# TO BUILD:
 docker build -t miguelwill/incron-php:7.4 -t miguelwill/incron-php::latest .

# TO RUN:
 docker run -d \
   -v "/path/to/incron.d/dir:/etc/incron.d"
   -v "/path/to/dir/containing/any/scripts:/scripts
   -v "/path/to/any/directories/you/want/to/monitor:/path/configured/in/incrontab"
   miguelwill/incron-php

# EXAMPLE:
 docker run -dv "$(pwd)/incron.d:/etc/incron.d" -v "$(pwd)/scripts:/scripts" \
   -v "/tmp/watch_folder:/watches/tmp_watch" -v "/tmp/watch_output:/tmp/watch_output" \
   miguelwill/incron-php:latest

