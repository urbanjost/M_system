INCLUDE_FLAGS = $(addprefix -I,$(INCLUDE_DIRS))
ifeq ($(notdir $(basename $(FC))),gfortran)
CC = $(subst gfortran,gcc,$(FC))
CFLAGS = $(subst -fbacktrace,,$(subst -fcheck-array-temporaries,,$(subst -Wimplicit-interface,,$(FFLAGS))))
endif

$(BUILD_DIR)/libM_system.a: $(BUILD_DIR)/M_system.o $(BUILD_DIR)/C-M_system.o 
	ar rs $(@) $(^)

$(BUILD_DIR)/M_system.mod: src/M_system.f90

$(BUILD_DIR)/M_system.o: src/M_system.f90
	$(FC) -c -J$(BUILD_DIR) $(INCLUDE_FLAGS) $(FFLAGS) -o $(@) $(<)

$(BUILD_DIR)/C-M_system.o: src/C-M_system.c 
	$(CC) -c $(CFLAGS) -o $(@) $(<)
