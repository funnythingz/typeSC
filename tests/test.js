/// <reference path="../../typings/tsd.d.ts" />
var __extends = this.__extends || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    __.prototype = b.prototype;
    d.prototype = new __();
};
var OOP;
(function (OOP) {
    var Clazz = (function () {
        function Clazz(id) {
            this.id = id;
        }
        return Clazz;
    })();
    OOP.Clazz = Clazz;
    var ID = (function () {
        function ID(id) {
            this.id = id;
        }
        ID.prototype.getValue = function () {
            return this.id;
        };
        return ID;
    })();
    OOP.ID = ID;
    var SubClazz = (function (_super) {
        __extends(SubClazz, _super);
        function SubClazz(id, value) {
            _super.call(this, id);
            this.value = value;
        }
        return SubClazz;
    })(Clazz);
    OOP.SubClazz = SubClazz;
})(OOP || (OOP = {}));
/// <reference path="../src/ts/oop.ts" />
var OOP;
(function (OOP) {
    var expect = chai.expect;
    describe("OOP", function () {
        var id = new OOP.ID('id123');
        var fakeId = new OOP.ID('id345');
        var clazz = new OOP.Clazz(id);
        it("id to instanceof `ID`", function () {
            expect(id).to.be.instanceof(OOP.ID);
        });
        it("clazz has `ID`", function () {
            expect(clazz).to.be.haveOwnProperty('id');
        });
        it("clazz has id value of ID", function () {
            expect(clazz.id.getValue()).to.be.equal(id.getValue());
        });
        it("clazz has not id value of ID", function () {
            expect(clazz.id.getValue()).to.be.not.equal(fakeId.getValue());
        });
    });
})(OOP || (OOP = {}));
