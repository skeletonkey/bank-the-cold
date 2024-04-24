// lib-instance-gen-go: File auto generated -- DO NOT EDIT!!!
package cli

import "github.com/skeletonkey/lib-core-go/config"

var cfg *cli

func getConfig() *cli {
	config.LoadConfig("cli", &cfg)
	return cfg
}
