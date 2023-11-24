output "client_id" {
  description = "The Client ID for the application."
  value       = azuread_application.tfc_application.client_id
}