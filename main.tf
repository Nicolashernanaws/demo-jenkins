resource "random_string" "libros_random" {
  count   = 3
  length  = 4
  special = false
  upper   = false
  numeric = false
}

resource "local_file" "libros" {
  count    = 3
  filename = "${var.file}-${random_string.libros_random[count.index].result}.txt"
  content  = "DevOps onfire"
}

