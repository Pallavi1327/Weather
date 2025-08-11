public with sharing class WeatherDetailsClass {
    @AuraEnabled
    public static Map<String, String> fetchWeatherDetails(String cityName) {
        String apiKey = 'YOUR_API_KEY';
        String currentUrl = 'https://api.openweathermap.org/data/2.5/weather?q=' + cityName + '&appid=' + apiKey + '&units=metric';
        String forecastUrl = 'https://api.openweathermap.org/data/2.5/forecast?q=' + cityName + '&appid=' + apiKey + '&units=metric';

        Http http = new Http();
        HttpRequest req1 = new HttpRequest();
        req1.setEndpoint(currentUrl);
        req1.setMethod('GET');
        HttpResponse res1 = http.send(req1);

        HttpRequest req2 = new HttpRequest();
        req2.setEndpoint(forecastUrl);
        req2.setMethod('GET');
        HttpResponse res2 = http.send(req2);

        Map<String, String> result = new Map<String, String>();
        result.put('current', res1.getBody());
        result.put('forecast', res2.getBody());
        return result;
    }
}