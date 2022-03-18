type CHAR_COUNT_MAP = Map<string, number>;

const insertToMap = (s: string, map: CHAR_COUNT_MAP): void => {
  for (const char of s) {
    if (char === " ") continue;
    const lowerChar = char.toLowerCase();
    if (map.has(lowerChar)) {
      const value = map.get(lowerChar)!;
      map.set(lowerChar, value + 1);
    } else {
      map.set(lowerChar, 1);
    }
  }
};

export const isPalindrome = (s: string, map: CHAR_COUNT_MAP): boolean => {
  insertToMap(s, map);

  let foundOdd = false;

  for (const [_, value] of map) {
    if (value % 2 === 0) continue;
    if (value % 2 === 1) {
      if (foundOdd) return false;
      foundOdd = true;
    }
  }

  return true;
};
