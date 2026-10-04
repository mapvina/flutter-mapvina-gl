# flutter-mapvina-gl: verification 04/10/2026

**Status: PUBLIC PACKAGE INTEGRATION BLOCKED.**

pub.dev packages are `1.0.1`; main source mapvina_gl pubspec is `1.0.0`.

Source baseline: `12328a452a616fa6f6e7a390f0aec726f225ae64` (`origin/main` plus the sample/doc changes in this PR).

Audit only: no SDK API/version changes, tags, publishing or main merge.

## Source khác package public

Không lấy version trong source main làm latest trên pub.dev. Public integration
được thử trong Flutter documentation sample với `mapvina_gl: 1.0.1`.
Pub get PASS; Android bị chặn ở Kotlin DSL của url_launcher_android, iOS bị chặn
ở `import MapVina` trong wrapper public. Chưa đến runtime nên API key/logo chưa
được tái kiểm hôm nay. Lỗi API key tháng 9 chỉ là lịch sử cần điều tra tiếp.

Root README trước audit là symlink trỏ tới `maplibre_gl/README.md` không tồn tại;
được thay bằng index dẫn tới tài liệu package hiện hữu. Package code, version,
API và manifests release không được sửa trong PR này. Các API snippets vẫn là
tham khảo, chưa phải golden path production. Wrapper source tests: NOT TESTED.

## Evidence and acceptance boundary

[Cross-repository artifact and runtime audit](https://github.com/mapvina/mapvina-document-android/blob/codex/docs-verification-20261004/docs/verification/2026-10-04/README.md).

PASS applies only to the named checks. BLOCKED is a reproduced failure; NOT TESTED is not a pass.

## Separate follow-up

[Reproduced blocker issue](https://github.com/mapvina/flutter-mapvina-gl/issues/33). SDK/infra fixes are outside this PR.
