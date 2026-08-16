package com.jme3.cursors.plugins;

import java.nio.IntBuffer;

public class JmeCursor {
    private int height;
    private IntBuffer imagesData;
    private IntBuffer imagesDelay;
    private int numImages;
    private int width;
    private int xHotSpot;
    private int yHotSpot;

    public int getHeight() {
        return this.height;
    }

    public IntBuffer getImagesData() {
        return this.imagesData;
    }

    public IntBuffer getImagesDelay() {
        return this.imagesDelay;
    }

    public int getNumImages() {
        return this.numImages;
    }

    public int getWidth() {
        return this.width;
    }

    public int getXHotSpot() {
        return this.xHotSpot;
    }

    public int getYHotSpot() {
        return this.yHotSpot;
    }

    public void setHeight(int i10) {
        this.height = i10;
    }

    public void setImagesData(IntBuffer intBuffer) {
        this.imagesData = intBuffer;
    }

    public void setImagesDelay(IntBuffer intBuffer) {
        this.imagesDelay = intBuffer;
    }

    public void setNumImages(int i10) {
        this.numImages = i10;
    }

    public void setWidth(int i10) {
        this.width = i10;
    }

    public void setxHotSpot(int i10) {
        this.xHotSpot = i10;
    }

    public void setyHotSpot(int i10) {
        this.yHotSpot = i10;
    }
}
