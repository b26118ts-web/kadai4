#!/bin/bash

# 1. 引数の数が2つかチェック
if [ $# -ne 2 ]; then
    echo "エラー: 2つの数値を入力してください。"
    exit 1
fi

# 2. 引数が両方とも「正の整数（自然数）」かチェック（正規表現を使用）
# ^[0-9]+$ = 数字だけで構成されているか
if [[ ! $1 =~ ^[0-9]+$ ]] || [[ ! $2 =~ ^[0-9]+$ ]]; then
    echo "エラー: 引数には自然数（数字）を入力してください。"
    exit 1
fi

A=$1
B=$2
NUM1=$A
NUM2=$B

while [ $B -ne 0 ]
do
    REMAINDER=$((A % B))
    A=$B
    B=$REMAINDER
done

echo "${NUM1} と ${NUM2} の最大公約数は: ${A}"
