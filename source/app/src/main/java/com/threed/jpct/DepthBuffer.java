package com.threed.jpct;

public class DepthBuffer {
    int height;
    int width;
    int renderBuffer = -1;
    int lastHandlerId = -1;

    public DepthBuffer(int i10, int i11) {
        this.width = i10;
        this.height = i11;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }
}
