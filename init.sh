#!/bin/bash
cat > cloud_config << EOF
#cloud-config
ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdO8SSqbinJxdNMaJQ+ji7y1rNyYgHVKCTCC8dumEmQjqc4Dc9GCXH8qpxWOLdWA1gpWyanVUYuSE0uxSEgY7kGy35bYrTt7RQkBjFCfzlnf4A1g7iHpt/+Zuiz1ALxG4fxj2dj7vbKy26ACKaomuUVsfn/o7mKhO/7El/mlkcf/HXBUboZRX3AaA9l8bDxsgxqHxSYtoaf+5P1mz9/pDR4sXhOgyjPs9c27lIYe8LSchPGKadQKtYULyaJs8AN+av2lAGs6px7Pj7Darxm35rzYFQEJTQO/PR0YfGzGVwAgfUgys+k2Ac15BJhyhSKUq/p6YCwW2LlKOv98SIUZS32MimuORfaV3e9vjNMJ7udFhxxIm6FqPXGS39jCEF6QfJtK0lrXvNrSI4z+ETHsY74o5MZfimNb9OWOuCJDhpjOBdYQ2j2IsPGRmO+LksFWpg30gi/kr+LpBCWROZjDNnp63M5wIL/stou9NSt3mk0QuXW8TajlMgZjm8aEHMl0dfH3aCASyYbdsg3RX32ieVvgoMdJSD4lT+n/DgWZDnF51IkJqUvzpkSMwc2P8gHf8ScBssXi1bPdDckMp3dFMRB/wNOYASEN5odgXSow3Zhb6mkSd/VyHVsZiDr4BeMYGem81r281l/YWZ5GpwpMuvo+SyOpQmJLdXR30z/IjiWw== szurborg@yahoo.com

hostname: ps-kube-node-$1
EOF
ros install -c cloud_config -d /dev/sda

