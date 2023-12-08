resource "cloudflare_record" "terraform_managed_resource_cname_0" {
  name    = "example"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "example-blog.netlify.app"
  zone_id = var.zone_id
}
