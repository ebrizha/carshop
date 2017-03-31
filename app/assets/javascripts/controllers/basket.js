//= require application

app.controller('BasketController', ['$scope', 'Basket', function ($scope, Basket) {
    $scope.searching = true;
    Basket.get(4).then(function (result) {
       console.log(result);
    });
    // console.log(Basket.get(4));
    // Find all books matching the title
    // $scope.product = Basket.query();

    // console.log($scope.product);

    // $scope.product.then(function(results) {
    //     $scope.searching = false;
    // }, function (error) {
    //     $scope.searching = false;
    // });
    //
    // // Find a single book and update it
    // Product.get(4).then(function (product) {
    //     product.lastViewed = new Date();
    //     product.update();
    // });

    // Create a book and save it
    // new Product({title: 'test'}).create();
}]);