from bs4 import BeautifulSoup
import requests
import time


def getHtml(url):
    try:
        html = requests.get(url, timeout=200).text
        return html
    except:
        print("Fail")
        return None


def writeFile(name, text):
    f = open(name+".html", 'w', encoding="utf-8")
    f.write(text)
    f.close()


# url = "https://www.freelancer.cn/jobs/40/?status=all&languages=zh"
url = "https://www.freelancer.cn/projects/mobile-phone/ionic-app-using-angular-leaflet/details"
detailPage = getHtml(url)
writeFile("detailpage", detailPage)


f = open("E:/freelancer/Freelancer/crawler/1.html", 'r', encoding='utf-8')
html = f.read()
f.close()

soup = BeautifulSoup(html, "html.parser")

projCards = soup.find_all(class_="JobSearchCard-item")

for card in projCards:
    head = card.find(class_="JobSearchCard-primary-heading-link")
    print(head.get('href'))

# print(projCards[0])
