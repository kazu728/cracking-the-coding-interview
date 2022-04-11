import { assertEquals } from "../deps.ts";
import { Linkedlist } from "./list.ts";
import { addTwoLinkedList, listToNumber } from "./2_5.ts";

Deno.test("Should convert from list to number", () => {
  const input = new Linkedlist(7, new Linkedlist(1, new Linkedlist(6)));

  assertEquals(listToNumber(input, 0, 1), 617);
});

Deno.test("Should add two linked list value", () => {
  const a = new Linkedlist(7, new Linkedlist(1, new Linkedlist(6)));
  const b = new Linkedlist(5, new Linkedlist(9, new Linkedlist(2)));

  const output = new Linkedlist(2, new Linkedlist(1, new Linkedlist(9)));

  assertEquals(addTwoLinkedList(a, b), output);
});
