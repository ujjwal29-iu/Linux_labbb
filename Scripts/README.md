# Shell Scripting Cookbook

A concise, professional reference of common Bash patterns and examples used in this repo.  
Includes iterators, arrays, control flow, and small reusable snippets — ideal for learning, demos, and quick copy-paste.

---

## Table of Contents
- [Overview](#overview)  
- [Project Layout](#project-layout)  
- [Getting Started](#getting-started)  
- [Examples](#examples)  
  - [For Loops](#for-loops)  
  - [While Loops](#while-loops)  
  - [Until Loop](#until-loop)  
  - [Arrays](#arrays)  
  - [Nested Loops](#nested-loops)  
- [Best Practices](#best-practices)  
- [Contributing](#contributing)  
- [License](#license)

---

## Overview
This README provides well-formatted, commented Bash examples used across assignments. Each snippet is self-contained and safe to run (read the header comments first).

---

## Project Layout
- scripts/ — executable Bash examples  
- docs/ — supporting documentation  
- images/ — screenshots used in docs

---

## Getting Started

1. Open a terminal in the `Scripts/` folder.
2. Make a script executable:
```bash
chmod +x scriptname.sh
```
3. Run a script:
```bash
./scriptname.sh
# or
bash scriptname.sh
```

---

## Examples

### For Loops

#### Print numbers 1 to 5 (space-separated)
```bash
#!/usr/bin/env bash
# print_numbers.sh — print 1..5

for i in {1..5}; do
  printf "%s " "$i"
done
printf "\n"
```

#### C-style for loop
```bash
#!/usr/bin/env bash
# c_for_loop.sh — C-style counter

for ((i=1; i<=5; i++)); do
  echo "Iteration $i"
done
```

---

### While Loops

#### Countdown from 5
```bash
#!/usr/bin/env bash
# countdown.sh

count=5
while [ "$count" -gt 0 ]; do
  echo "Countdown: $count"
  count=$((count - 1))
done
```

#### Read input until "stop"
```bash
#!/usr/bin/env bash
# read_until_stop.sh

while true; do
  read -rp "Enter a word (type 'stop' to quit): " word
  [ "$word" = "stop" ] && break
  echo "You entered: $word"
done
```

---

### Until Loop

```bash
#!/usr/bin/env bash
# until_example.sh

n=1
until [ "$n" -gt 5 ]; do
  echo "Value: $n"
  n=$((n + 1))
done
```

---

### Arrays

#### Define and access
```bash
#!/usr/bin/env bash
# array_example.sh

fruits=(apple banana cherry)
echo "First: ${fruits[0]}"
echo "All: ${fruits[*]}"
```

#### Loop through array
```bash
#!/usr/bin/env bash
# array_loop.sh

colors=(red green blue)
for c in "${colors[@]}"; do
  echo "Color: $c"
done
```

---

### Nested Loops with Arrays

```bash
#!/usr/bin/env bash
# nested_loops.sh

names=(Alice Bob)
subjects=(Math Science)

for name in "${names[@]}"; do
  for subj in "${subjects[@]}"; do
    echo "$name studies $subj"
  done
done
```

---

## Best Practices
- Use `#!/usr/bin/env bash` for portability.
- Quote variable expansions ("$var") to avoid word-splitting.
- Validate user input and check return codes.
- Add `set -euo pipefail` for robust scripts during development (use carefully in interactive examples).

---

## Contributing
- Keep examples short, focused and well-commented.
- Name files clearly (purpose in filename).
- Open a PR with a brief description and example output.

---

## License
MIT — feel free to reuse and adapt these snippets for learning and assignments.

---