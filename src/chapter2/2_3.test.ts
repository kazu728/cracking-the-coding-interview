import { assertEquals } from "../deps.ts";
import { genLinkedlist, Linkedlist } from "./list.ts";
import { removeNode } from "./2_3.ts";

Deno.test("Remove node", () => {
  const example = [1, 6, 4, 7, 3, 7];
  const input = genLinkedlist(example);

  assertEquals(
    removeNode(input.next?.next!),
    new Linkedlist(7, new Linkedlist(3, new Linkedlist(7)))
  );
});
