package com.threed.jpct;

import java.io.Serializable;
import java.nio.FloatBuffer;

public class Polyline implements Serializable {
    private static final long serialVersionUID = 1;
    private int length;
    private int maxLength;
    private FloatBufferWrapper vertices;
    private RGBColor color = RGBColor.WHITE;
    private float width = 1.0f;
    private int transparencyMode = 0;
    private float[] buffer = new float[3];
    private float percentage = 1.0f;
    private boolean visible = true;

    public Polyline(SimpleVector[] simpleVectorArr, RGBColor rGBColor) {
        this.vertices = null;
        this.length = 0;
        this.maxLength = 0;
        this.vertices = new FloatBufferWrapper(simpleVectorArr.length * 3);
        for (SimpleVector simpleVector : simpleVectorArr) {
            float[] fArr = this.buffer;
            fArr[0] = simpleVector.f83625x;
            fArr[1] = simpleVector.f83626y;
            fArr[2] = simpleVector.f83627z;
            this.vertices.put(fArr);
        }
        this.vertices.rewind();
        int length = simpleVectorArr.length;
        this.length = length;
        this.maxLength = length;
        setColor(rGBColor);
    }

    public RGBColor getColor() {
        return this.color;
    }

    public FloatBuffer getData() {
        return this.vertices.floats;
    }

    public int getLength() {
        float f10 = this.percentage;
        return f10 == 1.0f ? this.length : (int) (this.length * f10);
    }

    public float getPercentage() {
        return this.percentage;
    }

    public int getTransparencyMode() {
        return this.transparencyMode;
    }

    public float getWidth() {
        return this.width;
    }

    public boolean isVisible() {
        return this.visible;
    }

    public void setColor(RGBColor rGBColor) {
        this.color = rGBColor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        if (r3 > 1.0f) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setPercentage(float f10) {
        float f11 = f10 >= 0.0f ? 1.0f : 0.0f;
        f10 = f11;
        this.percentage = f10;
    }

    public void setTransparencyMode(int i10) {
        this.transparencyMode = i10;
    }

    public void setVisible(boolean z10) {
        this.visible = z10;
    }

    public void setWidth(float f10) {
        this.width = f10;
    }

    public void update(SimpleVector[] simpleVectorArr) {
        if (simpleVectorArr.length > this.maxLength) {
            Logger.log("New data's size exceeds the size of the Polyline!", 0);
            return;
        }
        int length = simpleVectorArr.length;
        this.vertices.clear();
        for (SimpleVector simpleVector : simpleVectorArr) {
            float[] fArr = this.buffer;
            fArr[0] = simpleVector.f83625x;
            fArr[1] = simpleVector.f83626y;
            fArr[2] = simpleVector.f83627z;
            this.vertices.put(fArr);
        }
        this.vertices.rewind();
        this.length = length;
    }
}
