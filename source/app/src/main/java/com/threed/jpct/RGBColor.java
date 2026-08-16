package com.threed.jpct;

import java.io.Serializable;

public class RGBColor implements Serializable {
    private static final float COLOR_INV = 0.003921569f;
    private static final long serialVersionUID = 1;
    int alpha;
    int blue;
    int green;
    float nalpha;
    float nblue;
    float ngreen;
    float nred;
    int red;
    public static final RGBColor BLACK = new RGBColor(0, 0, 0);
    public static final RGBColor WHITE = new RGBColor(255, 255, 255);
    public static final RGBColor RED = new RGBColor(255, 0, 0);
    public static final RGBColor GREEN = new RGBColor(0, 255, 0);
    public static final RGBColor BLUE = new RGBColor(0, 0, 255);

    public RGBColor() {
        this.red = 0;
        this.blue = 0;
        this.green = 0;
        this.alpha = 0;
        this.nred = 0.0f;
        this.nblue = 0.0f;
        this.ngreen = 0.0f;
        this.nalpha = 0.0f;
    }

    public int getARGB() {
        return (this.alpha << 24) | (this.red << 16) | (this.green << 8) | this.blue;
    }

    public int getAlpha() {
        return this.alpha;
    }

    public int getBlue() {
        return this.blue;
    }

    public int getGreen() {
        return this.green;
    }

    public float getNormalizedAlpha() {
        return this.nalpha;
    }

    public float getNormalizedBlue() {
        return this.nblue;
    }

    public float getNormalizedGreen() {
        return this.ngreen;
    }

    public float getNormalizedRed() {
        return this.nred;
    }

    public int getRGB() {
        return (this.red << 16) | (this.green << 8) | this.blue;
    }

    public int getRed() {
        return this.red;
    }

    public void setTo(int i10, int i11, int i12, int i13) {
        this.red = Math.max(0, Math.min(255, i10));
        this.blue = Math.max(0, Math.min(255, i12));
        this.green = Math.max(0, Math.min(255, i11));
        int max = Math.max(0, Math.min(255, i13));
        this.alpha = max;
        this.nred = this.red * 0.003921569f;
        this.nblue = this.blue * 0.003921569f;
        this.ngreen = this.green * 0.003921569f;
        this.nalpha = max * 0.003921569f;
    }

    public RGBColor(int i10, int i11, int i12) {
        this(i10, i11, i12, 255);
    }

    public RGBColor(int i10, int i11, int i12, int i13) {
        this.red = 0;
        this.blue = 0;
        this.green = 0;
        this.alpha = 0;
        this.nred = 0.0f;
        this.nblue = 0.0f;
        this.ngreen = 0.0f;
        this.nalpha = 0.0f;
        this.red = Math.max(0, Math.min(255, i10));
        this.blue = Math.max(0, Math.min(255, i12));
        this.green = Math.max(0, Math.min(255, i11));
        int max = Math.max(0, Math.min(255, i13));
        this.alpha = max;
        this.nred = this.red * 0.003921569f;
        this.nblue = this.blue * 0.003921569f;
        this.ngreen = this.green * 0.003921569f;
        this.nalpha = max * 0.003921569f;
    }
}
