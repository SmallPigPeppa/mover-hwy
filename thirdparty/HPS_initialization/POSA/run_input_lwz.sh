conda activate POSA
export PYTHONPATH=/share/wenzhuoliu/code/mover-hwy/thirdparty/HPS_initialization/POSA
# input $1: the directory contains the pkl files which stores the smplx parameters.
smplfx_out=/share/wenzhuoliu/code/mover-hwy/modified_smplifyx/results
export POSA_dir=/share/wenzhuoliu/code/mover-hwy/thirdparty/HPS_initialization/POSA_dir
pkl_file_path=${smplfx_out}/split
# pkl_file_path=$2/split
rand_samples_dir=${smplfx_out}/posa_render_results
save_dir=${smplfx_out}/posa_contact_npy_newBottom

python src/gen_rand_samples.py \
    --config cfg_files/contact.yaml \
    --checkpoint_path ${POSA_dir}/trained_models/contact.pt \
    --pkl_file_path ${pkl_file_path} \
    --render 1 \
    --num_rand_samples 1 \
    --save 1 \
    --rand_samples_dir ${rand_samples_dir} \
    --save_dir ${save_dir}
