Feature: Checking command line options

  Scenario: No access key provided
    When I run `s3cmd-signed-url`
    Then the exit status should be 1
    And the output should contain "Please provide your S3 access key."

  Scenario: No bucket given
    When I run `s3cmd-signed-url -a 123`
    Then the exit status should be 2
    And the output should contain "Please provide your S3 bucket name."

  Scenario: No objecty given
    When I run `s3cmd-signed-url -a foobar -b mybucket`
    Then the exit status should be 3
    And the output should contain "Please provide the object you want a signed URL for."

  Scenario: No objecty given
    When I run `s3cmd-signed-url -b mybucket -o somefile.ext -a key`
    Then the exit status should be 4
    And the output should contain "s3cmd: command not found"
