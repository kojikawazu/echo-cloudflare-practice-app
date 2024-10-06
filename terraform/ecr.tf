# ---------------------------------------------
# ECR Repository
# ---------------------------------------------
resource "aws_ecr_repository" "echo_cloudflare_prac_repo" {
  name                 = "${var.project}-${var.environment}-repo"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name    = "${var.project}-${var.environment}-repo"
    Project = var.project
    Env     = var.environment
  }
}

output "repository_url" {
  value = aws_ecr_repository.echo_cloudflare_prac_repo.repository_url
}
