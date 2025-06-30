provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

resource "aws_db_instance" "student_labs" {
  identifier = "kodekloud-labs"
  engine     = "postgres"
  instance_class = "db.t3.micro"
  allocated_storage = 20
  
  db_name  = "student_labs"
  username = "admin"
  password = "SuperSecret123!"
  
  publicly_accessible = true
  skip_final_snapshot = true
}

resource "aws_s3_bucket" "course_materials" {
  bucket = "kodekloud-public-materials"
  acl    = "public-read"
}
