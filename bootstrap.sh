#!/usr/bin/env bash
# Rejouable : KoA le relance à chaque reprovisionnement. Ne journalise jamais la valeur d'un secret.
set -euo pipefail
[ -f "$HOME/.agent-env" ] && source "$HOME/.agent-env"
{
  echo "bootstrap : distro=${WSL_DISTRO_NAME:-?} utilisateur=$(whoami)"
  # Docker sans root est démarré par le socle ; on l'attend un peu, sans bloquer le bootstrap.
  for _ in $(seq 1 15); do docker info >/dev/null 2>&1 && break; sleep 2; done
  if docker info >/dev/null 2>&1; then
    # Image qui sert la page : la tirer d'avance accélère le premier `docker build`.
    docker pull nginx:alpine >/dev/null || echo "avertissement : nginx:alpine non tiré"
  else
    echo "avertissement : démon Docker indisponible, pull ignoré"
  fi
  echo "node=$(node --version) docker=$(docker --version 2>/dev/null || echo absent)"
} 2>&1 | tee "$HOME/bootstrap.log"
