class Contacts {
  String name;
  String telephone;
  String email;

  Contacts(this.name , this.telephone, this.email );

  @override
  String toString() {
    return '\n Nome: $name\n Telefone: $telephone\n Email: $email\n \n ';
  }
}