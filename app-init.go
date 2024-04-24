package main

//go:generate go run app-init.go

import instanceGen "github.com/skeletonkey/lib-instance-gen-go/app"

func main() {
	app := instanceGen.NewApp("bank-the-cold", "app")
	app.WithGoVersion("1.22").
		WithPackages("logger", "server", "cli").
		WithDependencies(
			"github.com/grpc/grpc-go",
		).
		WithGithubWorkflows("linter", "test").
		WithMakefile()
}
