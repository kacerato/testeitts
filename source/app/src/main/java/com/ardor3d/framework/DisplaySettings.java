package com.ardor3d.framework;

public class DisplaySettings {
    private final int _alphaBits;
    private final int _colorDepth;
    private final int _depthBits;
    private final int _frequency;
    private final boolean _fullScreen;
    private final int _height;
    private final int _samples;
    private final CanvasRenderer _shareContext;
    private final int _stencilBits;
    private final boolean _stereo;
    private final int _width;

    public DisplaySettings(int i10, int i11, int i12, int i13) {
        this._width = i10;
        this._height = i11;
        this._colorDepth = 0;
        this._frequency = 0;
        this._alphaBits = 0;
        this._depthBits = i12;
        this._stencilBits = 0;
        this._samples = i13;
        this._fullScreen = false;
        this._stereo = false;
        this._shareContext = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DisplaySettings displaySettings = (DisplaySettings) obj;
        return this._colorDepth == displaySettings._colorDepth && this._frequency == displaySettings._frequency && this._fullScreen == displaySettings._fullScreen && this._height == displaySettings._height && this._width == displaySettings._width && this._alphaBits == displaySettings._alphaBits && this._depthBits == displaySettings._depthBits && this._stencilBits == displaySettings._stencilBits && this._samples == displaySettings._samples && this._stereo == displaySettings._stereo;
    }

    public int getAlphaBits() {
        return this._alphaBits;
    }

    public int getColorDepth() {
        return this._colorDepth;
    }

    public int getDepthBits() {
        return this._depthBits;
    }

    public int getFrequency() {
        return this._frequency;
    }

    public int getHeight() {
        return this._height;
    }

    public int getSamples() {
        return this._samples;
    }

    public CanvasRenderer getShareContext() {
        return this._shareContext;
    }

    public int getStencilBits() {
        return this._stencilBits;
    }

    public int getWidth() {
        return this._width;
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this._height) * 31) + this._width) * 31) + this._colorDepth) * 31) + this._frequency) * 31) + this._alphaBits) * 31) + this._depthBits) * 31) + this._stencilBits) * 31) + this._samples) * 31) + (this._fullScreen ? 1 : 0)) * 31) + (this._stereo ? 1 : 0);
    }

    public boolean isFullScreen() {
        return this._fullScreen;
    }

    public boolean isStereo() {
        return this._stereo;
    }

    public DisplaySettings(int i10, int i11, int i12, int i13, boolean z10) {
        this._width = i10;
        this._height = i11;
        this._colorDepth = i12;
        this._frequency = i13;
        this._alphaBits = 0;
        this._depthBits = 8;
        this._stencilBits = 0;
        this._samples = 0;
        this._fullScreen = z10;
        this._stereo = false;
        this._shareContext = null;
    }

    public DisplaySettings(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, boolean z11) {
        this._width = i10;
        this._height = i11;
        this._colorDepth = i12;
        this._frequency = i13;
        this._alphaBits = i14;
        this._depthBits = i15;
        this._stencilBits = i16;
        this._samples = i17;
        this._fullScreen = z10;
        this._stereo = z11;
        this._shareContext = null;
    }

    public DisplaySettings(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, boolean z11, CanvasRenderer canvasRenderer) {
        this._width = i10;
        this._height = i11;
        this._colorDepth = i12;
        this._frequency = i13;
        this._alphaBits = i14;
        this._depthBits = i15;
        this._stencilBits = i16;
        this._samples = i17;
        this._fullScreen = z10;
        this._stereo = z11;
        this._shareContext = canvasRenderer;
    }
}
