
# la salida  va a ser  el identificadod e la  tarjeta de RED
output "ec2_network_interface" {
    value = aws_network_interface.iface1.id
}
