import robot
from Selenium2Library import Selenium2Library
from selenium.webdriver.common.action_chains import ActionChains
from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger
import selenium.webdriver as webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.keys import Keys
from SeleniumLibrary.base import keyword
from SeleniumLibrary.keywords import BrowserManagementKeywords, WindowKeywords, ScreenshotKeywords, FrameKeywords


class browserKeywords(Selenium2Library):

    @keyword
    def open_browser(self, url):

        headless = BuiltIn().get_variable_value("${HEADLESS}")
        options = webdriver.ChromeOptions()
        des_caps = webdriver.DesiredCapabilities().CHROME

        options.add_argument('--no-sandbox')
        options.add_argument('--ignore-certificate-errors')
        options.add_argument('--lang=en')
        
        if headless == "True":
            logger.info('Running in headless mode')
            options.add_argument('--headless')

        des_caps['loggingPrefs'] = {'browser': 'ALL'}

        retries = 5

        while retries > 0:
            try:
                self.create_webdriver('Chrome', 'some_alias', chrome_options=options, desired_capabilities=des_caps)
                break
            except Exception as e:
                retries -= 1
                logger.info(e)
                logger.info('Connection reset, opening browser again')

        self.go_to(url)

        try:
            #DO NOT CHANGE SCREEN RESOLUTION TO 1920X1080! IT WILL MAKE TESTS NOT WORK!!!
            self.set_window_size(1280, 1024)
            logger.info(self.get_window_size())
        except Exception as e:
            print('Tried to maximise window...')
            print(str(e))
