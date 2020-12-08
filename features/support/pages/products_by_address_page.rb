class ProductsByAddressPage
  include Capybara::DSL

  def access
    visit("https://www.ze.delivery/")
  end

  def age_button_yes
    find("#age-gate-button-yes")
  end

  def input_search_address_fake
    find("#fake-address-search-input")
  end

  def input_search_address
    find("#address-search-input-address")
  end

  def suggest_search_address
    page.has_css?(".css-10klw3m")
    find(".css-10klw3m")
  end

  def input_number_address
    find("#address-details-input-number")
  end

  def input_number_address
    find("#address-details-input-number")
  end

  def check_complement_address
    find("#address-details-checkbox-without-complement")
  end

  def button_view_products
    find("#address-details-button-continue")
  end

  def current_address
    page.has_content?($address)
    find(".css-152ezmh-address")
  end

  def accept_cookie
    find("button[title='Aceitar cookies']")
  end

  def view_products
    find(".css-1edv5hb-shelvesContainer")
  end
end
