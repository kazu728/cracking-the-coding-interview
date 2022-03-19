type Input = string[][];
type CharMap = Map<string, number>;

const canGenOneOperation = (s: string, map: CharMap): boolean => {
  let hasDifference = false;

  for (const c of s) {
    if (map.has(c)) continue;
    if (hasDifference) return false;

    hasDifference = true;
  }
  return true;
};

export const main = (input: Input): boolean[] => {
  const output: boolean[] = [];

  for (const e of input) {
    const CHAR_MAP = new Map<string, number>();
    const [a, b] = e;

    if (a.length + 1 < b.length) {
      output.push(false);
      continue;
    }

    for (const c of a) CHAR_MAP.set(c, 0);

    output.push(canGenOneOperation(b, CHAR_MAP));
  }

  return output;
};
