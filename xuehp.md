
date: 2020/4/24 1:23 下午 

也是要用CUDA

还必须要用CUDA10

```
(env) xuehp@haomeiya003:~/git/nlg-sclstm-multiwoz$ sh train.sh 
Processing data...
***** DATA INFO *****
Using 100% of training data
BATCH SIZE: 256
Train: 25980 turns
Valid: 3128 turns
Test: 3113 turns
# of turns
Train: 25980
Valid: 3128
Test: 3113
# of batches: Train 101 Valid 12 Test 12
# of batches: Train 101 Valid 12 Test 12
*************************

Using deep version with 1 layer
Using deep version with 1 layer
Using sclstm as decoder with module list!
Traceback (most recent call last):
  File "run_woz3.py", line 327, in <module>
    train(config, args)
  File "run_woz3.py", line 236, in train
    dataset, model = read(config, args, args.mode)
  File "run_woz3.py", line 201, in read
    model = LM_deep('sclstm', vocab_size, vocab_size, hidden_size, d_size, n_layer=n_layer, dropout=dropout, lr=lr)
  File "/home/xuehp/git/nlg-sclstm-multiwoz/model/lm_deep.py", line 19, in __init__
    self.dec = DecoderDeep(dec_type, input_size, output_size, hidden_size, d_size=d_size, n_layer=n_layer, dropout=dropout)
  File "/home/xuehp/git/nlg-sclstm-multiwoz/model/layers/decoder_deep.py", line 32, in __init__
    self.w2h.append( nn.Linear(input_size, hidden_size*4).cuda() )
  File "/home/xuehp/git/nlg-sclstm-multiwoz/env/lib/python3.5/site-packages/torch/nn/modules/module.py", line 307, in cuda
    return self._apply(lambda t: t.cuda(device))
  File "/home/xuehp/git/nlg-sclstm-multiwoz/env/lib/python3.5/site-packages/torch/nn/modules/module.py", line 225, in _apply
    param_applied = fn(param)
  File "/home/xuehp/git/nlg-sclstm-multiwoz/env/lib/python3.5/site-packages/torch/nn/modules/module.py", line 307, in <lambda>
    return self._apply(lambda t: t.cuda(device))
  File "/home/xuehp/git/nlg-sclstm-multiwoz/env/lib/python3.5/site-packages/torch/cuda/__init__.py", line 149, in _lazy_init
    _check_driver()
  File "/home/xuehp/git/nlg-sclstm-multiwoz/env/lib/python3.5/site-packages/torch/cuda/__init__.py", line 63, in _check_driver
    of the CUDA driver.""".format(str(torch._C._cuda_getDriverVersion())))
AssertionError: 
The NVIDIA driver on your system is too old (found version 10010).
Please update your GPU driver by downloading and installing a new
version from the URL: http://www.nvidia.com/Download/index.aspx
Alternatively, go to: https://pytorch.org to install
a PyTorch version that has been compiled with your version
of the CUDA driver.
(env) xuehp@haomeiya003:~/git/nlg-sclstm-multiwoz$ 
```