import { assertEquals } from "../deps.ts";
import { main } from "./1_5.ts";

Deno.test("Should be with one oneoperation", () => {
  const input = [
    ["pale", "ple"],
    ["pales", "pale"],
    ["pale", "bale"],
    ["pale", "bake"],
    ["pale", "paleaa"],
  ];
  assertEquals(main(input), [true, true, true, false, false]);
});
