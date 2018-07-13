rails {
  MYSQL_DATABASE = 'db_name'
  MYSQL_USER = 'db_user'
  MYSQL_PASSWORD = 'db_password'
  MYSQL_HOST = 'localhost'
  RUBY_VERSION = 'ruby-x.x.x'
  RUBY_GEMSET = 'gemset_name'
  NODE_INSTALL_NAME = 'lts/boron'
  RAILS_ENV = 'test'
  CAP_VERSION = '3'
  OTHER_DEPLOY_ENVS = 'stage2, qa'
  DEPLOY_VARS = [string(credentialsId: 'secret-text', variable: 'secret-text'), usernameColonPassword(credentialsId: 'git_access', variable: 'git-login-creds')]
  SLACK_CHANNEL = '#deploys'
  DEBUG = 'false'
  SKIP_TESTS = 'false'
  SKIP_MIGRATIONS = 'false'
  DOCKER_REGISTRY_CREDS_ID = 'access_docker_hub'
  DOCKER_REGISTRY_URL = 'https://hub.docker.io'
  AWS_DEFAULT_REGION = 'us-east-1'
  SKIP_DEPLOY = 'false'
  DOWNSTREAM_JOB_NAME = 'job_name'
  DOWNSTREAM_JOB_PARAMS = [string(name: 'rubyVersion', value: version), string(name: 'checksum', value: checksum))]
}
