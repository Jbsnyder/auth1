# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
# 2. decrypt the encrypted string
# 3. check if decrypted value matches secret

secret_password = "tacos"
puts secret_password
#BCrypt example of encryption, Password class comes from Bcrypt
encrypted_password =Bcrypt:Password.create(secret_password)
puts encrypted_password

password_to_test = "tacos"
Password_matches = BCrypt::Password.new(encrypted_password) == password_to_test
puts password