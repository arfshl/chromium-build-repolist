#!/bin/bash
# This script is licensed under GPLv3

ruby scripts/fetch_github.rb
ruby scripts/fetch_google.rb
ruby scripts/fetch_thorium.rb
ruby scripts/generate_readme.rb