//= require application
var id = 1;
app.factory('Basket', ['railsResourceFactory', function (railsResourceFactory) {
    return railsResourceFactory({url: '/basket/action/'});
}]);