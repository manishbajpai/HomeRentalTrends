import csv
import sys

# with open('analysis3.csv') as csvfile:
#    spamreader = csv.reader(csvfile, delimiter=',')
#    for line in spamreader:
#        city = line[0]
#        state = line[1]
#        date = line[2]
#        numbed = line[3]
#        avgrent = line[4];
#        print("rentdata.push([\'" + city + "\', \'"+date + "\'," + numbed + "," + avgrent + "])")

print("var rentdata = [];")

with open('analysis4.csv') as csvfile:
   spamreader = csv.reader(csvfile, delimiter=',')
   for line in spamreader:
       city = line[0]
       state = line[1]
       date = line[2]
       onebed = line[3]
       twobed = line[6];
       #print("rentdata.push([\'" + city + "\', \'"+date + "\'," + onebed + "," + twobed + "])")
       cp = ","
       qt = "\'"
       print("rentdata.push(["+qt + city + qt + cp + qt + state +qt + cp + qt +date+qt+cp+onebed+cp+twobed+"])")
