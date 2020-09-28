name 'ymir-base'
maintainer 'Daniel Bright'
maintainer_email 'dbright@chef.io'
license 'Apache-2.0'
description 'Installs/Configures ymir-base'
version '0.1.1'
chef_version '>= 15.0'

depends 'audit'
depends 'os-hardening'
depends 'ntp'
depends 'attributes-loader'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/ymir-base/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/ymir-base'
