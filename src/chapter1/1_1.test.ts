import { assertEquals } from "../deps.ts";
import { isUniqueCharacter } from "./1_1.ts";

Deno.test("Is unique", () => {
  const input = "abcdefghijklmnopqrstuvwxyz";

  assertEquals(isUniqueCharacter(input), true);
});
Deno.test("Is not unique", () => {
  const input = "abcdefghijklmnopqrstuvwxyza";

  assertEquals(isUniqueCharacter(input), false);
});
