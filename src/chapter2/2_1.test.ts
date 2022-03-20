import { assertEquals } from "../deps.ts";
import { genLinkedlist, Linkedlist } from "./list.ts";
import { removeDuplicatedNode } from "./2_1.ts";

Deno.test("Remove duplicate list", () => {
  const example = [1, 2, 3, 2];
  const input = genLinkedlist(example);

  assertEquals(
    removeDuplicatedNode(input),
    new Linkedlist(1, new Linkedlist(2, new Linkedlist(3)))
  );
});
