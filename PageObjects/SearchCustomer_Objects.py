Email = "XPATH://input[@id='SearchEmail']"
Firs_Name = "ID:SearchFirstName"
Last_Name = "ID:SearchLastName"
Search = "XPATH://*[@id='search-customers']/i"



def search_customer_by_email(self, email1):
    A = "False"
    for i in range(1, 9):
        eml = self.driver.find_element(XPATH, f"//*[@id='customers-grid']/tbody/tr[{i}]/td[2]").text
        if email1 == eml:
            A = "True"
            break
    return A

def search_customer_by_name(self, name1):
    B = "False"
    for j in range(1, 9):
        nam = self.driver.find_element(XPATH, f"//table[@id='customers-grid']/tbody/tr['{j}']/td[3]").text
        if name1 == nam:
            B = "True"
            break
    return B