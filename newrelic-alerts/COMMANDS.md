# Command line arguments to initialize the S3 backend

```bash
terraform init \
-backend-config="bucket=terraform-newrelic-alerts-state" \
-backend-config="encrypt=true" \
-backend-config="key=terraform.tfstate" \
-backend-config="region=us-east-1" \
-backend-config="dynamodb_table=terraform-newrelic-alerts-state-lock"
```
