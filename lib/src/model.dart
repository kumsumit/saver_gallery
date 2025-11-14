import 'dart:io';
import 'dart:typed_data';

/// A class representing image data for batch save operations.
class SaveImageData {
  final Uint8List bytes;
  final String fileName;
  final String? extension;
  final String? androidRelativePath;

  SaveImageData({
    required this.bytes,
    required this.fileName,
    this.androidRelativePath,
    this.extension,
  });
}

/// A class representing file data for batch save operations.
class SaveFileData {
  final String filePath;
  final String fileName;
  final String? androidRelativePath;

  SaveFileData({
    required this.filePath,
    required this.fileName,
    this.androidRelativePath,
  });

  /// Creates a [SaveFileData] instance from a [File] object.
  factory SaveFileData.fromFile(
    File file, {
    String? androidRelativePath,
  }) {
    return SaveFileData(
      filePath: file.path,
      fileName: file.uri.pathSegments.last,
      androidRelativePath: androidRelativePath,
    );
  }
}

/// A class representing the result of a save operation.
class SaveResult {
  final bool isSuccess;
  final String? errorMessage;

  SaveResult(this.isSuccess, this.errorMessage);

  /// Creates a [SaveResult] from a map.
  factory SaveResult.fromMap(Map<String, dynamic> json) {
    return SaveResult(json['isSuccess'], json['errorMessage']);
  }

  @override
  String toString() {
    return 'SaveResult{isSuccess: $isSuccess, errorMessage: $errorMessage}';
  }
}
