# gm-cadence
![banner graphic](banner.png)

Cadence is a library for modern GameMaker projects for scheduling execution of code. It presents a simple API that lets you run any function with a given frame delay and repeat duration.

#### Table of Contents
* [Setup](#setup)
* [Usage](#usage)
* [Licensing](#licensing)
* [Attribution](#attribution)

## Setup

Integrating Cadence into your project is simple: just [download the latest release](https://github.com/daikon-games/cadence/releases), and then in GameMaker click on the **Tools** menu and select **Import Local Package**. Choose the `.yymps` file you downloaded, and import all assets.

Alternatively you can install Cadence from the [Game Maker Marketplace]().

Absolutely no further configuration is required! Just start calling `run_in_frames`

## Usage

Cadence exposes the following function:

```
run_in_frames(routine, executionDelay, [steps])
```

Note that `run_in_frames` is not a method of an object but rather provided globally by the script file `scr_cadence`.

Simply call it with any function you wish to execute in the `routine` parameter. The other two parameters control the timing of the function execution.

`executionDelay` is the number of frames that Cadence will wait before executing `routine`.
```
run_in_frames(function() {
    show_debug_message("hello!")
}, 15);
```
The above code example will wait for 15 frames from the time of its execution, and then print `Hello` to the output console.

The other parameter, `steps`, is optional. If not provided it defaults to `1`.
```
run_in_frames(function() {
    show_debug_message("hello!")
}, 15, 10);
```
The above code example will wait for 15 frames from the time of its execution, and then print `Hello` once per frame for an additional 10 frames.

## Licensing

Polyglot is licensed under Creative Commons BY 4.0. Essentially, you may use it, change it, ship it, and share it, with attribution.
Just make sure to somewhere mention the use of **Cadence by Daikon Games**!

## Attribution
### Fonts
Demo font, [Peaberry](https://emhuo.itch.io/peaberry-pixel-font) by emhuo
