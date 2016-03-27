# terraform-playground

```shell
brew cask install terraform
git clone git@github.com:doi-t/terraform-playground.git
echo 'tf/aws_access_key = "AWS_ACCESS_KEY"'
echo 'tf/aws_secret_key = "AWS_SECRET_KEY"'
cd tf/
terraform plan --refresh=false
terraform apply
terraform show
```

## [debug](https://www.terraform.io/docs/internals/debugging.html)

```shell
export TF_LOG='DEBUG' # Valid levels are: [TRACE DEBUG INFO WARN ERROR]
export TF_LOG_PATH='./terraform.log'
```
