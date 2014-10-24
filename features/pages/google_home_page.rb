class GoogleHomePage < GenericPage
  LOC = "http://google.com"
  ELEMENTS = {
    search_field: "#gbqfq",
    search_button: "#gbqfb"
  }
  def visit
    @browser.goto LOC
  end
  
  def search_box
    @browser.element(css: ELEMENTS[:search_field]).value
  end
  
  def search_box=(term)
    @browser.element(css: ELEMENTS[:search_field]).send_keys term
  end
  
  def search_button
     @browser.element(css: ELEMENTS[:search_button])
  end
  
  def search_for(term)
    self.search_box = term
    self.search_button.click
  end
end