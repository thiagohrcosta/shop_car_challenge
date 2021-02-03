# CHALLENGE
## How to run this program?
To run this program you will need to open the terminal and type in the folder where the file was extract the following comand:

    ruby shop_cart.rb

## How to add new user list?
To insert new e-mail you need to go to the array `email_list_fake` inside `shop_cart.rb` and insert your custom e-mails.

    email_list_fake = [
      "email1gmail.com",
      "josedasilva@hotmail.com",
      "joaodasilva@gmail.com",
      "123456",
      "mariamaria@gmail.com"
    ]

## How can I add some product?
Also inside the `shop_cart.rb` you can call the method `shop_cart` and insert your custom item. The `shop_cart` need to receive three arguments: "Product_name", "Amount_of_product", "Price_by_unit"

    shop_cart("TV", 7, 2000)

## Call everything in one line and display on terminal

Calling the method `print_result` will let you do more easily tests. To show the result of your queries you can use the following command insert inside the `shop_cart.rb`

    puts print_result(email_list_fake, shop_cart("TV", 7, 2000))

## Technologies or features used on this challenge
- [Ruby](https://www.ruby-lang.org/pt/)
- [Rubolar](https://rubular.com/)
- [Ruby-docs](https://ruby-doc.org/)
