# PIM-Core

A Processing-In-Memory core. The design has not started yet: this README fixes the project's place in the flow and grows with the RTL.

This project plugs into the repository-level EDA flow. See the [root README](../../README.md) for the `make` targets, their generic parameters, and the typical pipeline. This document covers the parts specific to `pim-core`.

## Quick start

```bash
source ../../sourceme.sh   # or: source sourceme.sh from the repository root

make sim PROJECT=pim-core TOP_LEVEL=<top_level> CLK_PERIOD_NS=<val> OUT_DIR=sim_<top_level>
```

`pim-core` is selected with `PROJECT=pim-core` on every `make` command. The available `TOP_LEVEL` values are listed under [Top-level modules](#top-level-modules).

## Design

_To be defined._ The design is documented module by module in the [wiki](wiki/index.md).

## Top-level modules

_None yet._ Every top-level gets one self-contained testbench, `tb/tb_<top>.sv`; list each one here with its testbench and a one-line description.

## RTL elaboration parameters

_None yet._ Passed as `PARAMS="KEY=VAL ..."` to `make sim`, `make syn` and the gate-level simulations.

## Testbenches

_None yet._ Each bench follows the [flow conventions](../../README.md#conventions): DUT instance named `dut`, clock period from the `CLK_PERIOD_NS` define, and a `POST_SYN_SIM` branch that instantiates the netlist for the gate-level runs.

## Experiments (automation scripts)

_None yet._ Add sweeps, generators, floorplans and pin plans under [scripts/](scripts/), run directly with `bash` / `python`.
