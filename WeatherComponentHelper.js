({
    fetchWeatherDetails: function(component) {
        component.set("v.isLoading", true);
        var action = component.get("c.fetchWeatherDetails");
        action.setParams({ cityName: component.get("v.city") });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if(state === "SUCCESS") {
                var data = response.getReturnValue();
                component.set("v.weatherData", JSON.parse(data.current));
                component.set("v.forecastData", JSON.parse(data.forecast));
            }
            component.set("v.isLoading", false);
        });
        $A.enqueueAction(action);
    }
})