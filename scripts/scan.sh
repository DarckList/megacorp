echo "\n==== SCANNING FOR CREDIT CARD NUMBERS ====="
grep -rE --color=always --exclude-dir={.git} --line-number '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . 
echo "\n==== CREDIT CARD SAN COMPLETE ====="
echo "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ====="
grep -rE --color=always --exclude-dir={.git} --line-number '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . 
echo "\n==== SOCIAL SECURITY SCAN COMPLETE ====="

echo '\n==== SCANNING FOR PHONE NUMBERS ===='
grep -rE --color=always --exclude-dir={.git} --line-number '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' .
grep -rE --color=always --exclude-dir={.git} --line-number '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' .
echo "==== PHONE NUMBER SCAN COMPLEE ===="
