# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/anthonypierrat/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/anthonypierrat/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anthonypierrat/Documents/utbm/shell

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anthonypierrat/Documents/utbm/shell/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/shell.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shell.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shell.dir/flags.make

CMakeFiles/shell.dir/main.c.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anthonypierrat/Documents/utbm/shell/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/shell.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shell.dir/main.c.o   -c /home/anthonypierrat/Documents/utbm/shell/main.c

CMakeFiles/shell.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anthonypierrat/Documents/utbm/shell/main.c > CMakeFiles/shell.dir/main.c.i

CMakeFiles/shell.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anthonypierrat/Documents/utbm/shell/main.c -o CMakeFiles/shell.dir/main.c.s

CMakeFiles/shell.dir/main.c.o.requires:

.PHONY : CMakeFiles/shell.dir/main.c.o.requires

CMakeFiles/shell.dir/main.c.o.provides: CMakeFiles/shell.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/main.c.o.provides.build
.PHONY : CMakeFiles/shell.dir/main.c.o.provides

CMakeFiles/shell.dir/main.c.o.provides.build: CMakeFiles/shell.dir/main.c.o


CMakeFiles/shell.dir/line.c.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/line.c.o: ../line.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anthonypierrat/Documents/utbm/shell/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/shell.dir/line.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shell.dir/line.c.o   -c /home/anthonypierrat/Documents/utbm/shell/line.c

CMakeFiles/shell.dir/line.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/line.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anthonypierrat/Documents/utbm/shell/line.c > CMakeFiles/shell.dir/line.c.i

CMakeFiles/shell.dir/line.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/line.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anthonypierrat/Documents/utbm/shell/line.c -o CMakeFiles/shell.dir/line.c.s

CMakeFiles/shell.dir/line.c.o.requires:

.PHONY : CMakeFiles/shell.dir/line.c.o.requires

CMakeFiles/shell.dir/line.c.o.provides: CMakeFiles/shell.dir/line.c.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/line.c.o.provides.build
.PHONY : CMakeFiles/shell.dir/line.c.o.provides

CMakeFiles/shell.dir/line.c.o.provides.build: CMakeFiles/shell.dir/line.c.o


CMakeFiles/shell.dir/execute.c.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/execute.c.o: ../execute.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anthonypierrat/Documents/utbm/shell/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/shell.dir/execute.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shell.dir/execute.c.o   -c /home/anthonypierrat/Documents/utbm/shell/execute.c

CMakeFiles/shell.dir/execute.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/execute.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anthonypierrat/Documents/utbm/shell/execute.c > CMakeFiles/shell.dir/execute.c.i

CMakeFiles/shell.dir/execute.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/execute.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anthonypierrat/Documents/utbm/shell/execute.c -o CMakeFiles/shell.dir/execute.c.s

CMakeFiles/shell.dir/execute.c.o.requires:

.PHONY : CMakeFiles/shell.dir/execute.c.o.requires

CMakeFiles/shell.dir/execute.c.o.provides: CMakeFiles/shell.dir/execute.c.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/execute.c.o.provides.build
.PHONY : CMakeFiles/shell.dir/execute.c.o.provides

CMakeFiles/shell.dir/execute.c.o.provides.build: CMakeFiles/shell.dir/execute.c.o


CMakeFiles/shell.dir/prompt.c.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/prompt.c.o: ../prompt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anthonypierrat/Documents/utbm/shell/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/shell.dir/prompt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shell.dir/prompt.c.o   -c /home/anthonypierrat/Documents/utbm/shell/prompt.c

CMakeFiles/shell.dir/prompt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/prompt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anthonypierrat/Documents/utbm/shell/prompt.c > CMakeFiles/shell.dir/prompt.c.i

CMakeFiles/shell.dir/prompt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/prompt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anthonypierrat/Documents/utbm/shell/prompt.c -o CMakeFiles/shell.dir/prompt.c.s

CMakeFiles/shell.dir/prompt.c.o.requires:

.PHONY : CMakeFiles/shell.dir/prompt.c.o.requires

CMakeFiles/shell.dir/prompt.c.o.provides: CMakeFiles/shell.dir/prompt.c.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/prompt.c.o.provides.build
.PHONY : CMakeFiles/shell.dir/prompt.c.o.provides

CMakeFiles/shell.dir/prompt.c.o.provides.build: CMakeFiles/shell.dir/prompt.c.o


CMakeFiles/shell.dir/handler.c.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/handler.c.o: ../handler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anthonypierrat/Documents/utbm/shell/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/shell.dir/handler.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shell.dir/handler.c.o   -c /home/anthonypierrat/Documents/utbm/shell/handler.c

CMakeFiles/shell.dir/handler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/handler.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anthonypierrat/Documents/utbm/shell/handler.c > CMakeFiles/shell.dir/handler.c.i

CMakeFiles/shell.dir/handler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/handler.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anthonypierrat/Documents/utbm/shell/handler.c -o CMakeFiles/shell.dir/handler.c.s

CMakeFiles/shell.dir/handler.c.o.requires:

.PHONY : CMakeFiles/shell.dir/handler.c.o.requires

CMakeFiles/shell.dir/handler.c.o.provides: CMakeFiles/shell.dir/handler.c.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/handler.c.o.provides.build
.PHONY : CMakeFiles/shell.dir/handler.c.o.provides

CMakeFiles/shell.dir/handler.c.o.provides.build: CMakeFiles/shell.dir/handler.c.o


# Object files for target shell
shell_OBJECTS = \
"CMakeFiles/shell.dir/main.c.o" \
"CMakeFiles/shell.dir/line.c.o" \
"CMakeFiles/shell.dir/execute.c.o" \
"CMakeFiles/shell.dir/prompt.c.o" \
"CMakeFiles/shell.dir/handler.c.o"

# External object files for target shell
shell_EXTERNAL_OBJECTS =

shell: CMakeFiles/shell.dir/main.c.o
shell: CMakeFiles/shell.dir/line.c.o
shell: CMakeFiles/shell.dir/execute.c.o
shell: CMakeFiles/shell.dir/prompt.c.o
shell: CMakeFiles/shell.dir/handler.c.o
shell: CMakeFiles/shell.dir/build.make
shell: CMakeFiles/shell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anthonypierrat/Documents/utbm/shell/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable shell"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shell.dir/build: shell

.PHONY : CMakeFiles/shell.dir/build

CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/main.c.o.requires
CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/line.c.o.requires
CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/execute.c.o.requires
CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/prompt.c.o.requires
CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/handler.c.o.requires

.PHONY : CMakeFiles/shell.dir/requires

CMakeFiles/shell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shell.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shell.dir/clean

CMakeFiles/shell.dir/depend:
	cd /home/anthonypierrat/Documents/utbm/shell/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anthonypierrat/Documents/utbm/shell /home/anthonypierrat/Documents/utbm/shell /home/anthonypierrat/Documents/utbm/shell/cmake-build-debug /home/anthonypierrat/Documents/utbm/shell/cmake-build-debug /home/anthonypierrat/Documents/utbm/shell/cmake-build-debug/CMakeFiles/shell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shell.dir/depend

