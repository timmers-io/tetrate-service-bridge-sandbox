output "ingress_ip" {
  value = module.tsb_mp.ingress_ip
}

output "ingress_hostname" {
  value = module.tsb_mp.ingress_hostname
}

output "fqdn" {
  value = local.tetrate.fqdn
}

output "tsb_cacert" {
  value     = module.tsb_mp.tsb_cacert
  sensitive = true
}

output "es_ip" {
  value = module.es.es_ip
}

output "es_hostname" {
  value = module.es.es_hostname
}

output "es_username" {
  value = module.es.es_username
}

output "es_password" {
  value     = module.es.es_password
  sensitive = true
}

output "es_cacert" {
  value     = module.es.es_cacert
  sensitive = true
}

output "registry" {
  value = data.terraform_remote_state.infra.outputs.registry
}

output "tsb_password" {
  value     = module.tsb_mp.password
  sensitive = true
}
