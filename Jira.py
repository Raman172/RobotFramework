from builtins import print
from bs4 import BeautifulSoup

import Common
import requests


class Jira:
    ROBOT_LISTENER_API_VERSION = 3
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self):
        self.ROBOT_LIBRARY_LISTENER = self

    def output_file(self, path):
        print(path)

    def report_file(self, path):
        print(path)
        print("Print Report")

    def log_file(self, path):
        print(path)




