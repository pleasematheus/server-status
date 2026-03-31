# Server Status

Script Bash simples para exibir um resumo rápido de uso do servidor no terminal.

## O que o script mostra

- Uso total de CPU
- Uso total de RAM
- Uso de disco por particoes montadas em `/dev`
- Top 5 processos por uso de CPU
- Top 5 processos por uso de RAM

## Requisitos

- Linux (ou WSL no Windows)
- Bash
- Comandos disponiveis no sistema:
  - `top`
  - `free`
  - `df`
  - `ps`
  - `grep`
  - `awk`
  - `sed`

## Como executar

1. Dê permissao de execucao ao arquivo:

```bash
chmod +x server-status.sh
```

2. Execute o script:

```bash
./server-status.sh
```

Ou, se preferir:

```bash
bash server-status.sh
```

## Exemplo de saida

```text
+---------------+
| Server Status |
+---------------+

Total CPU Usage:
17.3%
=================

Total RAM Usage
42.8%
=================

Total Disk Usage
30%
75%
=================

Top 5 CPU Processes
root 1 0.0 0.1 /sbin/init ...
=================

Top 5 RAM Processes
ubuntu 1234 2.1 1.8 /usr/bin/node ...
=================
```

## Observacoes

- O script foi escrito para ambientes Unix-like.
- Em Windows nativo, rode pelo WSL para ter os comandos necessarios.
- A saida de processos atualmente e impressa em uma unica linha; isso pode ser melhorado em uma proxima versao para facilitar leitura.

## Melhorias futuras (sugestões)

- Exibir top processos com quebra de linha preservada
- Adicionar timestamp na coleta
- Exportar resultado para arquivo de log
- Permitir numero de processos como parametro