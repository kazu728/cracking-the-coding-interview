import { Linkedlist } from "./list.ts";

const go = <T>(list: Linkedlist<T>, map: Map<T, boolean>): Linkedlist<T> => {
  if (list.next === undefined) return list;

  const nextValue = list.next.value;

  if (map.has(nextValue)) {
    const newNext = list.next.next;
    list.next = newNext;
  } else {
    map.set(nextValue, true);
  }

  list.next === undefined ? list : go(list.next, map);

  return list;
};

export const removeDuplicatedNode = <T>(
  linkedList: Linkedlist<T>
): Linkedlist<T> => {
  const map = new Map<T, boolean>();
  map.set(linkedList.value, true);

  return go(linkedList, map);
};
