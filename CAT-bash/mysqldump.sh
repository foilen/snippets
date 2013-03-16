# Copy all the DBs accessibles by the user and compress
# Note that there are no spaces between the -p and the password
mysqldump -u USER -pPASSWORD --all-databases --skip-quick --skip-extended-insert | gzip > FILENAME
mysqldump -u backup -pgKhiehng56 --all-databases --skip-quick --skip-extended-insert | gzip > /tmp/db-`date +%Y-%m-%d-%H-%M-%S`.sql.gz