# Should print the result on terminal
def print_result(email_list_fake, product)
  client_emails = valid_email(email_list_fake)
  hash_of_client = []

  client_emails_list = valid_email(email_list_fake).count

  selected_product = product[0][-1].to_i / client_emails_list

  client_emails.each_with_index do |email, amount_to_pay|
    client = [email: email, amount_to_pay: selected_product.to_i]
    hash_of_client << client
  end

   return hash_of_client
end

# Should receive some product and create an array
def shop_cart(product, quantity, price)
  array_of_products = []
  total_value_in_stock = quantity.to_i * price.to_i

  create_new_product = [product, quantity, price, total_value_in_stock]

  array_of_products << create_new_product

  return array_of_products
end

# Should validate email using REGEX
def valid_email(email_list_fake)
  array_of_valid_email = []

  email_list_fake.select do |element|
    unless element.match(/\S\w+@\w+.[a-z]{2,3}/)
      array_of_valid_email << element
    end
  end

  return email_list_fake
end

# Create a fake e-mail list to be used in Def valid_email
email_list_fake = [
  "dev1@gmail.com",
  "josedasilva@hotmail.com",
  "joaodasilva@gmail.com",
  "anamari@gmail.com",
  "mariamaria@gmail.com"
]

# Insert some email_list and product on print_result
puts print_result(email_list_fake, shop_cart("TV", 7, 2000))
