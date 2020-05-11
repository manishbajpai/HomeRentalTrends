import statistics
import sys
from html.parser import HTMLParser

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

#f = open("temp.html", "r")
f = open(sys.argv[1], "r")

page = f.read()
parser = MyHTMLParser()
parser.feed(page)
priceList = parser.priceList
print("{0:.0f}, {1} {2:.0f}".format(statistics.median(priceList), len(priceList), statistics.stdev(priceList)))
#for x in priceList:
#    print(x)
