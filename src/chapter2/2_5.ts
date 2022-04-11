import { Linkedlist } from "./list.ts";

export const listToNumber = (
  l: Linkedlist<number>,
  n: number,
  m: number
): number => {
  const addedValue = n + l.value * m;

  return l.next === undefined
    ? addedValue
    : listToNumber(l.next, addedValue, m * 10);
};

const numberToList = (
  n: string[],
  l: Linkedlist<number> | undefined
): Linkedlist<number> | undefined => {
  const value = n.pop();
  if (value === undefined) return l;

  l = new Linkedlist(Number(value));
  l.next = numberToList(n, l.next);

  return l;
};

export const addTwoLinkedList = (
  a: Linkedlist<number>,
  b: Linkedlist<number>
): Linkedlist<number> | undefined => {
  const c = listToNumber(a, 0, 1);
  const d = listToNumber(b, 0, 1);

  const numbers = (c + d).toString().split("");

  return numberToList(numbers, undefined);
};
