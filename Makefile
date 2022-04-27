ligo_compiler=docker run --rm -v "$$PWD":"$$PWD" -w "$$PWD" ligolang/ligo:next

help:
	@echo  'Usage:'
	@echo  '  k01 - Native types and expressions'
	@echo  '  k02 - First Koans'
	@echo  ''

all: k01 k02

k01: test/k01_native_types.jsligo 
	@$(ligo_compiler) run test $^

k02: test/k02_variables.jsligo 
	@$(ligo_compiler) run test $^
