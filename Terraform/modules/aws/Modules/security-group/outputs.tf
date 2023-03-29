#---/Modules/security-group---

output "ec2_security_group" {
  value = aws_security_group.ec2_security_group.id
}

output "database-security-group" {
  value = aws_security_group.database-security-group.id
}
