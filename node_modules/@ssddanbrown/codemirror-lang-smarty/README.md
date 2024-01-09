# Smarty Language for CodeMirror 6

This package aims to provide [Smarty Templating Engine language](https://www.smarty.net/docs/en/language.basic.syntax.tpl) support for CodeMirror 6.

**Advisory:** This is simply a port of the old CodeMirror 5 mode code, with the primary intent of getting syntax highlighting, and therefore may not provide full CM6 language features. This also lacks the options that were possible with the CM5 implementation. I tried building this as a new Lezer Grammar language but gave up on that after a painful couple of days. 

### Usage

To use this, simply install via NPM:

```
npm install @ssddanbrown/codemirror-lang-smarty
```

Then you can use it like so:

```javascript
import { StreamLanguage } from "@codemirror/language"
import { smarty } from "@ssddanbrown/codemirror-lang-twig"

const smartyLanguage = StreamLanguage.define(smarty);
// => https://codemirror.net/docs/ref/#language.StreamLanguage
```

### Development

The following commands can be used for development:

```bash
# Prepare/Build the codebase
npm run prepare
```

### Contribution

This is a low maintenance project. The scope of features and support are purposefully kept narrow for my purposes to ensure longer term maintenance is viable. Therefore I will be relatively strict on what issues and PRs I'm willing to accept.

**Issues:** - I'm only really looking to address issues in existing functionality we support. Please don't open issues for new edge-case bugs, syntax additions, usage-support-requests or language features to add.

**PRs:** - I'm happy to accept PRs that fix bugs, improve syntax support or add language features as long as they don't significantly increase the scope of things, they're covered with testing and the need/requirement is fully explained in the PR. You may open an issue if you need to discus anything, or validate acceptance before spending time, just make it clear you're intending to make a PR.

### Attribution

This project is an adaptation of the original [CodeMirror 5 smarty language mode](https://github.com/codemirror/codemirror5/blob/master/mode/smarty/smarty.js).

Many thanks to [Marijn Haverbeke](https://github.com/marijnh) for their work in developing and providing CodeMirror and everything that supports it.

### Useful Development Resources

These are resources I've found useful in building this:

- Smarty Docs: https://www.smarty.net/docs/en/language.basic.syntax.tpl
- Old smarty mode: https://github.com/codemirror/codemirror5/blob/master/mode/smarty/smarty.js

