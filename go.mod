module github.com/docker/docker/v17

go 1.12

require (
	cloud.google.com/go v0.43.0
	cloud.google.com/go/logging v1.0.0
	github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78
	github.com/BurntSushi/toml v0.3.1
	github.com/Graylog2/go-gelf v0.0.0-20171211094031-414364622654
	github.com/Microsoft/go-winio v0.4.14
	github.com/Microsoft/hcsshim v0.8.5
	github.com/Microsoft/opengcs v0.0.0-20190304234800-a10967154e14
	github.com/RackSec/srslog v0.0.0-20180709174129-a4725f04ec91
	github.com/aws/aws-sdk-go v1.22.1
	github.com/bsphere/le_go v0.0.0-20170215134836-7a984a84b549
	github.com/cloudflare/cfssl v0.0.0-20180323000720-5d63dbd981b5
	github.com/containerd/cgroups v0.0.0-20191108182539-4baafdb2bf45
	github.com/containerd/containerd v1.3.0-0.20190507210959-7c1e88399ec0
	github.com/containerd/continuity v0.0.0-20190426062206-aaeac12a7ffc
	github.com/containerd/fifo v0.0.0-20190226154929-a9fb20d87448
	github.com/containerd/typeurl v0.0.0-20190228175220-2a93cfde8c20
	github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e // v17
	github.com/creack/pty v1.1.7
	github.com/docker/distribution v2.7.1-0.20190205005809-0d3efadf0154+incompatible
	github.com/docker/docker v1.14.0-0.20190319215453-e7b5f7dbe98c
	github.com/docker/go-connections v0.4.0
	github.com/docker/go-metrics v0.0.1
	github.com/docker/go-units v0.4.0
	github.com/docker/libkv v0.0.0-20180912205406-458977154600

	// When updating, also update LIBNETWORK_COMMIT in hack/dockerfile/install/proxy.installer accordingly
	// See also the replace line below.
	github.com/docker/libnetwork v0.8.0-dev.2.0.20190826164827-3c26b4e7495e
	github.com/docker/libtrust v0.0.0-20150526203908-9cbd2a1374f4
	github.com/docker/swarmkit v0.0.0-20190717134425-7dded76ec532
	github.com/fluent/fluent-logger-golang v1.4.0
	github.com/fsnotify/fsnotify v1.4.7
	github.com/gogo/protobuf v1.2.1
	github.com/golang/gddo v0.0.0-20180130204405-9b12a26f3fbd
	github.com/google/go-cmp v0.3.1
	github.com/google/uuid v1.1.1
	github.com/gorilla/mux v1.7.2
	github.com/hashicorp/go-immutable-radix v1.0.0
	github.com/hashicorp/go-memdb v0.0.0-20180223233045-1289e7fffe71
	github.com/imdario/mergo v0.3.7
	github.com/mattn/go-shellwords v1.0.5
	github.com/mistifyio/go-zfs v0.0.0-20190413222219-f784269be439
	github.com/moby/buildkit v0.6.1
	github.com/morikuni/aec v0.0.0-20170113033406-39771216ff4c
	github.com/opencontainers/go-digest v1.0.0-rc1
	github.com/opencontainers/image-spec v1.0.1
	github.com/opencontainers/runc v1.0.0-rc8
	github.com/opencontainers/runtime-spec v0.1.2-0.20190507144316-5b71a03e2700
	github.com/opencontainers/selinux v1.2.2
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v1.1.0
	github.com/seccomp/libseccomp-golang v0.9.1
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/cobra v0.0.3
	github.com/spf13/pflag v1.0.3
	github.com/syndtr/gocapability v0.0.0-20180916011248-d98352740cb2
	github.com/tchap/go-patricia v2.3.0+incompatible
	github.com/tonistiigi/fsutil v0.0.0-20190327153851-3bbb99cdbd76
	github.com/vbatts/tar-split v0.11.1
	github.com/vishvananda/netlink v1.0.0
	go.etcd.io/bbolt v1.3.3
	golang.org/x/net v0.0.0-20191002035440-2ec189313ef0
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/sys v0.0.0-20190924154521-2837fb4f24fe
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
	google.golang.org/genproto v0.0.0-20190927181202-20e1ac93f88c
	google.golang.org/grpc v1.24.0
	gotest.tools v2.2.0+incompatible
)

