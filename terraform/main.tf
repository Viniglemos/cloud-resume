provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "resume_bucket" {
  bucket = "vinicius-cloud-resume-site-2026"

  tags = {
    Name = "Cloud Resume"
    Environment = "Portifolio"
  }
  }

  resource "aws_s3_bucket_website_configuration" "resume_website" {
    bucket = aws_s3_bucket.resume_bucket.id

    index_document {
      suffix = "index.html"
    }
  }
