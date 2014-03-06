BITCOIND=litecoind
B1_FLAGS=
B2_FLAGS=
B1=$(BITCOIND) -datadir=1 $(B1_FLAGS)
B2=$(BITCOIND) -datadir=2 $(B2_FLAGS)

start:
	$(B1) -daemon
	$(B2) -daemon
	
generate-true:
	$(B1) setgenerate true
	
generate-false:
	$(B1) setgenerate false
	
getinfo:
	$(B1) getinfo
	$(B2) getinfo
	
stop:
	$(B1) stop
	$(B2) stop

clean:
	rm -rf 1/testnet*
	rm -rf 2/testnet*
