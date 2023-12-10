{{ if (eq .chezmoi.os "darwin" "linux") -}}
#!/bin/bash
#. ./.profile
set -eu

echo "***********************************"
echo "** Install TPM"
echo "***********************************"

# Install tpm
#[ -d $XDG_CONFIG_HOME/tmux/plugins/tpm ] || git clone https://github.com/tmux-plugins/tpm $XDG_CONFIG_HOME/tmux/plugins/tpm
{{- end }}