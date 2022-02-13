resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.region
  uniform_bucket_level_access = true

  force_destroy = var.force_destroy

  labels = {
    env = var.environment
  }

  lifecycle {
    prevent_destroy = false
  }

  versioning {
    enabled = true
  }
}

resource "google_storage_bucket_iam_binding" "editor" {
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.objectAdmin"
  members = var.editor_accounts
}

resource "google_storage_bucket_iam_binding" "reader" {
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.objectViewer"
  members = var.reader_accounts
}