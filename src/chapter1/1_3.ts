export const urlify = (input: string, length: number): string => {
  const swapped: string[] = new Array(length).fill("");

  for (let i = 0; i < length; i++) {
    const element = input[i] === " " ? "%20" : input[i];
    swapped[i] = element;
  }

  return swapped.join("");
};
