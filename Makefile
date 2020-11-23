all:
	g++ -g -Wall -Wformat -lSDL2 -c -o main.o main.cpp
	g++ -g -Wall -Wformat -lSDL2 -c -o imgui.o imgui.cpp
	g++ -g -Wall -Wformat -lSDL2 -c -o imgui_demo.o imgui_demo.cpp
	g++ -g -Wall -Wformat -lSDL2 -c -o imgui_draw.o imgui_draw.cpp
	g++ -g -Wall -Wformat -lSDL2 -c -o imgui_widgets.o imgui_widgets.cpp
	g++ -g -Wall -Wformat -lSDL2 -c -o imgui_impl_sdl.o imgui_impl_sdl.cpp
	g++ -g -Wall -Wformat -lSDL2 -c -o imgui_impl_vulkan.o imgui_impl_vulkan.cpp
	g++ -o example_sdl_vulkan main.o imgui.o imgui_demo.o imgui_draw.o imgui_widgets.o imgui_impl_sdl.o imgui_impl_vulkan.o -g -Wall -Wformat -lSDL2  -lvulkan -ldl
clean:
	rm *.o example_sdl_vulkan imgui.ini
