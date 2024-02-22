#!/bin/bash
wget -O page.html https://www.memedroid.com/memes/random
image_url=$(grep -oP 'href="([^"]+)" as="image"' page.html | cut -d'"' -f2)
wget -O "./Images/image_$(date +\%d\%m\%Y).jpg" "$image_url" 
rm page.html
