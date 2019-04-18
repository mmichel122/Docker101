resource "docker_image" "id" {
  name = "ghost:alpine"
}

resource "docker_container" "ghost" {
  name  = "myImage"
  image = "${docker_image.id.latest}"
  ports {
    internal = "2368"
    external = "8080"
  }
}
