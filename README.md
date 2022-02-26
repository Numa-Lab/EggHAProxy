# Pterodactyl用Egg Java版リバースプロキシ

## 使用法
1. PterodactylのパネルでEggのインポートを選びます (BASIC ADMINISTRATION > Nests > Import Egg)
2. [egg-haproxy.json](/egg-haproxy.json) をインポートします
3. Eggを使用してサーバーを作成します
4. 必要に応じてFile Managerで [/haproxy/haproxy.cfg](/haproxy/haproxy.cfg) を編集します
5. サーバーを起動します

## ビルド手順
1. `git clone https://github.com/Numa-Lab/EggHAProxy.git .`
2. `sudo docker build -t ghcr.io/numa-lab/docker-haproxy .`

### 公開手順
1. [ログイン手順](https://qiita.com/zembutsu/items/1effae6c39ceae3c3d0a)に従って GitHub Container Registry にログインする
2. `sudo docker push ghcr.io/numa-lab/docker-haproxy` で公開

## haproxy.cfg 及び Dockerfile 編集時の注意点

改行コードがLFに設定されていることを確認してください。  
![改行コードがLF](https://i.gyazo.com/b6b16545db760b583d458a94e29c273a.png)  

誤って改行コードCRLFに設定されていると読み込み時に
```
cd /home/container\r
```
となる場合があるため注意！