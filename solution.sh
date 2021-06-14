
# We get the domains from the list of urls using the cut command and store it 

cat urls.txt | cut -d '/' -f 3 | cut -d':' -f 1 > domains.txt 

# Then we sort the blacklist and the domains files

cat blacklist.txt | sort > blist.txt

cat domains.txt | sort > domain.txt

# We take the common from the two sorted files

comm -12 blist.txt domain.txt 

