# Les noms de devises
crypto_names = ["Bitcoin", "Ethereum", "XRP", "Litecoin", "Bitcoin Cash"]
# Les prix des devises
crypto_prices = [6558.07, 468.95, 0.487526, 123.45, 987.65]

# Associer les devises à leur prix dans un hash
crypto_hash = crypto_names.zip(crypto_prices).to_h
#j'ai utilisé la méthode zip
# La ou les cryptos qui ont la plus grosse valeur
max_value = crypto_hash.values.max
max_cryptos = crypto_hash.select { |_crypto, value| value == max_value }.keys

puts "Crypto(s) avec la plus grosse valeur : #{max_cryptos.join(', ')}"

# La ou les cryptos qui ont la plus petite valeur
min_value = crypto_hash.values.min
min_cryptos = crypto_hash.select { |_crypto, value| value == min_value }.keys

puts "Crypto(s) avec la plus petite valeur : #{min_cryptos.join(', ')}"

# Le nombre de crypto contenant le mot "coin"
coin_cryptos_count = crypto_names.count { |name| name.downcase.include?("coin") }

puts "Nombre de cryptos contenant le mot 'coin' : #{coin_cryptos_count}"

# Les devises dont le cours est inférieur à 6000
low_value_cryptos = crypto_hash.select { |_crypto, value| value < 6000 }.keys

puts "Devises dont le cours est inférieur à 6000 : #{low_value_cryptos.join(', ')}"

# La devise la plus chère parmi celles dont le cours est inférieur à 6000
max_low_value_crypto = low_value_cryptos.max_by { |crypto| crypto_hash[crypto] }

puts "Devise la plus chère parmi celles dont le cours est inférieur à 6000 : #{max_low_value_crypto}"
