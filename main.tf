resource "gitlab_project_share_group" "project_share_groups" {
  for_each = var.project_share_groups

  group_access = each.value.group_access
  group_id     = each.value.group_id
  project      = each.value.project
  expires_at   = each.value.expires_at
}

