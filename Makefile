ligo_compiler=docker run --rm -v "$$PWD":"$$PWD" -w "$$PWD" ligolang/ligo:next

help:
	@echo  'Usage:'
	@echo  '  k01 - Native types and expressions'
	@echo  '  k02 - numerical types'
	@echo  '  k03 - string type'
	@echo  '  k04 - bytes type'
	@echo  '  k08 - record types'
	@echo  '  k10 - Imperative style'
	@echo  '  k11 - Functional style'
	@echo  ''

all: k01 k02 k03 k04 k08 k10 k11

k01: test/k01_native_types.jsligo
	@$(ligo_compiler) run test $^

k02: test/k02_numerical_types.jsligo 
	@$(ligo_compiler) run test $^

k03: test/k03_string_type.jsligo 
	@$(ligo_compiler) run test $^

k04: test/k04_bytes_type.jsligo 
	@$(ligo_compiler) run test $^

k08: test/k08_record_types.jsligo 
	@$(ligo_compiler) run test $^

k10: test/k10_imperative.jsligo 
	@$(ligo_compiler) run test $^

k11: test/k11_functional.jsligo 
	@$(ligo_compiler) run test $^
