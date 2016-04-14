s3cmd-signed-url
================

Create temporary signed urls for private S3 buckets using the s3cmd.

#### Dependencies

The `s3cmd-signed-url` depends on [s3cmd](http://s3tools.org/s3cmd).

#### Usage

    s3cmd-signed-url -b bucket -o object_uri [-a access_key] [-s seconds]

#### Options

    -b bucket_name: bucket name (example: my-bucket)
    -o object_uri: URI part of object in S3 bucket (example: somefolder/somefile.ext)
    -m http_method: HTTP method to sign - e.g. PUT (default GET)
    -a access_key: S3 Access Key (default ${S3_ACCESS_KEY})
    -s seconds: how long the signed url will be valid (default 3600)
    -p: use path style (e.g. https://example.com/bucket) for buckets instead of the default hosted style (e.g. https://bucket.example.com)
    -h: see this usage information
