const comparess = (
  original: string,
  duplicatedCount: number,
  i: number,
  compressed: string
): string => {
  const current: string = original[i];
  const next: string = original[i + 1];
  const charWithCount = compressed + `${current}${duplicatedCount}`;

  if (next === undefined) return charWithCount;

  if (current === next)
    return comparess(original, duplicatedCount + 1, i + 1, compressed);

  return comparess(original, 1, i + 1, charWithCount);
};

export const main = (s: string): string => {
  const compressedString = comparess(s, 1, 0, "");

  return s.length < compressedString.length ? s : compressedString;
};
