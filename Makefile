ligo_compiler=docker run --rm -v "$$PWD":"$$PWD" -w "$$PWD" ligolang/ligo:0.42.0

help:
	@echo  'Usage:'
	@echo  '  all - Execute all tests'
	@echo  '  k01 - Native types and expressions'
	@echo  '  k02 - numerical types'
	@echo  '  k03 - string type'
	@echo  '  k04 - bytes type'
	@echo  '  k05 - conditional type'
	@echo  '  k06 - function type'
	@echo  '  k07 - tuple types'
	@echo  '  k08 - record types'
	@echo  '  k09 - variant types'	
	@echo  '  k10 - option type'	
	@echo  '  k11 - list type'	
	@echo  '  k12 - map type'	
	@echo  '  k13 - set type'	
	@echo  '  k14 - exception types'	
	@echo  '  k15 - Imperative style'
	@echo  '  k16 - Functional style'
	@echo  ''

all: k01 k02 k03 k04 k05 k06 k07 k08 \
	 k09 k10 k11 k12 k13 k14 k15 k16

k01: test/k01.jsligo
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k02: test/k02.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k03: test/k03.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k04: test/k04.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k05: test/k05.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k06: test/k06.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k07: test/k07.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k08: test/k08.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k09: test/k09.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k10: test/k10.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k11: test/k11.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k12: test/k12.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k13: test/k13.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k14: test/k14.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k15: test/k15.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k16: test/k16.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k17: test/k17.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^
