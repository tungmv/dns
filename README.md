# dns

A small macOS command-line utility to switch DNS servers.

## Install

```sh
make install
```

This installs `dns` to `/usr/local/bin/dns`.

## Usage

```sh
dns 1       # Use 1.1.1.1 (Cloudflare) on all active services
dns 9       # Use 9.9.9.9 (Quad9) on all active services
dns 19      # Use both 1.1.1.1 + 9.9.9.9 on all active services
dns on      # Same as `dns 1`
dns on 1    # Use 1.1.1.1 (Cloudflare)
dns on 9    # Use 9.9.9.9 (Quad9)
dns on 19   # Use both 1.1.1.1 + 9.9.9.9
dns off     # Revert to DHCP-provided DNS
dns status  # Show current DNS per service
dns flush   # Flush the local DNS cache
dns         # Toggle — if any service uses 1.1.1.1 or 9.9.9.9, turn it off; otherwise turn it on
```

Setting DNS requires root, so the script re-execs itself with `sudo` when needed. The DNS cache is flushed automatically after a change.

## Requirements

- macOS
