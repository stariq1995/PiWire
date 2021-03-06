all: code/recv-server.c code/transfer-client.c
	rm -rf bin tmp
	mkdir bin tmp
	gcc -o bin/recv code/recv-server.c -lbluetooth
	gcc -o bin/transfer code/transfer-client.c -lbluetooth
	gcc -o bin/forwd code/forwarder.c -lbluetooth
	gcc -o bin/bt_forwd code/bt_forwarder.c -lbluetooth
	gcc -o bin/forwd-2 code/forwarder-2.c -lbluetooth

server: code/recv-server.c
	rm -rf tmp
	mkdir tmp
	gcc -o bin/recv code/recv-server.c -lbluetooth

client: code/transfer-client.c
	gcc -o bin/transfer code/transfer-client.c -lbluetooth
	
opp: code/opportunistic_forwarder.c
	rm -rf tmp
	mkdir tmp
	gcc -o bin/oppf code/opportunistic_forwarder.c
	gcc -o bin/bt_oppf code/bt_opp_forwarder.c -lbluetooth