output public_ip {
  value       = aws_instance.practiceinstance.public_ip
}
output public_dns {
  value       = aws_instance.practiceinstance.public_dns
}
output sg_id {
  value       = aws_security_group.Alltraffic.id
}

