# CLI Image Deduplicator

A command-line tool designed for Linux systems to efficiently identify and organize duplicate image files using cryptographic hashing.

## Overview

This tool automates the process of cleaning up large image directories. Instead of relying on filenames or timestamps, which can be unreliable, it calculates the **SHA-256 hash** of the file content. This ensures that only identical files (bit-by-bit matches) are treated as duplicates.

It is built with Python 3 and adheres to standard Unix philosophy: it does one thing well, utilizes standard I/O streams, and integrates seamlessly with the shell environment.

## Key Features

* **Content-Addressable Detection:** Uses SHA-256 hashing to identify duplicates regardless of filename.
* **Memory Efficiency:** Reads files in 4KB chunks, allowing processing of large files (e.g., RAW images) without high RAM consumption.
* **Data Safety:** Implements strict path validation and checks for filename collisions in the destination folders (auto-renaming) to prevent data loss.
* **System Integration:** Includes a Makefile for system-wide installation to `/usr/local/bin`.
* **Performance:** Utilizes `pathlib` generators for recursive directory scanning and Python sets for O(1) complexity lookups.

## Requirements

* Linux 
* Python 3.6+

## Installation

You can install the tool system-wide using the provided Makefile.

1.  Clone the repository:
    ```bash
    git clone [https://github.com/JordiMartinezPl/img-dedup.git](https://github.com/JordiMartinezPl/img-dedup.git)
    cd img-dedup
    ```

2.  Install (requires sudo):
    ```bash
    sudo make install
    ```

This will verify permissions and install the executable to `/usr/local/bin/img-dedup`.

## Usage

Run the command specifying the source directory and the desired output locations.

```bash
img-dedup -s <SOURCE_DIR> -o <UNIQUE_DIR> -d <DUPLICATES_DIR>
