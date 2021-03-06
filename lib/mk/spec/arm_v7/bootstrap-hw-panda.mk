NR_OF_CPUS = 2

INC_DIR   += $(REP_DIR)/src/bootstrap/spec/panda
INC_DIR   += $(REP_DIR)/src/include
SRC_CC    += bootstrap/spec/arm/cpu.cc
SRC_CC    += bootstrap/spec/arm/cortex_a9_mmu.cc
SRC_CC    += bootstrap/spec/arm/gicv2.cc
SRC_CC    += bootstrap/spec/panda/platform.cc
SRC_CC    += bootstrap/spec/arm/arm_v7_cpu.cc
SRC_CC    += hw/spec/32bit/memory_map.cc
SRC_S     += bootstrap/spec/arm/crt0.s

CC_MARCH = -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=softfp

include $(call select_from_repositories,lib/mk/bootstrap-hw.inc)

vpath bootstrap/spec/panda/platform.cc $(REP_DIR)/src
