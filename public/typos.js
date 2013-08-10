var TYPOS;
(function (TYPOS) {
    var Hoge = (function () {
        function Hoge(first, last) {
            this.name = new Name(first, last);
        }
        Hoge.prototype.sayName = function () {
            return this.name;
        };
        return Hoge;
    })();
    TYPOS.Hoge = Hoge;

    var Name = (function () {
        function Name(first, last) {
            this.first = first;
            this.last = last;
        }
        return Name;
    })();
    TYPOS.Name = Name;
})(TYPOS || (TYPOS = {}));