// TODO: once libnetwork supports Modules remove the libnetwork and sctp lines.
replace (
	github.com/Microsoft/hcsshim => github.com/Microsoft/hcsshim v0.0.0-20190417141021-672e52e9209d
	github.com/coreos/go-systemd => github.com/coreos/go-systemd v0.0.0-20180511133405-39ca1b05acc7 // v17

	// This is a bit jank, but we don't want to import a different version of
	// ourself because we're not using a /v17 suffix.
	github.com/docker/docker => ./

	github.com/docker/libnetwork => github.com/docker/libnetwork v0.0.0-20190826164827-92d1fbe1eb08
	// github.com/docker/libnetwork => github.com/docker/libnetwork v0.0.0-20190726130434-09cdcc8c0eab
	github.com/hashicorp/go-immutable-radix => github.com/tonistiigi/go-immutable-radix v0.0.0-20170803115627-826af9ccf0fe
	github.com/ishidawataru/sctp => github.com/ishidawataru/sctp v0.0.0-20180918013207-6e2cb1366111
	github.com/moby/buildkit => github.com/moby/buildkit v0.0.0-20190819135608-588c73e1e4f0
)

// DO NOT EDIT BELOW THIS LINE -------- reserved for downstream projects --------

// additional dependencies as a result of our single-binary approach
require (
	github.com/urfave/cli                               cfb38830724cc34fedffe9a2a29fb54fa9169cd1 // v1.20.0
	github.com/mrunalp/fileutils                        7d4729fb36185a7c1719923406c9d40e54fb93c7
	github.com/checkpoint-restore/go-criu               17b0214f6c48980c45dc47ecb0cfd6d9e02df723 // v3.11
	github.com/cyphar/filepath-securejoin               a261ee33d7a517f054effbf451841abaafe3e0fd // v0.2.2
	github.com/containerd/aufs                          f894a800659b6e11c1a13084abd1712f346e349c
	github.com/docker/docker-credential-helpers         54f0238b6bf101fc3ad3b34114cb5520beb562f5 // v0.6.3
	github.com/agl/ed25519                              5312a61534124124185d41f09206b9fef1d88403
	github.com/xeipuuv/gojsonpointer                    4e3ac2762d5f479393488629ee9370b50873b3a6
	github.com/xeipuuv/gojsonreference                  bd5ef7bd5415a7ac448318e64f11a24cd21e594b
	github.com/xeipuuv/gojsonschema                     93e72a773fade158921402d6a24c819b48aba29d
	github.com/mitchellh/mapstructure                   f15292f7a699fcc1a38a80977f80a046874ba8ac
	github.com/theupdateframework/notary                d6e1431feb32348e0650bf7551ac5cffd01d857b // v0.6.1
	github.com/hashicorp/go-version                     23480c0665776210b5fbbac6eaaee40e3e6a96b7
	github.com/jaguilar/vt100                           ad4c4a5743050fb7f88ce968dca9422f72a0e3f2 https://github.com/tonistiigi/vt100
	github.com/tonistiigi/units                         6950e57a87eaf136bbe44ef2ec8e75b9e3569de2
	gopkg.in/yaml.v2                                    bb4e33bf68bf89cad44d386192cbed201f35b241 // v2.2.3
	vbom.ml/util                                        256737ac55c46798123f754ab7d2c784e2c71783
	github.com/docker/go                                d30aec9fd63c35133f8f79c3412ad91a3b08be06 // Contains a customized version of canonical/json and is used by Notary. The package is periodically rebased on current Go versions.
)
replace (
	github.com/jaguilar/vt100 => github.com/tonistiigi/vt100 ad4c4a5743050fb7f88ce968dca9422f72a0e3f2
)

// balena-engine dependencies
require (
	github.com/balena-os/librsync-go 7457649327d3c2d2e7b7880ea239a03b1b28f7b4
	github.com/balena-os/circbuf     56e73111d0b216a0157b0122dbba22a6bcaba395
)
replace (
	github.com/containerd/containerd => github.com/balena-os/balena-containerd 41397e3f34baa02b43ff4777adb6ea1fcab1ea07
	github.com/opencontainers/runc   => github.com/balena-os/balena-runc a1c6a79d410585c0a0cf68e711352015c1b92f4d
	github.com/docker/libnetwork     => github.com/balena-os/balena-libnetwork 21ccc1c706422e973c42f876f7ed377d993387a1
	github.com/docker/cli            => github.com/balena-os/balena-engine-cli 81f0b4cfcc32ab316fb2a5dc8130f3e45d89658e
)
