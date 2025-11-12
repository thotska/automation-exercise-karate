function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    baseUrl: 'https://automationexercise.com/api'
  };
  
  if (env == 'dev') {
    // configure for dev environment
    config.baseUrl = 'https://automationexercise.com/api';
  } else if (env == 'prod') {
    // configure for prod environment
    config.baseUrl = 'https://automationexercise.com/api';
  }
  
  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 10000);
  
  return config;
}
