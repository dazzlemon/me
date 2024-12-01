I'm trying to select a programming language for backend.

Base list is combined from two sources that combine may other sources.

# 1. [plrank](https://www.plrank.com)

Settings:
- Date: 2024 Nov 30
- Sources
  - [x] StackOverflow
  - [x] Octoverse
  - [x] RedMonk
  - [x] Languish
  - [ ] PYPL - not available for whatever reason
  - [x] IEEE Spectrum
  - [x] TIOBE - not available for whatever reason
- [ ] Exclude "Edge Languages"
- Number of languages - 20
- Months for Delta - 12
- Language types
  - [x] Functional
  - [x] Array
  - [x] System

Result:
  1. Python
  2. JavaScript
  3. Java
  4. TypeScript
  5. C#
  6. C++
  7. HTML
  8. CSS
  9. PHP
  10. C
  11. Go
  12. Shell
  13. SQL
  14. Markdown
  15. Rust
  16. Kotlin
  17. Jupyter Notebook
  18. Swift
  19. Powershell
  20. Ruby

# 2. [languish](https://tjpalmer.github.io/languish/)

Top 20 from mean score:

1. Python
2. TypeScript
3. JavaScript
4. Java
5. C++
6. C#
7. HTML
8. Go
9. PHP
10. Rust
11. C
12. Markdown
13. Shell
14. Kotlin
15. CSS
16. Jupyter Notebook
17. Swift
18. R
19. Dart
20. Vue

# Combined List

  - Python
  - JavaScript
  - Java
  - TypeScript
  - C#
  - C++
  - PHP
  - C
  - Go
  - Shell
  - Rust
  - Kotlin
  - Swift
  - Ruby
  - R

## Obvious non picks
  - ~~HTML~~ a markodwn language
  - ~~CSS~~ a styling language
  - ~~SQL~~ a database language
  - ~~Markdown~~ a markdown language
  - ~~Jupyter Notebook~~ no idea what category this language is but yeah
  - ~~Powershell~~ a shell
  - ~~Vue~~

I am also not choosing dart because I am already using it on front-end and want something new for backend.


# Table

I am going to come up with criteria to filter the languages out.

To make the table easier to read, only the criteria's number will be shown in the header and the description will be below the table.

Cells will have either empy or checked checkboxes.

If a language fails one criteria - it's out, so I won't bother filling out the rest of the cells.

Resulting language will have passed all criteria and the rest of the languages will have failed at least one.

I will also reorder that table so that the higher the position the more criteria is passed.

| Language   |  1  |  2  |  3  |  4  |  5  |  6  |
| --------   | --- | --- | --- | --- | --- | --- |
| Kotlin     | [x] | [x] | [x] | [x] | [x] | [x] |
| Rust       | [x] | [x] | [x] | [x] | [x] | [x] |
| C#         | [x] | [x] | [x] | [x] | [x] | [ ] |
| TypeScript | [x] | [x] | [x] | [ ] | [ ] | [ ] |
| Java       | [x] | [x] | [ ] | [ ] | [ ] | [ ] |
| PHP        | [x] | [x] | [ ] | [ ] | [ ] | [ ] |
| Ruby       | [x] | [x] | [ ] | [ ] | [ ] | [ ] |
| JavaScript | [x] | [x] | [ ] | [ ] | [ ] | [ ] |
| Python     | [x] | [x] | [ ] | [ ] | [ ] | [ ] |
| Go         | [x] | [ ] | [ ] | [ ] | [ ] | [ ] |
| C          | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| C++        | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| Shell      | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| Swift      | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| R          | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |

### 1. Is it widely adopted for usage in backend?

Rust, Kotlin, and Dart are having a free pass on that one.

### 2. Does it have a ternary operator?

This is a trick question to eleminate golang. 

### 3. Does it have null safety?

By that I mean can I assign null/nil/None/empty/whatever value to any variable, or only ones that specify that in their type.

That would also mean that if I have non nullable variable, I can't assign it a null value.

This can obviously be avoided by using self-made class. But that is not a complete solution as I will have to interact with external code, so I want this to be a core feature.

### 4. Does it have pattern-matching?

By that I mean functional pattern-matching like that:
```
match (someNumber):
  if <0 then handleNegative(someNumber)
  if 0 then handleZero()
  if 7 then handleSeven()
  if 42 then answer()
  otherwise default handle
```

### 5. Does it have some resemblance of Algebraic Data Types?

Something like darts sealed classes? Enhanced enum?

Wow, seems no one is eleminated, that's cool.

### 6. Does it allow global top level functions?

C# is eleminated because it only comes close with static classes and functions.

This solution is too verbose for me.

### Kotlin vs Rust (for backend)

???
