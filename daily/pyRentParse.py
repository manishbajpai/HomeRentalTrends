import statistics
import sys
from html.parser import HTMLParser
import datetime

class MyHTMLParser(HTMLParser):
    def __init__(self):
        super().__init__();
        self.linkFound = 0
        self.priceFound = 0
        self.priceList = []
        self.dup = 0;

    def handle_starttag(self, tag, attrs):
        if tag == 'li':
            for y in attrs:
                if (y[1].find("duplicate-row") >= 0):
                    self.dup = 1;
        if self.dup == 1:
            return;

        if tag == "a":
            self.linkFound = 1
        x = "result-price" in attrs

        for y in attrs:
            if ((y[1] == 'result-price') & (self.linkFound== 1)):
                self.priceFound = 1;

    def handle_endtag(self, tag):
        if tag == "a":
            self.linkFound = 0
        if tag == 'li':
            if self.dup == 1:
                self.dup = 0;

    def handle_data(self, data):
        if (self.priceFound):
            #print(data, int(data[1:]))
            self.priceFound = 0
            self.priceList.append(int(data[1:]))

def main(name):
    f = open(name, "r")
    page = f.read()
    parser = MyHTMLParser()
    parser.feed(page)
    ret = parser.priceList.copy();
    del parser
    return ret

city = sys.argv[3]
state = sys.argv[4]
priceList1 = main(sys.argv[1])

priceList2 = main(sys.argv[2])

x = datetime.datetime.now()
today = x.strftime("%Y-%m-%d")

str = "{}, {}, {}, {:.0f}, {}, {:.0f}, ".format(city, state, today, statistics.median(priceList1), len(priceList1),
        statistics.stdev(priceList1))
str = str + "{:.0f}, {}, {:.0f}\n".format(statistics.median(priceList2), len(priceList2), statistics.stdev(priceList2))

if (len(sys.argv) <=5):
    f = sys.stdout
else:
    f = open(sys.argv[5], "a")
f.write(str)
str = "\"{}\", \"{}\", \"{}\", {:.0f}, {:.0f}".format(city, state, today, statistics.median(priceList1),
        statistics.median(priceList2))
str = "rentdata.push(["+str+"])\n"

if (len(sys.argv) <=6):
    f = sys.stdout
else:
    f = open(sys.argv[6], "a")
f.write(str);
