import { spawn } from "child_process";
import path from "node:path";

const configPath = path.resolve("svgo.config.mjs");
const sourcePath = path.resolve("../src");
const outputPath = path.resolve("../build");

spawn("npx", [
  "svgo",
  "--config",
  configPath,
  "-rf",
  sourcePath,
  "-o",
  outputPath,
]);
