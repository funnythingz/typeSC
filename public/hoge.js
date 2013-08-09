var Hoge;
(function (Hoge) {
    var Human = (function () {
        function Human() {
        }
        Human.constructor = function (name) {
            this.name = name;
        };

        Human.prototype.sayName = function () {
            return this.name;
        };
        return Human;
    })();
    Hoge.Human = Human;
})(Hoge || (Hoge = {}));
