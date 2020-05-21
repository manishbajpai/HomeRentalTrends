##The idea is to keep the data in csv format so that we can plot it well
csvname="analysis4.csv"
rawpath="../../raw"

getsouthbaycity() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sby/apa?bundleDuplicates=1&nh=$4&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sby/apa?bundleDuplicates=1&nh=$4&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getsanfrancisco() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sfc/apa?sort=date&bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://sfbay.craigslist.org/search/sfc/apa?sort=date&bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getla() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://losangeles.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://losangeles.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getsandiego() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://sandiego.craigslist.org/search/apa?min_bedrooms=2&max_bedrooms=2&bundleDuplicates=1" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://sandiego.craigslist.org/search/apa?min_bedrooms=1&max_bedrooms=1&bundleDuplicates=1" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getboston() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://boston.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://boston.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getseattle() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://seattle.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://seattle.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getnewyork() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://newyork.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://newyork.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getphiladelphia() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://philadelphia.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://philadelphia.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getwashingtondc() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://washingtondc.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://washingtondc.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
    sleep 1 #We don't want to get blacklisted
}
getmiami() {
    echo "Getting $1, $2 2bd"
    echo -n "$1, $2, $(date '+%Y-%m-%d'), " >> $csvname

    fname2="$rawpath/$3_2bd_$(date '+%Y%m%d').html"
    curl "https://miami.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=2&max_bedrooms=2&availabilityMode=0&sale_date=all+dates" > "$fname2"
    sleep 1 #We don't want to get blacklisted

    echo "Getting $1, $2 1bd"

    fname1="$rawpath/$3_1bd_$(date '+%Y%m%d').html"
    curl "https://miami.craigslist.org/search/apa?bundleDuplicates=1&min_bedrooms=1&max_bedrooms=1&availabilityMode=0&sale_date=all+dates" > "$fname1"
    python3 pyRentParse.py $fname1 $fname2 >>$csvname
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
