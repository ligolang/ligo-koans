---
title: JsLIGO Koans
tags: Training
description: Set of koans dedicated to JsLIGO syntax
---

# LIGO koans

# Prerequisites

## Remote execution

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/ligolang/ligo-koans)

## Local execution

Please install this software first on your machine or use online alternative : 

- [ ] [VS Code](https://code.visualstudio.com/download) : as text editor
- [ ] [ligo](https://ligolang.org/docs/intro/installation/) : high level language that's transpile to michelson low level language and provide lot of development support for Tezos

Then after you can perform a git clone of `https://github.com/ligolang/ligo-koans`

# What's a Koan

A koans are essentially a simple problem where programmer is asked to 
complete the code. And this is done thanks to unit testing.

## Howto ?

The koans are in files from k01 to k16 in the lib directory. Each one can be executed independantly thanks to the `make` command:

```sh
jsligo-koans ➤ make k01
[Testing] test/k01.jsligo

Test failed with "Should return \"Hello\""
Trace:
File "test/../lib/common/todo.jsligo", line 2, characters 15-32:

File "test/../lib/k01_native_types.jsligo", line 5, characters 4-37 ,
File "test/k01.jsligo", line 4, characters 28-40
make: *** [k01] Error 
```

Open the file `k01_native_types` and fix the code. For instance the previous one can be solved replacing the `K.todo(...)` by the response.

### Before

```javascript
export const hello = () : string => 
    K.todo("Should return \"Hello\"");
```

#### After

```javascript
export const hello = () : string => 
    "Hello";
```

```sh
jsligo-koans ➤ make k01
[Testing] test/k01.jsligo
("[SUCCESS]" , {expected = "Hello"})

Test failed with "Should return 1"
Trace:
File "test/../lib/common/todo.jsligo", line 2, characters 15-32:

File "test/../lib/k01_native_types.jsligo", line 9, characters 4-29 ,
File "test/k01.jsligo", line 5, characters 28-38
make: *** [k01] Error 1
```

Then solves each exercise step by step and finally for k01 you should 
have the following execution trace.

```
jsligo-koans ➤ make all
[Testing] test/k01.jsligo
("[SUCCESS]" , {expected = "Hello"})
("[SUCCESS]" , {expected = 1})
("[SUCCESS]" , {expected = 1n})
("[SUCCESS]" , {expected = 1000000mutez})
("[SUCCESS]" , {expected = true})
("[SUCCESS]" , {expected = 2n})
```

Once `k01` is solved you can do the same for`k02`, `k03`, ..., `k15` and finally `k16`. Each Koan covers a
specific topic of the language. Finally, `k17` introduces polymorphism.

# License

MIT License

Copyright (c) 2022 ligolang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
