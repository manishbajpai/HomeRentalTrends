import csv
import sys

with open('analysis3.csv') as csvfile:
   spamreader = csv.reader(csvfile, delimiter=',')
   for row in spamreader:
       city = row[0]
       state = row[1]
       date = row[2]
       numbed = row[3]
       avgrent = row[4];
       print("rentdata.push([\'" + city + "\', \'"+date + "\'," + numbed + "," + avgrent + "])")
