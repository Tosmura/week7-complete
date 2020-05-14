require "httparty"

url = "https://api.openweathermap.org/data/2.5/onecall?lat=42.0574063&lon=-87.6722787&units=imperial&appid=94728f1a88c007a57589dd632c548780"
forecast = HTTParty.get(url).parsed_response.to_hash

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
#pp forecast
#puts "It is currently #{forecast["current"]["temp"]} degrees."

# Example output:
#
# It is currently 54.86 degrees and Clear
# Extended forecast:
# A high of 54.86 and Clear
# A high of 43.92 and Clouds
# A high of 52.14 and Clear
# A high of 49.53 and Rain
# A high of 45.03 and Clear
# A high of 55.13 and Clouds
# A high of 49.03 and Rain
# A high of 51.69 and Rain
puts "It is currently #{forecast["current"]["temp"]} degrees and #{forecast["current"]["weather"][0]["description"]}"
puts "Extended forecast:"
day_number = 1
for day in forecast["daily"]
   puts "On day #{day_number}, A high of #{day["temp"]["max"]} and #{day["weather"][0]["description"]}"
   day_number = day_number + 1
end