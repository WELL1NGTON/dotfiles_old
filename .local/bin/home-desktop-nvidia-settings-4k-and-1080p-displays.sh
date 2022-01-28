#!/bin/bash
s="$(nvidia-settings -q CurrentMetaMode -t)"

if [[ "${s}" != ""  ]]; then
      s="${s#*" :: "}"
        nvidia-settings -a CurrentMetaMode="DPY-0: nvidia-auto-select @1920x1080 +0+360 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}, DPY-1: nvidia-auto-select @2560x1440 +1920+0 {Transform=(0.666656,0.000000,0.000000,0.000000,0.666656,0.000000,0.000000,0.000000,1.000000), ViewPortIn=2560x1440, ViewPortOut=3840x2160+0+0, ResamplingMethod=Bilinear, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}"
fi

