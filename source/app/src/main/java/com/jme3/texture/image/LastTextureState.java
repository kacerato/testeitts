package com.jme3.texture.image;

import com.jme3.texture.Texture;

public final class LastTextureState {
    public int anisoFilter;
    public Texture.MagFilter magFilter;
    public Texture.MinFilter minFilter;
    public boolean minFilterMipmapsAvailable;
    public Texture.WrapMode rWrap;
    public Texture.WrapMode sWrap;
    public Texture.ShadowCompareMode shadowCompareMode;
    public Texture.WrapMode tWrap;

    public LastTextureState() {
        reset();
    }

    public void reset() {
        this.sWrap = null;
        this.tWrap = null;
        this.rWrap = null;
        this.magFilter = null;
        this.minFilter = null;
        this.minFilterMipmapsAvailable = false;
        this.anisoFilter = 1;
        this.shadowCompareMode = Texture.ShadowCompareMode.Off;
    }
}
