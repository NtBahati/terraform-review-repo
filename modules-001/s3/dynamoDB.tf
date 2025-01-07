# Create DynamoDB Table
resource "aws_dynamodb_table" "DB_table" {
  name           = "Dynamodb-table2"
  billing_mode   = "PAY_PER_REQUEST" # No need to define read/write capacities
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "DynamoDB-Table02"
    Environment = "Dev"
  }
}
