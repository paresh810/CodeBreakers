import time
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary.base import keyword
from SeleniumLibrary.keywords import ElementKeywords, WaitingKeywords, FormElementKeywords
from SeleniumLibrary.keywords import JavaScriptKeywords
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys


class HelperAsana(ElementKeywords, WaitingKeywords, FormElementKeywords):
    
    def __init__(self, ctx):
        ElementKeywords.__init__(self, ctx)
        WaitingKeywords.__init__(self, ctx)
        FormElementKeywords.__init__(self, ctx)
        JavaScriptKeywords.__init__(self, ctx)
        
        
    @keyword
    def click_the_element(self, locator, timeout=20):
        endtime = time.time() + timeout
        while time.time() < endtime:
            try:
                element = self.get_webelement(locator)
                element.click()
                return
            except Exception:
                print('element was not found...retrying...')
                time.sleep(0.5)
    
    