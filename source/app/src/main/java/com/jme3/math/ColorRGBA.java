package com.jme3.math;

import com.itsmagic.engine.Engines.Engine.Animation.a;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import u8.C15580b;

public final class ColorRGBA implements Savable, Cloneable, Serializable {
    static final float GAMMA = 2.2f;
    static final long serialVersionUID = 1;

    public float f81595a;

    public float f81596b;

    public float f81597g;

    public float f81598r;
    public static final ColorRGBA Black = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
    public static final ColorRGBA White = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    public static final ColorRGBA DarkGray = new ColorRGBA(0.2f, 0.2f, 0.2f, 1.0f);
    public static final ColorRGBA Gray = new ColorRGBA(0.5f, 0.5f, 0.5f, 1.0f);
    public static final ColorRGBA LightGray = new ColorRGBA(0.8f, 0.8f, 0.8f, 1.0f);
    public static final ColorRGBA Red = new ColorRGBA(1.0f, 0.0f, 0.0f, 1.0f);
    public static final ColorRGBA Green = new ColorRGBA(0.0f, 1.0f, 0.0f, 1.0f);
    public static final ColorRGBA Blue = new ColorRGBA(0.0f, 0.0f, 1.0f, 1.0f);
    public static final ColorRGBA Yellow = new ColorRGBA(1.0f, 1.0f, 0.0f, 1.0f);
    public static final ColorRGBA Magenta = new ColorRGBA(1.0f, 0.0f, 1.0f, 1.0f);
    public static final ColorRGBA Cyan = new ColorRGBA(0.0f, 1.0f, 1.0f, 1.0f);
    public static final ColorRGBA Orange = new ColorRGBA(0.9843137f, 0.50980395f, 0.0f, 1.0f);
    public static final ColorRGBA Brown = new ColorRGBA(0.25490198f, 0.15686275f, 0.09803922f, 1.0f);
    public static final ColorRGBA Pink = new ColorRGBA(1.0f, 0.68f, 0.68f, 1.0f);
    public static final ColorRGBA BlackNoAlpha = new ColorRGBA(0.0f, 0.0f, 0.0f, 0.0f);

    public ColorRGBA() {
        this.f81595a = 1.0f;
        this.f81596b = 1.0f;
        this.f81597g = 1.0f;
        this.f81598r = 1.0f;
    }

    private float fromByte(int i10) {
        return (((byte) i10) & 255) / 255.0f;
    }

    public static ColorRGBA fromRGBA255(int i10, int i11, int i12, int i13) {
        return new ColorRGBA(i10 / 255.0f, i11 / 255.0f, i12 / 255.0f, i13 / 255.0f);
    }

    public static ColorRGBA randomColor() {
        return new ColorRGBA(FastMath.nextRandomFloat(), FastMath.nextRandomFloat(), FastMath.nextRandomFloat(), 1.0f);
    }

    private byte toByte(float f10) {
        return (byte) (((int) (f10 * 255.0f)) & 255);
    }

    private int toInt(float f10, float f11, float f12, float f13) {
        return ((((int) (f10 * 255.0f)) & 255) << 24) | ((((int) (f11 * 255.0f)) & 255) << 16) | ((((int) (f12 * 255.0f)) & 255) << 8) | (((int) (f13 * 255.0f)) & 255);
    }

    public ColorRGBA add(ColorRGBA colorRGBA) {
        return new ColorRGBA(colorRGBA.f81598r + this.f81598r, colorRGBA.f81597g + this.f81597g, colorRGBA.f81596b + this.f81596b, colorRGBA.f81595a + this.f81595a);
    }

    public ColorRGBA addLocal(ColorRGBA colorRGBA) {
        set(colorRGBA.f81598r + this.f81598r, colorRGBA.f81597g + this.f81597g, colorRGBA.f81596b + this.f81596b, colorRGBA.f81595a + this.f81595a);
        return this;
    }

    public byte[] asBytesRGBA() {
        return new byte[]{toByte(this.f81598r), toByte(this.f81597g), toByte(this.f81596b), toByte(this.f81595a)};
    }

    public int asIntABGR() {
        return toInt(this.f81595a, this.f81596b, this.f81597g, this.f81598r);
    }

    public int asIntARGB() {
        return toInt(this.f81595a, this.f81598r, this.f81597g, this.f81596b);
    }

    public int asIntRGBA() {
        return toInt(this.f81598r, this.f81597g, this.f81596b, this.f81595a);
    }

