package com.ardor3d.image;

public enum ImageDataFormat {
    RGB(3, false, false),
    RGBA(4, false, true),
    BGR(3, false, false),
    BGRA(4, false, true),
    Luminance(1, false, false),
    LuminanceAlpha(2, false, true),
    Alpha(1, false, true),
    Intensity(1, false, false),
    Red(1, false, false),
    Green(1, false, false),
    Blue(1, false, false),
    StencilIndex(1, false, false),
    ColorIndex(1, false, false),
    Depth(1, false, false),
    PrecompressedDXT1(1, true, false),
    PrecompressedDXT1A(1, true, true),
    PrecompressedDXT3(2, true, true),
    PrecompressedDXT5(2, true, true),
    PrecompressedLATC_L(1, true, true),
    PrecompressedLATC_LA(2, true, true);

    private final int _components;
    private final boolean _compressed;
    private final boolean _hasAlpha;

    ImageDataFormat(int i10, boolean z10, boolean z11) {
        this._components = i10;
        this._compressed = z10;
        this._hasAlpha = z11;
    }

    public int getComponents() {
        return this._components;
    }

    public boolean hasAlpha() {
        return this._hasAlpha;
    }

    public boolean isCompressed() {
        return this._compressed;
    }
}
