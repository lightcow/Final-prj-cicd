
resource "aws_iam_role" "status" {
  name = "lambda_role_status"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Sid    = ""
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }
    ]
  })

}

resource "aws_iam_role_policy_attachment" "status" {
  role       = aws_iam_role.status.name
  policy_arn = aws_iam_policy.status.arn
}

resource "aws_iam_policy" "status" {
    policy = data.aws_iam_policy_document.status.json
}

data "aws_iam_policy_document" "status" {

  statement {
    sid       = "AllowInvokingLambdas"
    effect    = "Allow"
    resources = ["arn:aws:lambda:ap-northeast-2:*:function:*"]
    actions   = ["lambda:InvokeFunction"]
  }  


  statement {
    sid       = ""
    effect    = "Allow"
    resources = ["*"]
    actions   = [
        "dynamodb:BatchGetItem",
        "dynamodb:GetItem",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:UpdateItem"
        ]
  }

  statement {
    sid       = "AmazonAPIGatewayInvokeFullAccess"
    effect    = "Allow"
    resources = ["arn:aws:execute-api:*:*:*"]
    actions   = [
      "execute-api:Invoke",
      "execute-api:ManageConnections"
      ]
  }  

  statement {
    sid       = "AllowCreatingLogGroups"
    effect    = "Allow"
    resources = ["arn:aws:logs:ap-northeast-2:*:*"]
    actions   = ["logs:CreateLogGroup"]
  }
  statement {
    sid       = "AllowWritingLogs"
    effect    = "Allow"
    resources = ["arn:aws:logs:ap-northeast-2:*:log-group:/aws/lambda/*:*"]

    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]
  }
}