output "project_share_groups_id" {
  description = "Map of id values across all project_share_groups, keyed the same as var.project_share_groups except keys with no id are omitted"
  value       = { for k, v in gitlab_project_share_group.project_share_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_share_groups_expires_at" {
  description = "Map of expires_at values across all project_share_groups, keyed the same as var.project_share_groups except keys with no expires_at are omitted"
  value       = { for k, v in gitlab_project_share_group.project_share_groups : k => v.expires_at if v.expires_at != null && length(v.expires_at) > 0 }
}
output "project_share_groups_group_access" {
  description = "Map of group_access values across all project_share_groups, keyed the same as var.project_share_groups except keys with no group_access are omitted"
  value       = { for k, v in gitlab_project_share_group.project_share_groups : k => v.group_access if v.group_access != null && length(v.group_access) > 0 }
}
output "project_share_groups_group_id" {
  description = "Map of group_id values across all project_share_groups, keyed the same as var.project_share_groups except keys with no group_id are omitted"
  value       = { for k, v in gitlab_project_share_group.project_share_groups : k => v.group_id if v.group_id != null }
}
output "project_share_groups_project" {
  description = "Map of project values across all project_share_groups, keyed the same as var.project_share_groups except keys with no project are omitted"
  value       = { for k, v in gitlab_project_share_group.project_share_groups : k => v.project if v.project != null && length(v.project) > 0 }
}

