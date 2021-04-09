echo "$AWS_KEY:$AWS_SECRET_KEY" > tmp/passwd && chmod 600 tmp/passwd
s3fs "$S3_BUCKET" "$MNT_POINT" -o tmp/passwd_file=tmp/passwd  && tail -f /dev/null
