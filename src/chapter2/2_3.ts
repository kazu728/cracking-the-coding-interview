import { Linkedlist } from "./list.ts";

export const removeNode = <T>(node: Linkedlist<T>): Linkedlist<T> => {
  const nextNode = node.next;
  if (nextNode === undefined) return node;

  node.value = nextNode.value;
  node.next = nextNode.next;

  return node;
};
