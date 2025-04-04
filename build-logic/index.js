import { spawn } from "child_process";

spawn("npx", [
  "svgo",
  "--config",
  "/build-logic/svgo.config.mjs",
  "-rf",
  "/app/src",
  "-o",
  "/app/build",
]);
