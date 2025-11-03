import sys
import termios
import fcntl
import os
from cpu import Cpu

def init_nonblocking_input():
    fd = sys.stdin.fileno()

    # Save original terminal settings
    original_termios = termios.tcgetattr(fd)
    new_termios = termios.tcgetattr(fd)

    # Turn off canonical mode and echo
    new_termios[3] &= ~(termios.ICANON | termios.ECHO)
    termios.tcsetattr(fd, termios.TCSANOW, new_termios)

    # Set stdin to non-blocking
    flags = fcntl.fcntl(fd, fcntl.F_GETFL)
    fcntl.fcntl(fd, fcntl.F_SETFL, flags | os.O_NONBLOCK)

    return original_termios

def restore_input(original_termios):
    fd = sys.stdin.fileno()
    termios.tcsetattr(fd, termios.TCSANOW, original_termios)

def read_key():
    try:
        return sys.stdin.read(1)
    except IOError:
        return None
        
task1 = [\
  0x80, \
  0x90, \
  0xEE, \
  0x86, \
  0xDD, \
  0x20, \
  0xEE, \
  0x00, \
  0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00]

task2 = [\
  0x50, \
  0x90, \
  0xEE, \
  0x86, \
  0xDD, \
  0x20, \
  0x00, \
  0x00, \
  0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00]

task3 = [\
  0x85, \
  0x95, \
  0x30, \
  0x40, \
  0x00, \
  0x00, \
  0x00, \
  0x00, \
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]

if __name__ == "__main__":
    def undefined(address):
        print(f'Undefined instruction at address 0x{address:02X}')
        
    cpu = Cpu(task3, undefined_cb=undefined)

    print("Press any key ('q' to quit, space for clock, d for debug dump)...")

    original_settings = init_nonblocking_input()
    try:
        while True:
            key = read_key()
            if key:
                # print(f"Key pressed: {repr(key)}") # uncomment to see what's pressed
                if key == 'q':
                    break
                if key == 'd':
                    cpu.debug_dump()
                if key == ' ':
                    cpu.next_cycle()
    finally:
        restore_input(original_settings)
        print("\nExit.")

