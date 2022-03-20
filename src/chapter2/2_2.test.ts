import { assertEquals } from "../deps.ts";
import { genLinkedlist } from "./list.ts";
import { findKthNodeValue, getLength } from "./2_2.ts";

Deno.test("Find Kth number list node value", () => {
  const example = [1, 6, 4, 7, 3, 7];
  const input = genLinkedlist(example);

  assertEquals(findKthNodeValue(input, 5), 6);
  assertEquals(findKthNodeValue(input, 2), 3);
  assertEquals(findKthNodeValue(input, 3), 7);
});
Deno.test("Shoud get length of linkedlist", () => {
  const example = [1, 6, 4, 7, 3, 7];
  const input = genLinkedlist(example);

  assertEquals(getLength(input, 0), 6);
});
