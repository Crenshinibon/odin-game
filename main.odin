package main

import "core:c"
import "core:fmt"
import "core:math/linalg"
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

		rl.ClearBackground({128, 180, 255, 255})

		rl.DrawFPS(10, 10)

	}


}
