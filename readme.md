# mecab-ipadic-neologd-dic-creator

## これは？
mecab-ipadic-neologdの最新の辞書をbuildし圧縮してAWS S3へアップロードするDockerイメージ

## 環境変数

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION
- AWS_S3_BUCKET アップロード先バケット
- TARGET_FILENAME アップロード時ファイル名 (拡張子は.tar.gzで)