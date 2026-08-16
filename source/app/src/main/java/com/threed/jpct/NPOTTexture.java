package com.threed.jpct;

public class NPOTTexture extends Texture {
    private static final long serialVersionUID = 1;

    public NPOTTexture(int i10, int i11, RGBColor rGBColor) {
        super(i10, i11, rGBColor, true);
        this.nPot = true;
    }
}
