module github.com/apache/camel-k

go 1.16

require (
	github.com/Masterminds/semver v1.5.0
	github.com/apache/camel-k/pkg/apis/camel v0.0.0
	github.com/apache/camel-k/pkg/client/camel v0.0.0
	github.com/apache/camel-k/pkg/kamelet/repository v0.0.0
	github.com/container-tools/spectrum v0.3.8
	github.com/evanphx/json-patch v4.12.0+incompatible
	github.com/fatih/camelcase v1.0.0
	github.com/fatih/structs v1.1.0
	github.com/gertd/go-pluralize v0.2.0
	github.com/go-logr/logr v1.4.2
	github.com/google/go-github/v32 v32.1.0
	github.com/google/uuid v1.3.0
	github.com/jpillora/backoff v1.0.0
	github.com/magiconair/properties v1.8.6
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mitchellh/mapstructure v1.4.3
	github.com/onsi/gomega v1.32.0
	github.com/openshift/api v3.9.1-0.20190927182313-d4a64ec2cbd8+incompatible
	github.com/operator-framework/api v0.13.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus-operator/prometheus-operator/pkg/apis/monitoring v0.75.1
	github.com/prometheus/client_golang v1.16.0
	github.com/prometheus/client_model v0.4.0
	github.com/prometheus/common v0.44.0
	github.com/radovskyb/watcher v1.0.7
	github.com/redhat-developer/service-binding-operator v1.0.1
	github.com/rs/xid v1.4.0
	github.com/scylladb/go-set v1.0.2
	github.com/shurcooL/httpfs v0.0.0-20190707220628-8d4bc4ba7749
	github.com/shurcooL/vfsgen v0.0.0-20181202132449-6a9ea43bcacd
	github.com/sirupsen/logrus v1.9.0
	github.com/spf13/cobra v1.7.0
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.11.0
	github.com/stoewer/go-strcase v1.2.0
	github.com/stretchr/testify v1.8.4
	go.uber.org/automaxprocs v1.4.0
	go.uber.org/multierr v1.11.0
	go.uber.org/zap v1.26.0
	golang.org/x/oauth2 v0.12.0
	golang.org/x/sync v0.7.0
	golang.org/x/term v0.21.0
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.30.2
	k8s.io/apiextensions-apiserver v0.30.2
	k8s.io/apimachinery v0.30.2
	k8s.io/cli-runtime v0.22.5
	k8s.io/client-go v0.30.2
	k8s.io/gengo v0.0.0-20211129171323-c02415ce4185
	k8s.io/klog/v2 v2.130.1
	k8s.io/kubectl v0.22.5
	k8s.io/utils v0.0.0-20240502163921-fe8a2dddb1d0
	knative.dev/eventing v0.29.0
	knative.dev/pkg v0.0.0-20220118160532-77555ea48cd4
	knative.dev/serving v0.29.0
	sigs.k8s.io/controller-runtime v0.18.4
)

replace (
	github.com/docker/docker => github.com/moby/moby v0.7.3-0.20190826074503-38ab9da00309 // Required by Helm
	github.com/go-logr/logr => github.com/go-logr/logr v0.4.0
	k8s.io/klog/v2 => k8s.io/klog/v2 v2.9.0
)

// Using a fork that removes the HTTPS ping before using HTTP for insecure registries (for Spectrum)
replace github.com/google/go-containerregistry => github.com/container-tools/go-containerregistry v0.7.1-0.20211124090132-40ccc94a466b

// Local modules
replace (
	github.com/apache/camel-k/pkg/apis/camel => ./pkg/apis/camel
	github.com/apache/camel-k/pkg/client/camel => ./pkg/client/camel
	github.com/apache/camel-k/pkg/kamelet/repository => ./pkg/kamelet/repository
)
