const ASCII = 128;

export const isUniqueCharacter = (input: string): boolean => {
  const array: boolean[] = new Array(ASCII).fill(false);

  for (const i of input) {
    const charCode = i.charCodeAt(0);
    if (array[charCode]) return false;

    array[charCode] = true;
  }
  return true;
};
