echo "Juliet CWE78"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE78_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE78.txt

echo "Juliet CWE134"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE134_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE134.txt

echo "Juliet CWE190"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE190_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE190.txt

echo "Juliet CWE401"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE401_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE401.txt

echo "Juliet CWE415"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE415_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE415.txt

echo "Juliet CWE690"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE690_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE690.txt

echo "Juliet CWE762"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE762_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE762.txt

echo "Juliet CWE789"
python3.7 -u change_dataset.py --raw_path data/raw/juliet/ --raw_file CWE789_dataset.json
python3.7 -u main.py -ce -p 2>&1 | tee process_juliet_CWE789.txt
