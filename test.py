from selenium import webdriver

wd = webdriver.SafariDriver()

wd.get("http://example.com")
print(wd.title)
