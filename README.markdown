[![Code Climate](https://codeclimate.com/github/jrmypttrsn/molten_light_version_two/badges/gpa.svg)](https://codeclimate.com/github/jrmypttrsn/molten_light_version_two)

[![Test Coverage](https://codeclimate.com/github/jrmypttrsn/molten_light_version_two/badges/coverage.svg)](https://codeclimate.com/github/jrmypttrsn/molten_light_version_two/coverage)

#Molten Light v2

Molten Light is an application that helps apparitions manage the people and places they haunt and allows them to connect with each other via microblogging.

##Motivation

Ghosts are historically out of date beings. For far too long ghosts have had to keep track of their hauntings inside of their non-corporeal brains. Molten Light allows them to keep a log of the persons and locations that they wish to permeate.

[Molten Light](https://murmuring-reaches-90474.herokuapp.com/)

## .env file Usage

Add your application configuration to your `.env` file in the root of your project:

```shell
S3_BUCKET=YOURS3BUCKET
SECRET_KEY=YOURSECRETKEYGOESHERE
```

If you need multiline variables, for example private keys, you can double quote strings and use the `\n` character for newlines:

```shell
PRIVATE_KEY="-----BEGIN RSA PRIVATE KEY-----\nHkVN9…\n-----END DSA PRIVATE KEY-----\n"
```

You need to add the output of a command in one of your variables? Simply add it with `$(your_command)`:
```shell
DATABASE_URL="postgres://$(whoami)@localhost/my_database"
```

You may also add `export` in front of each line so you can `source` the file in bash:

```shell
export S3_BUCKET=YOURS3BUCKET
export SECRET_KEY=YOURSECRETKEYGOESHERE
```

Whenever your application loads, these variables will be available in `ENV`:

```ruby
config.fog_directory  = ENV['S3_BUCKET']
```

Comments may be added to your file as such:

```shell
# This is a comment
SECRET_KEY=YOURSECRETKEYGOESHERE # comment
SECRET_HASH="something-with-a-#-hash"