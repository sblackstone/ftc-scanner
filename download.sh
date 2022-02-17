curl 'https://www.sec.gov/Archives/edgar/daily-index/xbrl/companyfacts.zip' \
  -H 'authority: www.sec.gov' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://www.sec.gov/edgar/sec-api-documentation' \
  -H 'accept-language: en-US,en;q=0.9,ja;q=0.8' \
  -H 'cookie: _ga=GA1.2.1593357876.1645111656; _gid=GA1.2.195937056.1645111656; ak_bmsc=5FC6BFDB930E3B486D844688498FB2E7~000000000000000000000000000000~YAAQlTkrF3WLkwd/AQAAZsVLCA46e7VopyIDEuP8uzhpuYlaaoc00ODLBmrdT0eJDjMUpZuYnBnmsnMysG0mPzCEqauPnKSqUEGDnePh6r06OH4H3rEpbGVsZHTBwSpnS9NZJ8yKgjJgcthteg/x2/6H2+RFWvLJVGHDVGEARJfJPoW3uHUyquYHLjhqycKB33MAs5gBuhv4NAW39MAW3W2g1d62TFyUtpATMCTMf9x2AMZdl0OkpQgBM1BIdibaq5xDWqUEH0gVCeNHHaaz/7k2Wjk8So3gocOJlOTm6VcZECV7EumqJ1KdUxK6ui7iC58RCcAvmhef/tl8H8T4LER61ijIFLZ1o5+rpPiw4q4rFlOHaAYxeyR1Ncu3QYa9VldD0zxIkJG2RysbU1lOD/j/XYmjLd/k816gkG/kVtLEXWctbFGeAt9yVEh2cvTfKSnZcdNJoBhY23n+Z2lxNj3TWuEo6kq5OBzLieXMdHy92DEJuklM; _4c_=%7B%22_4c_s_%22%3A%22fZFRb4MgFIX%2FSnOfxQAKom9Llyx72B6Wba9NBVpNu2LQ6brG%2F76LmjTrkvHC5eOek8vhAkNlT1AwmQrGOGVSUBXBwZ5bKC7gaxO2HgowiWYlK0siOFckpUKQLVWK0CTLuJRc63IHEXwFL8GVyqSQVKRjBLpZPC6gnbHoxfKYpXFOdi0qum8kJKEU68Y786m7TXduQt9gy1VrDnhhbF9ruxlq01WTAadXWtl6X3UB88nFND4csBrqk3HDrWyhVxmVKeLSu6G1QbquvPuwq1whdRgEPG01lt7urPdTB57augsztlbHe9cvAIObGZnZex2oWb2uX5A%2Fhyf2y2xHp7fH4ID5R%2FBwt3l7vA9XIk8SkWF%2B8fwpGKeEcUkWQa6oyKjkmFx3hELJlIY1ztZT0Ox3N%2F5D9rd7fi4Js9rTP1J1Kx3HHw%3D%3D%22%7D; bm_sv=739E2D92B62AE5F424A4B5067B0DC626~gt8cnKjrJxlk+jV0ekH4azW/4fOVPF9iYXl3XgnKsoOLkt/q0/gCluFg2Or3sweopB+fgIABjF52Veq/38hCSmXOWYSEBekT8x/jUrghDQGEoNPPZSIEBlpQpH8jClFS05bPsW8kRaaJucaE6uWimA==; _gat_GSA_ENOR0=1; _gat_GSA_ENOR1=1; _gat_UA-30394047-1=1' \
  --compressed > companyfacts.zip

  curl https://www.sec.gov/include/ticker.txt > ticker.txt
