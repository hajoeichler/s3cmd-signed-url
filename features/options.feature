Feature: Checking command line options

#  Scenario: No access key provided
#    When I run `s3cmd-signed-url`
#    Then the exit status should be 1
#    And the output should contain "Please provide your S3 access key."

  Scenario: No bucket given
    When I run `s3cmd-signed-url -a 123`
    Then the exit status should be 2
    And the output should contain "Please provide your S3 bucket name."

  Scenario: No objecty given
    When I run `s3cmd-signed-url -a foobar -b mybucket`
    Then the exit status should be 3
    And the output should contain "Please provide the object you want a signed URL for."

  Scenario: No s3cmd found
    When I run `s3cmd-signed-url -b mybucket -o somefile.ext -a key`
    Then the exit status should be 4
    And the output should contain "s3cmd: command not found"

  Scenario: Get usage text
    When I run `s3cmd-signed-url -h`
    Then the exit status should be 0
    And the output should contain "a script to create temporary signed urls for private objects in a S3 bucket."
