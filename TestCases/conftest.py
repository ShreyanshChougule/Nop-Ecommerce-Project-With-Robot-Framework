from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager
from webdriver_manager.firefox import GeckoDriverManager


def get_driver(browser_name="chrome"):
    if browser_name.lower() == 'chrome':
        driver = ChromeDriverManager().install()
        return driver
    elif browser_name.lower() == 'edge':
        driver = EdgeChromiumDriverManager().install()
        return driver
    elif browser_name.lower() == 'firefox':
        driver = GeckoDriverManager().install()
        return driver
