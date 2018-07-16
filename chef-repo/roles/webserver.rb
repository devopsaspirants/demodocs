name "webserver"
description "Web Server"
run_list "recipe[apache]","recipe[sample1]"
