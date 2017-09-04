# REST-API-Testing

Simple automated test suite for rest-api testing with endpoint configuration in *fakeAPI* folder.

## Prerequisites

- Install Ruby 2.2.0 or better;
- Instal Node:

```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install jq nodejs curl -qy
```
- Install json-server:

```
npm install -g json-server
```

## Execution

- Initiate json-server:

```
json-server --watch path-to-endpoints-file
```

Check if everything is fine connecting to 'http://localhost:3000' and 'http://localhost:3000/clientes'.

- From *cucumber* folder run:

```
cucumber --tags @tag_to_run,@another_tag_to_run
```
To run tests with certain tags in .feature files.

```
cucumber
```
To run all the tests.
