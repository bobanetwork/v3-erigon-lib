module github.com/ledgerwatch/erigon-lib

go 1.18

require (
	github.com/RoaringBitmap/roaring v1.2.1
	github.com/VictoriaMetrics/metrics v1.22.2
	github.com/c2h5oh/datasize v0.0.0-20220606134207-859f65c6625b
	github.com/go-stack/stack v1.8.1
	github.com/google/btree v1.1.2
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0
	github.com/hashicorp/golang-lru v0.5.5-0.20210104140557-80c98217689d
	github.com/holiman/uint256 v1.2.1
	github.com/ledgerwatch/interfaces v0.0.0-20220914022748-0bc2888c95ce
	github.com/ledgerwatch/log/v3 v3.4.1
	github.com/ledgerwatch/secp256k1 v1.0.0
	github.com/quasilyte/go-ruleguard/dsl v0.3.21
	github.com/spaolacci/murmur3 v1.1.0
	github.com/stretchr/testify v1.8.0
	github.com/torquem-ch/mdbx-go v0.26.1
	go.uber.org/atomic v1.10.0
	golang.org/x/crypto v0.0.0-20220411220226-7b82a4e95df4
	golang.org/x/exp v0.0.0-20220921164117-439092de6870
	golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4
	golang.org/x/sys v0.0.0-20220722155257-8c9f86f7a55f
	google.golang.org/grpc v1.48.0
	github.com/matryer/moq v0.2.7 // indirect
	google.golang.org/grpc/cmd/protoc-gen-go-grpc v1.2.0
	google.golang.org/protobuf v1.28.1
)

replace github.com/ledgerwatch/interfaces => ./interfaces

require (
	github.com/bits-and-blooms/bitset v1.2.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/mattn/go-colorable v0.1.11 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/mschoch/smat v0.2.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/valyala/fastrand v1.1.0 // indirect
	github.com/valyala/histogram v1.2.0 // indirect
	golang.org/x/mod v0.6.0-dev.0.20220106191415-9b9b3d81d5e3 // indirect
	golang.org/x/net v0.0.0-20220607020251-c690dde0001d // indirect
	golang.org/x/text v0.3.7 // indirect
	golang.org/x/tools v0.1.10 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
replace github.com/ledgerwatch/interfaces => ./interfaces
