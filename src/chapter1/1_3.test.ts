import { assertEquals } from "../deps.ts";
import { urlify } from "./1_3.ts";

Deno.test("Is same character if character is sorted", () => {
  const input: [string, number] = ["Mr John Smith ", 13];

  assertEquals(urlify(...input), "Mr%20John%20Smith");
});
