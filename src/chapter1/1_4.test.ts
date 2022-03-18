import { assertEquals } from "../deps.ts";
import { isPalindrome } from "./1_4.ts";

Deno.test("Is palindrome", () => {
  const input = "Tact Coa";
  assertEquals(isPalindrome(input, new Map()), true);
});

Deno.test("Is not palindrome", () => {
  const input = "Tact Coac";
  assertEquals(isPalindrome(input, new Map()), false);
});
