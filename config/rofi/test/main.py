from datetime import date
import calendar

# import time
import re

today = date.today()
year = today.year
month = today.month
thism = calendar.month(year, month)  # current month
date = today.day.__str__().rjust(2)
rday = ("\\b" + date + "\\b").replace("\\b ", "\\s")
# rdayc = "\033[7m" + date + "\033[0m"
rdayc = date
# 7 Swaps foreground and background colors
# print(thism.split())
print(f"{re.sub(rday, rdayc, thism)}")
