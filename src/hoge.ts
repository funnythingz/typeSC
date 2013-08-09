module Hoge {
  export class Human {

    private name: String;

    static constructor(name: String) {
      this.name = name;
    }

    public sayName(): String {
      return this.name;
    }
  }
}
