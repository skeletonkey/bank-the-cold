build-protoc:
	protoc --go_out=. \
		--go_opt=module=github.com/skeletonkey/bank-the-cold \
		--go-grpc_out=. \
		--go-grpc_opt=module=github.com/skeletonkey/bank-the-cold \
		proto/dummy/v1/dummy.proto