import { Linkedlist } from "./list.ts";

export const getLength = <T>(node: Linkedlist<T>, length: number): number => {
  return node.next === undefined
    ? length + 1
    : getLength(node.next, length + 1);
};

const findNode = <T>(node: Linkedlist<T> | undefined, count: number): T => {
  if (node === undefined) throw new Error("Unfound");

  return count === 0 ? node.value : findNode(node.next, count - 1);
};

export const findKthNodeValue = <T>(
  node: Linkedlist<T> | undefined,
  k: number
): T => {
  if (node === undefined) throw new Error("Linked list is undefined");
  return findNode(node, getLength(node, 0) - k);
};
