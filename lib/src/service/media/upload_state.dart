// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum UploadState {
  /// It indicates that upload is preparing.
  preparing,

  /// It indicates that upload is in progress.
  inProgress,

  /// It indicates that upload is completed.
  completed,
}

extension UploadStateExtension on UploadState {
  static UploadState valueOf(final String value) {
    switch (value) {
      case 'in_progress':
        return UploadState.inProgress;
      case 'succeeded':
        return UploadState.completed;
      default:
        throw UnsupportedError('Unsupported state [$value] is passed.');
    }
  }
}
