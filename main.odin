package main

//import "core:c"
//import "core:fmt"
//import "core:math/linalg"
import rl "vendor:raylib"

main :: proc() {

	rl.SetTraceLogLevel(.ERROR)
	rl.SetConfigFlags({.MSAA_4X_HINT, .VSYNC_HINT})

	rl.InitWindow(1920, 1080, "Odin Game")
	defer rl.CloseWindow()
	rl.SetTargetFPS(60)

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		defer rl.EndDrawing()

		rl.DrawRectangleV([2]f32{960, 540}, [2]f32{10, 10}, rl.BLUE)
		rl.ClearBackground(rl.RAYWHITE)
		rl.DrawFPS(10, 10)
	}
}
