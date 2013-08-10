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

  export class Name<T> {
    public first: T;
    public last: T;

    constructor(first: T, last: T) {
      this.first = first;
      this.last = last;
    }
  }
}
