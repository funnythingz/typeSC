/// <reference path="name.ts" />

module TYPOS {

  export class Hoge {
    private name: Name<string>;

    constructor(first: string, last: string) {
      this.name = new Name(first, last);
    }

    public sayName(): Name<string> {
      return this.name;
    }
  }

}
