#!/bin/bash
service apache2 start
tail -F /var/log/apache2/access.log