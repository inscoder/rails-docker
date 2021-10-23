# README.md

### Build Docker Image
1. Update Rails vesrion in Gemfile
2. Run this command to build the dockger image
`$ docker build -t rails:6.1.4 .`

### Run Rails command
`$ docker run rails:6.1.4 xxxxxxxxx`

For example, create an new app called myapp
`$ docker run rails:6.1.4 new myapp --force --database=postgresql`
