cat streets-modified.txt | sort > streets-sorted.txt
cat streets-modified.txt | cut -d '-' -f1 | grep -v '"' | sort | uniq -c  | sort -n | xclip -selection clipboard
rm sorted/*.txt
cat streets-sorted.txt | grep "^ca-" > sorted/campus.txt
cat streets-sorted.txt | grep "^ma-" > sorted/marina.txt
cat streets-sorted.txt | grep "^d-" > sorted/downtown.txt
cat streets-sorted.txt | grep "^e-" > sorted/elmwood.txt
cat streets-sorted.txt | grep "^p-" > sorted/panoramic.txt
cat streets-sorted.txt | grep "^sw-" > sorted/southwest.txt
cat streets-sorted.txt | grep "^so-" > sorted/south.txt
cat streets-sorted.txt | grep "^w-" > sorted/west.txt
cat streets-sorted.txt | grep "^nw-" > sorted/northwest.txt
cat streets-sorted.txt | grep "^mm-" > sorted/montereymarket.txt
cat streets-sorted.txt | grep "^u-" > sorted/unknown.txt
cat streets-sorted.txt | grep "^cr-" > sorted/cragmont.txt
cat streets-sorted.txt | grep "^no-" > sorted/north.txt
cat streets-sorted.txt | grep "^t-" > sorted/tilden.txt
cat streets-sorted.txt | grep "^ch-" > sorted/claremonthills.txt
