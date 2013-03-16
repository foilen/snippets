# 1- Create the private key
openssl genrsa -des3 -out crypted_private_key.pem 1024

# 2- Create the certificate request
# Note: The common name is the site name (ex: cookbook.pgon.ca)
openssl req -new -key crypted_private_key.pem -out request.csr

# 3- Decrypt the private key. Useful for web server to be able to start without needing to type a password
# Note: You must secure it so that nobody gets it
openssl rsa -in crypted_private_key.pem -out uncrypted_private_key.pem

# 4- Create a certificate that will expire in 730 days
# Note: The uncrypted key is used here, but you can use the crypted one.
openssl x509 -req -days 730 -in request.csr -signkey uncrypted_private_key.pem -out certificate.crt

# To use with Apache, you only need these files "uncrypted_private_key.pem" and "certificate.crt"
