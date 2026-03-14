function fn() {
  var config = {
    baseUrl: karate.properties['karate.base.url'] || 'http://localhost:8080'
  };
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}
