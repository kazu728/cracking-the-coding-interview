import { assertEquals } from "../deps.ts";
import { isSameCharacterIfCharacterIsSorted } from "./1_2.ts";

Deno.test("Is same character if character is sorted", () => {
  const a = "abcdef";
  const b = "dacebf";

  assertEquals(isSameCharacterIfCharacterIsSorted(a, b), true);
});

Deno.test("Is not same character", () => {
  const a = "abcdf";
  const b = "daebf";

  assertEquals(isSameCharacterIfCharacterIsSorted(a, b), false);
});
