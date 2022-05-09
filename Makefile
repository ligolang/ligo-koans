ligo_compiler=docker run --rm -v "$$PWD":"$$PWD" -w "$$PWD" ligolang/ligo:next

help:
	@echo  'Usage:'
	@echo  '  all - Execute all tests'
	@echo  '  k01 - Native types and expressions'
	@echo  '  k02 - numerical types'
	@echo  '  k03 - string type'
	@echo  '  k04 - bytes type'
	@echo  '  k05 - function type'
	@echo  '  k06 - conditional type'
	@echo  '  k07 - tuple type'
	@echo  '  k08 - record types'
	@echo  '  k09 - list type'	
	@echo  '  k10 - map type'	
	@echo  '  k10 - variant types'	
	@echo  '  k20 - Imperative style'
	@echo  '  k21 - Functional style'
	@echo  ''

all: k01 k02 k03 k04 k05 k06 k07 k08 k09 k10 k11 k20 k21

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

k20: test/k20.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^

k21: test/k21.jsligo 
	@echo "[Testing] $^"
	@$(ligo_compiler) run test $^
