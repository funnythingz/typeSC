var TYPOS;
(function (TYPOS) {
    var Hoge = (function () {
        function Hoge(first, last) {
            this.name = new TYPOS.Name(first, last);
        }
        Hoge.prototype.sayName = function () {
            return this.name;
        };
        return Hoge;
    })();
    TYPOS.Hoge = Hoge;
})(TYPOS || (TYPOS = {}));
