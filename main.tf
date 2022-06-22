resource "local_file" "myfile" {
    filename = var.filename
    content = "content of file is ${random_pet.mypet.id}"
}
resource "random_pet" "mypet" {
    length = "2"
    separator = "."
    prefix = "mr"
}

output "new" {
    value = local_file.myfile
    sensitive = true
}