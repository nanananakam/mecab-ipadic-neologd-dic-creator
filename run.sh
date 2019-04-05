#!/usr/bin/env bash

git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
cd mecab-ipadic-neologd
./bin/install-mecab-ipadic-neologd -n -a -y -u
tar cvzf mecab-ipadic-neologd.tar.gz `mecab-config --dicdir`/mecab-ipadic-neologd
aws s3 cp mecab-ipadic-neologd.tar.gz s3://${AWS_S3_BUCKET}/${TARTGET_FILENAME}
