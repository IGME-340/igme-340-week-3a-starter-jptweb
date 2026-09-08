# Week 3A Starter - IGME-340

Layout week. We're building with `Container`, `Column`, and `Row` in class, and this repo is where you'll do it.

The app is empty on purpose. `lib/main.dart` has a bare `MaterialApp` with "Hello World!" in the middle, and we'll build it up together during class.

---

## I. Get the Code

Three ways, all worth the same credit. Use whichever you already know:

- **GitHub Desktop:** clone your repo, then open the folder in VS Code.
- **Command line:** copy the URL from the green **Code** button, then `git clone <your-repo-url>`.
- **Neither one cooperating?** Skip cloning and edit `lib/main.dart` directly on GitHub.com. Full credit, no penalty.

Step by step for all three: [Participation Repos](https://github.com/jptweb/IGME-340-Shared/blob/main/documents/participation.md).

Once it's on your machine, open the folder in VS Code. Make sure you open the folder that *contains* `pubspec.yaml`, not the one above it. Opening the parent folder is the most common way this goes wrong, and the error you get looks completely unrelated to the real cause.

**Don't clone into a path with spaces.** `Documents/IGME 340/` will cause failures later that have nothing to do with your code. Use something like `Documents/igme-340/`.

---

## II. Run It

```bash
flutter pub get
flutter run
```

**No emulator?** Pick **Chrome** from the device selector in the bottom right of the VS Code status bar. Everything we do in this course works there. Chrome is a legitimate target, not a consolation prize.

---

## III. Follow Along in Class

We'll work in `lib/main.dart`. Today's widgets:

| Widget | What it does |
|---|---|
| `Container` | The basic box. Holds one child, takes decoration and size. |
| `Column` | Stacks children vertically. Takes `children`, which is a list. |
| `Row` | Same idea, horizontally. |
| `SingleChildScrollView` | Wrap a `Column` in this when your content runs off the screen. |

Two things worth knowing before we start:

- A `Container` with no child fills its parent. Give it a child and it shrinks to fit that child instead.
- A `Container` with a size but no color renders nothing. A blank screen usually means you left the color off, not that you broke something.

---

## IV. Commit and Push

At the end of class, get your work back up to GitHub.

**GitHub Desktop:** write a summary, click **Commit to main**, then **Push origin**.

**Command line:**

```bash
git add .
git commit -m "Week 3A in-class work"
git push
```

**If push is fighting you:** open `lib/main.dart` on GitHub.com, click the pencil, paste your code in, and commit there. Same credit.

That's your participation credit. You're graded on the commit landing, not on the app looking right.

---

## V. If Something Goes Wrong

| Problem | What to do |
|---|---|
| `git push` asks for a password | GitHub wants a token, not your account password. Easiest fix is to install [GitHub CLI](https://cli.github.com) and run `gh auth login`. |
| `flutter pub get` complains about SDK versions | Run `flutter --version` and send me the output on Slack. This template is built to accept a wide range, so this one is worth reporting. |
| No devices in the device list | Use Chrome. See section II. |
| Yellow and black stripes across the screen | That's an overflow warning. Your content is taller than the screen. We fix it with `SingleChildScrollView`. |
| Something else | Slack me. Don't sit on it quietly, a broken environment compounds fast. |
