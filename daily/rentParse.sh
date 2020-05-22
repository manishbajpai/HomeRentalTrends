##The idea is to keep the data in csv format so that we can plot it well
csvname="analysis4.csv"
jsname="../www/cityrent_v2.js"
rawpath="../../raw"

getsouthbaycity() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sby/apa?bundleDuplicates=1&nh=$4&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sby/apa?bundleDuplicates=1&nh=$4&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getsanfrancisco() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sfc/apa?sort=date&bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sfc/apa?sort=date&bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getla() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://losangeles.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://losangeles.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getsandiego() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://sandiego.craigslist.org/search/apa?min_bedrooms=2&max_bedrooms=2&bundleDuplicates=1" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://sandiego.craigslist.org/search/apa?min_bedrooms=1&max_bedrooms=1&bundleDuplicates=1" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getboston() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://boston.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://boston.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getseattle() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://seattle.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://seattle.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2  "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getnewyork() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://newyork.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://newyork.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getphiladelphia() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://philadelphia.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://philadelphia.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getwashingtondc() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://washingtondc.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://washingtondc.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getmiami() {
    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://miami.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://miami.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 "$1" "$2" $csvname $jsname
    sleep 1 #We don't want to get blacklisted
}
getsouthbaycity "Santa Clara" "CA" "SantaClaraCA" 41
getsouthbaycity "Cupertino" "CA" "CupertinoCA" 32
getsanfrancisco "San Francisco" "CA" "SanFranciscoCA"
getla "Los Angeles" "CA" "LosAngelesCA"
getsandiego "San Diego" "CA" "SanDiegoCA"
getseattle "Seattle" "WA" "SeattleWA"
getboston "Boston" "MA" "BostonMA"
getnewyork "New York" "NY" "NewYorkNY"
getphiladelphia "Philadelphia" "PA" "PhiladelphiaPA"
getwashingtondc "Washington" "DC" "WashingtonDC"
getmiami "Miami" "FL" "MiamiFL"
