# rpi-pico-blink-d

Raspberry Pi Pico Lチカ D言語版

## 環境構築

(Raspberry Pi Pico SDKのQuick-start your own project)[https://github.com/raspberrypi/pico-sdk?tab=readme-ov-file#unix-command-line]を参照。

## ビルド方法

```sh
# ビルド用ディレクトリを作成して移動
$ mkdir build
$ cd build

# cmakeでMakefile生成
$ cmake ..

# make実行
$ make rpi_pico_blink_d

# build直下に rpi_pico_blink_d.uf2 が生成されている。
```
