# ✨ Sparkling joy....

A [clj-kondo](https://github.com/borkdude/clj-kondo) [Code Climate](https://codeclimate.com) engine.

# Setup

TODO TBC


# Notes


Spec:

https://github.com/codeclimate/platform/blob/master/spec/analyzers/SPEC.md#issues

Get JSON/EDN output out of kondo:

```
./bin/clj-kondo \
  --lint examples/foo.clj \
  --cache-dir ./.clj-kondo-cache \
  --config '{:output {:format :json}}' | jq .

```


Output:

```json
{
  "findings": [
    {
      "type": "unused-namespace",
      "message": "namespace clojure.tools.logging is required but never used",
      "level": "warning",
      "row": 2,
      "end-row": 2,
      "end-col": 35,
      "col": 14,
      "filename": "examples/foo.clj"
    },
    {
      "type": "unused-binding",
      "filename": "examples/foo.clj",
      "message": "unused binding bar",
      "row": 4,
      "col": 12,
      "end-row": 4,
      "end-col": 15,
      "level": "warning"
    },
    {
      "type": "unresolved-symbol",
      "filename": "examples/foo.clj",
      "message": "unresolved symbol ok",
      "row": 5,
      "col": 12,
      "end-row": 5,
      "end-col": 14,
      "level": "error"
    }
  ],
  "summary": {
    "error": 1,
    "warning": 2,
    "info": 0,
    "type": "summary",
    "duration": 13
  }
}
```
