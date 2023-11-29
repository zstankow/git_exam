#!
grep -o “function” README.md | wc -w > output/function-keyword-count.txt
grep “^#” README.md | tr -d “#\s*” >  output/unique-headers.txt
grep -o “[0-9]*” README.md | sort -n > output/sorted-numbers.txt
grep -A9 "# FEATURES" README.md | grep -v "# FEATURES" | tr -d "\n" > output/features-summary.txt
grep “Calculator” README.md | sort > output/calculator-lines.txt
cat output/*.txt
