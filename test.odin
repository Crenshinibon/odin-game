package main

import "core:fmt"

A :: struct {
	x: i32,
}

B :: struct {
	x: i32,
}

something :: proc(p: struct {
		x: i32,
	}) {
	fmt.printf("%s", p.x)
}

main :: proc() {
	a := A {
		x = 5,
	}

	b := B {
		x = 5,
	}

	if (a == b) {
		fmt.printf("equal")
	}

	something(a)
	something(b)
}
