require "havenondemand"

client = HODClient.new('APIKEY')
text = ["I love dogs.", "I hate cats.", "I love turles."]
new_text = ''

text.each {|asdf| new_text << asdf}
data = {text: new_text}

r = client.post('analyzesentiment', data)

puts r.json()["aggregate"]
