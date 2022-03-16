export const isSameCharacterIfCharacterIsSorted = (
  a: string,
  b: string
): boolean => {
  if (a.length !== b.length) return false;

  const [c, d] = [a, b].map((i) => Array.from(i).sort());

  return c.toString() === d.toString();
};
