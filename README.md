# LOVE2D Template

A minimal but well-organized template for developing LOVE2D games.

Structure

- src/: Lua source files (game code)
- assets/: images, audio, fonts, maps
- libs/: third-party libraries
- build/: build artifacts (zips, .love files)
- docs/: design notes and docs
- tests/: automated tests (simple smoke tests and scripts)

Example layout (important files):

- main.lua         -- tiny loader that delegates to `src/main.lua`
- conf.lua         -- LOVE configuration
- src/main.lua     -- project entry
- src/game.lua     -- simple game module
- assets/          -- images, audio, fonts



How to run

1. Install LOVE2D (https://love2d.org)
2. From the project root run `love .` or open the folder in your OS file manager and drag the folder onto the LOVE executable.

Run tests (Windows PowerShell):

Open PowerShell in the project root and run `./tests/run_tests.ps1` (requires Lua on PATH for the smoke test)  

Notes

This template uses `src/main.lua` as the project entry and keeps the top-level `main.lua` as a tiny loader so the project can be run from the root with LOVE.

Packaging / creating a .love file

You can create a `.love` file (a zip of your project) for distribution or to run directly with LOVE.

On Windows (PowerShell), we've included a helper script `tools/build.ps1`.

From the project root run:

```powershell
.\tools\build.ps1 -Out "mygame.love"
```

This will create `build\mygame.love`. The script excludes the `build/`, `.git/`, `.vscode/` and `.idea/` folders and any existing `.love` files.

Running the produced `.love`:

You can open `build\mygame.love` with the LOVE executable (drag it onto the LOVE exe or run `love build\mygame.love`).

Notes on creating native executables

To create a Windows executable you can concatenate `love.exe` with the `.love` archive and distribute the result (or use tools like `love-release` or `win-package` for more polished packaging). See the LOVE wiki for step-by-step instructions.

Notes

This template uses `src/main.lua` as the project entry and keeps the top-level `main.lua` as a tiny loader so the project can be run from the root with LOVE.
