node {
  stage 'Checkout'
  git url: 'https://github.com/manprajapat/jenkins-docker-example.git'

  stage 'build'
  docker.build('mobycounter')

  stage 'deploy'
  sh './deploy.sh'
}
