#  Migration Hyper‑V vers Microsoft Azure (Projet complet)

Ce dépôt contient l’infrastructure, les scripts, les pipelines CI/CD et la documentation pour migrer des VMs Hyper‑V vers Azure dans un environnement hybride avec VPN site‑à‑site, en conservant les adresses IP internes et en respectant les contraintes réseau.

##  Objectifs
- Migrer les VMs Hyper‑V vers Azure avec un minimum d’interruption.
- Conserver les IP internes ou les réassigner proprement.
- Maintenir la connectivité via VPN site‑à‑site.
- Standardiser l’infrastructure (hub‑and‑spoke, NSG, Log Analytics).
- Automatiser le déploiement (Terraform, pipelines).
- Automatiser la migration (scripts PowerShell + Azure Migrate).

##  Architecture
- Hub VNet (VPN Gateway, Firewall, Bastion)
- Spoke VNet (VMs migrées)
- Peering Hub ↔ Spoke
- Log Analytics Workspace
- NSG par sous‑réseau
- Azure Migrate + Site Recovery

##  Documentation
Voir le dossier `/docs` pour :
- Plan de migration
- Checklist cutover
- Plan de rollback
- Tests de connectivité
- Templates de readiness VM

##  Automatisation
- Terraform pour l’infrastructure Azure
- GitHub Actions / Azure DevOps pour CI/CD
- Scripts PowerShell pour Hyper‑V et Azure Migrate

##  Contact
Projet maintenu par l’équipe Infrastructure et Cloud.
