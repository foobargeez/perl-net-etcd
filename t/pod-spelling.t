use strict;
use warnings;
use Test::More;

unless ( $ENV{RELEASE_TESTING} ) {
    plan( skip_all => "Author tests not required for installation" );
}

eval "use Test::Spelling";
plan skip_all => "Test::Spelling required" if $@;
add_stopwords(<DATA>);
all_pod_files_spelling_ok();

__END__
Etcd
etcd
auth
etcdctl
serializable
ssl
sku
KV
RPC
WatchResponse
AuthenticateRequest
DeleteRangeRequest
ErrCompaction
PutRequest
RangeRequest
DeleteRange
deleterange
greyskull
heman
linearizable
api
Batschelet
hexfusion
