DIR=prox_qualitative
IDX=1
echo ${DIR}
cd ./detection/
conda activate robust_cvd
python test_det_pointrend.py \
	--img-root=${DIR} \
  --out-img-root=${DIR}_pointrend_X_101_det_all \
	--width=1920 \
	--height=1080 \
	--bbox-thr 0.55 \
	--save \
	--show \
	--idx=IDX

cd ..
