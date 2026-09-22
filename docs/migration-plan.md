\# Plan de migration Hyper‑V vers Azure



\## Phases

1\. Inventaire \& analyse (scripts Hyper‑V).

2\. Déploiement infra Azure (Terraform + pipelines).

3\. Enregistrement Azure Migrate / Site Recovery.

4\. Réplication des VMs.

5\. Tests de migration (VMs en Azure, VPN, IP, applicatif).

6\. Cutover (bascule définitive).

7\. Post‑migration (backup, monitoring, hardening).



Chaque VM doit avoir un fichier basé sur `vm-readiness-template.md`.



