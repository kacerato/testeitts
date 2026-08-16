package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap;

import JAVARuntime.Texture;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import ub.p;

public abstract class MatcapBinder extends ShaderBinder {
    public abstract void A0(Texture matcap);

    public abstract void B0(String selectedPreset);

    public void z0(String matcapName, p texture) {
        B0(matcapName);
        if (texture != null) {
            A0(texture.p0());
        } else {
            A0(null);
        }
    }
}
