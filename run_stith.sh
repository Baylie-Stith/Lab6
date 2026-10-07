#!/bin/bash

# Send all output to a file instead of the terminal
exec > output.txt

# ===========================================================
# === Part 1: Basic Regular Expression of String Matching ===
# ===========================================================

input="The five boxing wizards jump quickly"

echo "Question 1:"
echo "$input" | grep -oP 'bo.*ng'

echo "Question 2:"
echo "$input" | grep -oP '\b[A-Za-z]{7,}\b'

echo "Question 3:"
echo "$input" | grep -oP '\b\w+\b' | wc -l

# =============================================================
# === Part 2: Advanced Regular Expressions for Email Inputs ===
# =============================================================

echo "Question 4:"
grep -E '^EMAIL ' Emails.txt

echo "Question 5:"
grep -E '^(COUNT|NEXT|READ)$' Emails.txt

echo "Question 6:"
grep -E '^EMAIL Boss,' Emails.txt

echo "Question 7:"
grep -E '^EMAIL .*,[0-9]{2}-[0-9]{2}-2025$' Emails.txt

echo "Question 8:"
grep -E '^EMAIL .*,12-[0-9]{2}-2024$' Emails.txt

echo "Question 9:"
grep -E '^EMAIL [^,]+,Important,' Emails.txt

echo "Question 10:"
grep -E '^EMAIL Boss,Re:' Emails.txt

echo "Question 11:"
grep -E '^EMAIL [A-Za-z]*Person,' Emails.txt

# ========================================================
# === Part 3: Advanced Regular Expression Combinations ===
# ========================================================

echo "Question 12:"
grep -E '^EMAIL ' Emails.txt | wc -l

echo "Question 13:"
grep -E '^(COUNT|NEXT|READ)$' Emails.txt | tr 'A-Z' 'a-z'

echo "Question 14:"
grep -E '^EMAIL [A-Za-z]*Person,' Emails.txt | sed -E 's/^EMAIL (Important|Other)Person,/EMAIL Others,/'

echo "Question 15:"
grep -E '^EMAIL ' Emails.txt | awk -F',' '{print $2}'