    public void clamp() {
        this.f81598r = FastMath.clamp(this.f81598r, 0.0f, 1.0f);
        this.f81597g = FastMath.clamp(this.f81597g, 0.0f, 1.0f);
        this.f81596b = FastMath.clamp(this.f81596b, 0.0f, 1.0f);
        this.f81595a = FastMath.clamp(this.f81595a, 0.0f, 1.0f);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ColorRGBA)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ColorRGBA colorRGBA = (ColorRGBA) obj;
        return Float.compare(this.f81598r, colorRGBA.f81598r) == 0 && Float.compare(this.f81597g, colorRGBA.f81597g) == 0 && Float.compare(this.f81596b, colorRGBA.f81596b) == 0 && Float.compare(this.f81595a, colorRGBA.f81595a) == 0;
    }

    public ColorRGBA fromIntABGR(int i10) {
        this.f81595a = fromByte(i10 >> 24);
        this.f81596b = fromByte(i10 >> 16);
        this.f81597g = fromByte(i10 >> 8);
        this.f81598r = fromByte(i10);
        return this;
    }

    public ColorRGBA fromIntARGB(int i10) {
        this.f81595a = fromByte(i10 >> 24);
        this.f81598r = fromByte(i10 >> 16);
        this.f81597g = fromByte(i10 >> 8);
        this.f81596b = fromByte(i10);
        return this;
    }

    public ColorRGBA fromIntRGBA(int i10) {
        this.f81598r = fromByte(i10 >> 24);
        this.f81597g = fromByte(i10 >> 16);
        this.f81596b = fromByte(i10 >> 8);
        this.f81595a = fromByte(i10);
        return this;
    }

    public float getAlpha() {
        return this.f81595a;
    }

    public ColorRGBA getAsSrgb() {
        ColorRGBA colorRGBA = new ColorRGBA();
        double d10 = 0.45454544f;
        colorRGBA.f81598r = (float) Math.pow(this.f81598r, d10);
        colorRGBA.f81597g = (float) Math.pow(this.f81597g, d10);
        colorRGBA.f81596b = (float) Math.pow(this.f81596b, d10);
        colorRGBA.f81595a = this.f81595a;
        return colorRGBA;
    }

    public float getBlue() {
        return this.f81596b;
    }

    public float[] getColorArray() {
        return getColorArray(null);
    }

    public float getGreen() {
        return this.f81597g;
    }

    public float getRed() {
        return this.f81598r;
    }

    public int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.f81598r) + 1406;
        int floatToIntBits2 = floatToIntBits + (floatToIntBits * 37) + Float.floatToIntBits(this.f81597g);
        int floatToIntBits3 = floatToIntBits2 + (floatToIntBits2 * 37) + Float.floatToIntBits(this.f81596b);
        return floatToIntBits3 + (floatToIntBits3 * 37) + Float.floatToIntBits(this.f81595a);
    }

    public ColorRGBA interpolateLocal(ColorRGBA colorRGBA, float f10) {
        return interpolateLocal(this, colorRGBA, f10);
    }

    public ColorRGBA mult(ColorRGBA colorRGBA) {
        return new ColorRGBA(colorRGBA.f81598r * this.f81598r, colorRGBA.f81597g * this.f81597g, colorRGBA.f81596b * this.f81596b, colorRGBA.f81595a * this.f81595a);
    }

    public ColorRGBA multLocal(float f10) {
        this.f81598r *= f10;
        this.f81597g *= f10;
        this.f81596b *= f10;
        this.f81595a *= f10;
        return this;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f81598r = capsule.readFloat(a.f72595c, 0.0f);
        this.f81597g = capsule.readFloat("g", 0.0f);
        this.f81596b = capsule.readFloat(C15580b.f118629u, 0.0f);
        this.f81595a = capsule.readFloat("a", 0.0f);
    }

    public ColorRGBA set(float f10, float f11, float f12, float f13) {
        this.f81598r = f10;
        this.f81597g = f11;
        this.f81596b = f12;
        this.f81595a = f13;
        return this;
    }

    public ColorRGBA setAlpha(float f10) {
        this.f81595a = f10;
        return this;
    }

    public ColorRGBA setAsSrgb(float f10, float f11, float f12, float f13) {
        this.f81598r = (float) Math.pow(f10, 2.200000047683716d);
        this.f81596b = (float) Math.pow(f12, 2.200000047683716d);
        this.f81597g = (float) Math.pow(f11, 2.200000047683716d);
        this.f81595a = f13;
        return this;
    }

    public ColorRGBA setBlue(float f10) {
        this.f81596b = f10;
        return this;
    }

    public ColorRGBA setGreen(float f10) {
        this.f81597g = f10;
        return this;
    }

    public ColorRGBA setRed(float f10) {
        this.f81598r = f10;
        return this;
    }

    public float[] toArray(float[] fArr) {
        if (fArr == null) {
            fArr = new float[4];
        }
        fArr[0] = this.f81598r;
        fArr[1] = this.f81597g;
        fArr[2] = this.f81596b;
        fArr[3] = this.f81595a;
        return fArr;
    }

    public String toString() {
        return "Color[" + this.f81598r + ", " + this.f81597g + ", " + this.f81596b + ", " + this.f81595a + "]";
    }

    public Vector3f toVector3f() {
        return new Vector3f(this.f81598r, this.f81597g, this.f81596b);
    }

    public Vector4f toVector4f() {
        return new Vector4f(this.f81598r, this.f81597g, this.f81596b, this.f81595a);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f81598r, a.f72595c, 0.0f);
        capsule.write(this.f81597g, "g", 0.0f);
        capsule.write(this.f81596b, C15580b.f118629u, 0.0f);
        capsule.write(this.f81595a, "a", 0.0f);
    }

    public ColorRGBA m1279clone() {
        try {
            return (ColorRGBA) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public float[] getColorArray(float[] fArr) {
        return toArray(fArr);
    }

    public ColorRGBA interpolateLocal(ColorRGBA colorRGBA, ColorRGBA colorRGBA2, float f10) {
        float f11 = 1.0f - f10;
        this.f81598r = (colorRGBA.f81598r * f11) + (colorRGBA2.f81598r * f10);
        this.f81597g = (colorRGBA.f81597g * f11) + (colorRGBA2.f81597g * f10);
        this.f81596b = (colorRGBA.f81596b * f11) + (colorRGBA2.f81596b * f10);
        this.f81595a = (f11 * colorRGBA.f81595a) + (f10 * colorRGBA2.f81595a);
        return this;
    }

    public ColorRGBA mult(float f10) {
        return new ColorRGBA(this.f81598r * f10, this.f81597g * f10, this.f81596b * f10, f10 * this.f81595a);
    }

    public ColorRGBA(float f10, float f11, float f12, float f13) {
        this.f81598r = f10;
        this.f81597g = f11;
        this.f81596b = f12;
        this.f81595a = f13;
    }

    public ColorRGBA set(ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            this.f81598r = 0.0f;
            this.f81597g = 0.0f;
            this.f81596b = 0.0f;
            this.f81595a = 0.0f;
        } else {
            this.f81598r = colorRGBA.f81598r;
            this.f81597g = colorRGBA.f81597g;
            this.f81596b = colorRGBA.f81596b;
            this.f81595a = colorRGBA.f81595a;
        }
        return this;
    }

    public ColorRGBA(ColorRGBA colorRGBA) {
        this.f81595a = colorRGBA.f81595a;
        this.f81598r = colorRGBA.f81598r;
        this.f81597g = colorRGBA.f81597g;
        this.f81596b = colorRGBA.f81596b;
    }

    public ColorRGBA(Vector4f vector4f) {
        set(vector4f);
    }

    public ColorRGBA set(Vector4f vector4f) {
        if (vector4f == null) {
            this.f81598r = 0.0f;
            this.f81597g = 0.0f;
            this.f81596b = 0.0f;
            this.f81595a = 0.0f;
        } else {
            this.f81598r = vector4f.f81615x;
            this.f81597g = vector4f.f81616y;
            this.f81596b = vector4f.f81617z;
            this.f81595a = vector4f.f81614w;
        }
        return this;
    }

    public ColorRGBA(Vector3f vector3f) {
        this.f81595a = 1.0f;
        set(vector3f);
    }

    public ColorRGBA set(Vector3f vector3f) {
        if (vector3f == null) {
            this.f81598r = 0.0f;
            this.f81597g = 0.0f;
            this.f81596b = 0.0f;
        } else {
            this.f81598r = vector3f.f81611x;
            this.f81597g = vector3f.f81612y;
            this.f81596b = vector3f.f81613z;
        }
        return this;
    }
}
