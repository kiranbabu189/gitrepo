app.config(function($routeProvider) {
	$routeProvider
	.when("/",{
		templateUrl : "main.htm",
	})
	.when("/1",{
		templateUrl : "1.htm",
		controller : "londonCtrl"
	})
	.when("/2",{
		templateUrl : "2.htm",
		controller : "parisCtrl"
	});
});

