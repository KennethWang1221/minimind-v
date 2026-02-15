cd ./model/vision_model
git clone https://huggingface.co/openai/clip-vit-base-patch16
cd ../../
cd ./out
https://huggingface.co/jingyaogong/MiniMind2-V-PyTorch/blob/main/llm_512.pth # or llm_768.pth
git clone git@hf.co:jingyaogong/MiniMind2-V-PyTorch
cd out 
ln -s ../MiniMind2-V-PyTorch/* . 
cd ../
uv pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
git clone https://huggingface.co/jingyaogong/MiniMind2-V
git clone git@hf.co:datasets/jingyaogong/minimind-v_dataset
cd dataset
ln -s ../minimind-v_dataset/* . 
cd ../

