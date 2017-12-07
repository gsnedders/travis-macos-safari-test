from selenium import webdriver

wd = webdriver.Safari()

wd.get("http://example.com")
print(wd.title)
