import { assertEquals } from "../deps.ts";
import { main } from "./1_6.ts";

Deno.test("Should compress", () => {
  const input = "aabcccccaaa";
  assertEquals(main(input), "a2b1c5a3");
});

Deno.test("Should return input string", () => {
  const input = "abcd";
  assertEquals(main(input), "abcd");
});
