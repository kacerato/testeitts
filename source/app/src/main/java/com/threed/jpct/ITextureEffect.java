package com.threed.jpct;

public interface ITextureEffect {
    void apply(int[] iArr, int[] iArr2);

    boolean containsAlpha();

    void init(Texture texture);
}
