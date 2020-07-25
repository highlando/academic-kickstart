# academic import --overwrite --bibtex ~/work/misc/bibfiles/mybibfiles/mypublist/mp.bib
academic import --bibtex ~/texmf/bibtex/bib/mybibfiles/mypublist/mp.bib
find content/publication/ -type f -exec sed -i '/^publishDate/d' {} \;
find content/publication/ -type f -exec sed -i '/^\sfile\s/d' {} \;
