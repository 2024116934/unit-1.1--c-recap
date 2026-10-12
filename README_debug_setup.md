# Run and Debug configuration

Copy the `Makefile`, `.gitignore`, and `.vscode` folder into the root of the activity repository.

In VS Code or GitHub Codespaces:

1. Open the **Run and Debug** panel.
2. Select the activity from the dropdown list.
3. Add a breakpoint by clicking beside a line number.
4. Press `F5` or select the green play button.

VS Code runs the corresponding Makefile target before starting GDB. The Makefile compiles each program with `-g -O0`, so the generated `.out` file includes debugging information and is not optimised.

Programs using `scanf()` accept input through the integrated terminal.

Activity 6 is deliberately broken. Run and Debug will not start until the student fixes the compilation errors.
