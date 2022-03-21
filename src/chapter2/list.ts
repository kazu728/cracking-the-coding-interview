import { assertEquals } from "../deps.ts";

export class Linkedlist<T> {
  constructor(public value: T, public next?: Linkedlist<T>) {}
}

export const genLinkedlist = <T>(l: T[]): Linkedlist<T> => {
  const go = (linkedList: Linkedlist<T>, l: T[], i: number): Linkedlist<T> => {
    const currentValue = l[i];

    if (currentValue === undefined) return linkedList;
    linkedList.next = go(new Linkedlist<T>(currentValue), l, i + 1);

    return linkedList;
  };

  return go(new Linkedlist<T>(l[0]), l, 1);
};

assertEquals(
  genLinkedlist([1, 2, 3]),
  new Linkedlist(1, new Linkedlist(2, new Linkedlist(3)))
);
