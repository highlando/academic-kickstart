# academic import --overwrite --bibtex ~/work/misc/bibfiles/mybibfiles/mypublist/mp.bib
academic import --bibtex ~/work/misc/bibfiles/mybibfiles/mypublist/mp.bib
find content/publication/ -type f -exec sed -i '/^publishDate/d' {} \;
