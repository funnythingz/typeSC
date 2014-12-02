/// <reference path="../src/ts/oop.ts" />

module OOP {

    var expect = chai.expect;

    describe("OOP", function() {

        var id: ID = new ID('id123');
        var fakeId: ID = new ID('id345');
        var clazz: Clazz = new Clazz(id);

        it("id to instanceof `ID`", function() {
            expect(id).to.be.instanceof(ID);
        });

        it("clazz has `ID`", function() {
            expect(clazz).to.be.haveOwnProperty('id');
        });

        it("clazz has id value of ID", function() {
            expect(clazz.id.getValue()).to.be.equal(id.getValue());
        });

        it("clazz has not id value of ID", function() {
            expect(clazz.id.getValue()).to.be.not.equal(fakeId.getValue());
        });

    });

}
