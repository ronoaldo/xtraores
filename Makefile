all: run

run:
	minetest --worldname DevXtraores --go 2>&1 | tee -a /tmp/minetest-xtraores.log
