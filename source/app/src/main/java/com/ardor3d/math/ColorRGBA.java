package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import u8.C15580b;
import yd.C16181m;

public class ColorRGBA implements Cloneable, Savable, Externalizable, ReadOnlyColorRGBA, Poolable {
    private static final long serialVersionUID = 1;
    protected float _a;
    protected float _b;
    protected float _g;
    protected float _r;
    private static final ObjectPool<ColorRGBA> COLOR_POOL = ObjectPool.create(ColorRGBA.class, Constants.maxPoolSize);
    public static final ReadOnlyColorRGBA BLACK = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
    public static final ReadOnlyColorRGBA BLACK_NO_ALPHA = new ColorRGBA(0.0f, 0.0f, 0.0f, 0.0f);
    public static final ReadOnlyColorRGBA WHITE = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    public static final ReadOnlyColorRGBA DARK_GRAY = new ColorRGBA(0.2f, 0.2f, 0.2f, 1.0f);
    public static final ReadOnlyColorRGBA GRAY = new ColorRGBA(0.5f, 0.5f, 0.5f, 1.0f);
    public static final ReadOnlyColorRGBA LIGHT_GRAY = new ColorRGBA(0.8f, 0.8f, 0.8f, 1.0f);
    public static final ReadOnlyColorRGBA RED = new ColorRGBA(1.0f, 0.0f, 0.0f, 1.0f);
    public static final ReadOnlyColorRGBA GREEN = new ColorRGBA(0.0f, 1.0f, 0.0f, 1.0f);
    public static final ReadOnlyColorRGBA BLUE = new ColorRGBA(0.0f, 0.0f, 1.0f, 1.0f);
    public static final ReadOnlyColorRGBA YELLOW = new ColorRGBA(1.0f, 1.0f, 0.0f, 1.0f);
    public static final ReadOnlyColorRGBA MAGENTA = new ColorRGBA(1.0f, 0.0f, 1.0f, 1.0f);
    public static final ReadOnlyColorRGBA CYAN = new ColorRGBA(0.0f, 1.0f, 1.0f, 1.0f);
    public static final ReadOnlyColorRGBA ORANGE = new ColorRGBA(0.9843137f, 0.50980395f, 0.0f, 1.0f);
    public static final ReadOnlyColorRGBA BROWN = new ColorRGBA(0.25490198f, 0.15686275f, 0.09803922f, 1.0f);
    public static final ReadOnlyColorRGBA PINK = new ColorRGBA(1.0f, 0.68f, 0.68f, 1.0f);

    public ColorRGBA() {
        this(1.0f, 1.0f, 1.0f, 1.0f);
    }

    public static final ColorRGBA fetchTempInstance() {
        return Constants.useMathPools ? COLOR_POOL.fetch() : new ColorRGBA();
    }

    public static boolean isValid(ReadOnlyColorRGBA readOnlyColorRGBA) {
        return (readOnlyColorRGBA == null || Float.isNaN(readOnlyColorRGBA.getRed()) || Float.isNaN(readOnlyColorRGBA.getGreen()) || Float.isNaN(readOnlyColorRGBA.getBlue()) || Float.isNaN(readOnlyColorRGBA.getAlpha()) || Float.isInfinite(readOnlyColorRGBA.getRed()) || Float.isInfinite(readOnlyColorRGBA.getGreen()) || Float.isInfinite(readOnlyColorRGBA.getBlue()) || Float.isInfinite(readOnlyColorRGBA.getAlpha())) ? false : true;
    }

    public static ColorRGBA parseColor(String str, ColorRGBA colorRGBA) {
        float f10;
        float f11;
        float f12;
        float parseInt;
        int parseInt2;
        float parseInt3;
        float parseInt4;
        int parseInt5;
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        if (!str.startsWith(C16181m.f130230g)) {
            throw new IllegalArgumentException("must start with #.");
        }
        int length = str.length();
        float f13 = 1.0f;
        float f14 = 15.0f;
        if (length == 2) {
            f10 = Integer.parseInt(str.substring(1, 2), 16) / 15.0f;
            f11 = f10;
            f12 = 1.0f;
            f13 = f11;
        } else if (length == 3) {
            f13 = Integer.parseInt(str.substring(1, 2), 16) / 15.0f;
            f12 = Integer.parseInt(str.substring(2, 3), 16) / 15.0f;
            f10 = f13;
            f11 = f10;
        } else {
            if (length == 4) {
                parseInt3 = Integer.parseInt(str.substring(1, 2), 16) / 15.0f;
                parseInt4 = Integer.parseInt(str.substring(2, 3), 16) / 15.0f;
                parseInt5 = Integer.parseInt(str.substring(3, 4), 16);
            } else {
                if (length == 5) {
                    f13 = Integer.parseInt(str.substring(1, 2), 16) / 15.0f;
                    f11 = Integer.parseInt(str.substring(2, 3), 16) / 15.0f;
                    parseInt = Integer.parseInt(str.substring(3, 4), 16) / 15.0f;
                    parseInt2 = Integer.parseInt(str.substring(4, 5), 16);
                } else {
                    f14 = 255.0f;
                    if (length == 7) {
                        parseInt3 = Integer.parseInt(str.substring(1, 3), 16) / 255.0f;
                        parseInt4 = Integer.parseInt(str.substring(3, 5), 16) / 255.0f;
                        parseInt5 = Integer.parseInt(str.substring(5, 7), 16);
                    } else if (length == 9) {
                        f13 = Integer.parseInt(str.substring(1, 3), 16) / 255.0f;
                        f11 = Integer.parseInt(str.substring(3, 5), 16) / 255.0f;
                        parseInt = Integer.parseInt(str.substring(5, 7), 16) / 255.0f;
                        parseInt2 = Integer.parseInt(str.substring(7, 9), 16);
                    } else {
                        f10 = 1.0f;
                        f11 = 1.0f;
                        f12 = 1.0f;
                    }
                }
                float f15 = parseInt;
                f12 = parseInt2 / f14;
                f10 = f15;
            }
            f10 = parseInt5 / f14;
            f13 = parseInt3;
            f11 = parseInt4;
            f12 = 1.0f;
        }
        colorRGBA.set(f13, f11, f10, f12);
        return colorRGBA;
    }

    public static ColorRGBA randomColor(ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        colorRGBA._r = MathUtils.nextRandomFloat();
        colorRGBA._g = MathUtils.nextRandomFloat();
        colorRGBA._b = MathUtils.nextRandomFloat();
        colorRGBA._a = 1.0f;
        return colorRGBA;
    }

    public static final void releaseTempInstance(ColorRGBA colorRGBA) {
        if (Constants.useMathPools) {
            COLOR_POOL.release(colorRGBA);
        }
    }

    @Override
    public ColorRGBA add(float f10, float f11, float f12, float f13, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        return colorRGBA.set(getRed() + f10, getGreen() + f11, getBlue() + f12, getAlpha() + f13);
    }

    public ColorRGBA addLocal(float f10, float f11, float f12, float f13) {
        return set(getRed() + f10, getGreen() + f11, getBlue() + f12, getAlpha() + f13);
    }

    @Override
    public String asHexRRGGBBAA() {
        StringBuilder sb2 = new StringBuilder(C16181m.f130230g);
        String hexString = Integer.toHexString(Math.round(MathUtils.clamp(getRed(), 0.0f, 1.0f) * 255.0f));
        String hexString2 = Integer.toHexString(Math.round(MathUtils.clamp(getGreen(), 0.0f, 1.0f) * 255.0f));
        String hexString3 = Integer.toHexString(Math.round(MathUtils.clamp(getBlue(), 0.0f, 1.0f) * 255.0f));
        String hexString4 = Integer.toHexString(Math.round(MathUtils.clamp(getAlpha(), 0.0f, 1.0f) * 255.0f));
        if (hexString.length() < 2) {
            sb2.append("0");
        }
        sb2.append(hexString);
        if (hexString2.length() < 2) {
            sb2.append("0");
        }
        sb2.append(hexString2);
        if (hexString3.length() < 2) {
            sb2.append("0");
        }
        sb2.append(hexString3);
        if (hexString4.length() < 2) {
            sb2.append("0");
        }
        sb2.append(hexString4);
        return sb2.toString();
    }

    @Override
    public int asIntARGB() {
        return ((((int) (this._a * 255.0f)) & 255) << 24) | ((((int) (this._r * 255.0f)) & 255) << 16) | ((((int) (this._g * 255.0f)) & 255) << 8) | (((int) (this._b * 255.0f)) & 255);
    }

    @Override
    public int asIntRGBA() {
        return ((((int) (this._r * 255.0f)) & 255) << 24) | ((((int) (this._g * 255.0f)) & 255) << 16) | ((((int) (this._b * 255.0f)) & 255) << 8) | (((int) (this._a * 255.0f)) & 255);
    }

    @Override
    public ColorRGBA clamp(ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        colorRGBA.set(this);
        float f10 = colorRGBA._r;
        if (f10 < 0.0f) {
            colorRGBA._r = 0.0f;
        } else if (f10 > 1.0f) {
            colorRGBA._r = 1.0f;
        }
        float f11 = colorRGBA._g;
        if (f11 < 0.0f) {
            colorRGBA._g = 0.0f;
        } else if (f11 > 1.0f) {
            colorRGBA._g = 1.0f;
        }
        float f12 = colorRGBA._b;
        if (f12 < 0.0f) {
            colorRGBA._b = 0.0f;
        } else if (f12 > 1.0f) {
            colorRGBA._b = 1.0f;
        }
        float f13 = colorRGBA._a;
        if (f13 < 0.0f) {
            colorRGBA._a = 0.0f;
        } else if (f13 > 1.0f) {
            colorRGBA._a = 1.0f;
        }
        return colorRGBA;
    }

    public void clampLocal() {
        float f10 = this._r;
        if (f10 < 0.0f) {
            this._r = 0.0f;
        } else if (f10 > 1.0f) {
            this._r = 1.0f;
        }
        float f11 = this._g;
        if (f11 < 0.0f) {
            this._g = 0.0f;
        } else if (f11 > 1.0f) {
            this._g = 1.0f;
        }
        float f12 = this._b;
        if (f12 < 0.0f) {
            this._b = 0.0f;
        } else if (f12 > 1.0f) {
            this._b = 1.0f;
        }
        float f13 = this._a;
        if (f13 < 0.0f) {
            this._a = 0.0f;
        } else if (f13 > 1.0f) {
            this._a = 1.0f;
        }
    }

    @Override
    public ColorRGBA divide(float f10, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        return colorRGBA.set(getRed() / f10, getGreen() / f10, getBlue() / f10, getAlpha() / f10);
    }

    public ColorRGBA divideLocal(float f10) {
        float f11 = 1.0f / f10;
        return set(getRed() * f11, getGreen() * f11, getBlue() * f11, getAlpha() * f11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyColorRGBA)) {
            return false;
        }
        ReadOnlyColorRGBA readOnlyColorRGBA = (ReadOnlyColorRGBA) obj;
        return getRed() == readOnlyColorRGBA.getRed() && getGreen() == readOnlyColorRGBA.getGreen() && getBlue() == readOnlyColorRGBA.getBlue() && getAlpha() == readOnlyColorRGBA.getAlpha();
    }

    public void fromIntARGB(int i10) {
        this._a = (((byte) (i10 >> 24)) & 255) / 255.0f;
        this._r = (((byte) (i10 >> 16)) & 255) / 255.0f;
        this._g = (((byte) (i10 >> 8)) & 255) / 255.0f;
        this._b = (((byte) i10) & 255) / 255.0f;
    }

    public void fromIntRGBA(int i10) {
        this._r = (((byte) (i10 >> 24)) & 255) / 255.0f;
        this._g = (((byte) (i10 >> 16)) & 255) / 255.0f;
        this._b = (((byte) (i10 >> 8)) & 255) / 255.0f;
        this._a = (((byte) i10) & 255) / 255.0f;
    }

    @Override
    public float getAlpha() {
        return this._a;
    }

    @Override
    public float getBlue() {
        return this._b;
    }

    @Override
    public Class<? extends ColorRGBA> getClassTag() {
        return getClass();
    }

    @Override
    public float getGreen() {
        return this._g;
    }

    @Override
    public float getRed() {
        return this._r;
    }

    @Override
    public float getValue(int i10) {
        if (i10 == 0) {
            return getRed();
        }
        if (i10 == 1) {
            return getGreen();
        }
        if (i10 == 2) {
            return getBlue();
        }
        if (i10 == 3) {
            return getAlpha();
        }
        throw new IllegalArgumentException("index must be either 0, 1, 2 or 3");
    }

    public int hashCode() {
        int floatToIntBits = Float.floatToIntBits(getRed()) + 544;
        int floatToIntBits2 = floatToIntBits + (floatToIntBits * 31) + Float.floatToIntBits(getGreen());
        int floatToIntBits3 = floatToIntBits2 + (floatToIntBits2 * 31) + Float.floatToIntBits(getBlue());
        return floatToIntBits3 + (floatToIntBits3 * 31) + Float.floatToIntBits(getAlpha());
    }

    @Override
    public ColorRGBA lerp(ReadOnlyColorRGBA readOnlyColorRGBA, float f10, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        float f11 = 1.0f - f10;
        return colorRGBA.set((getRed() * f11) + (readOnlyColorRGBA.getRed() * f10), (getGreen() * f11) + (readOnlyColorRGBA.getGreen() * f10), (getBlue() * f11) + (readOnlyColorRGBA.getBlue() * f10), (f11 * getAlpha()) + (f10 * readOnlyColorRGBA.getAlpha()));
    }

    public ColorRGBA lerpLocal(ReadOnlyColorRGBA readOnlyColorRGBA, float f10) {
        float f11 = 1.0f - f10;
        setRed((getRed() * f11) + (readOnlyColorRGBA.getRed() * f10));
        setGreen((getGreen() * f11) + (readOnlyColorRGBA.getGreen() * f10));
        setBlue((getBlue() * f11) + (readOnlyColorRGBA.getBlue() * f10));
        setAlpha((f11 * getAlpha()) + (f10 * readOnlyColorRGBA.getAlpha()));
        return this;
    }

    @Override
    public ColorRGBA multiply(float f10, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        return colorRGBA.set(getRed() * f10, getGreen() * f10, getBlue() * f10, getAlpha() * f10);
    }

    public ColorRGBA multiplyLocal(float f10) {
        return set(getRed() * f10, getGreen() * f10, getBlue() * f10, getAlpha() * f10);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        setRed(inputCapsule.readFloat(a.f72595c, 1.0f));
        setGreen(inputCapsule.readFloat("g", 1.0f));
        setBlue(inputCapsule.readFloat(C15580b.f118629u, 1.0f));
        setAlpha(inputCapsule.readFloat("a", 1.0f));
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setRed(objectInput.readFloat());
        setGreen(objectInput.readFloat());
        setBlue(objectInput.readFloat());
        setAlpha(objectInput.readFloat());
    }

    public ColorRGBA set(float f10, float f11, float f12, float f13) {
        setRed(f10);
        setGreen(f11);
        setBlue(f12);
        setAlpha(f13);
        return this;
    }

    public void setAlpha(float f10) {
        this._a = f10;
    }

    public void setBlue(float f10) {
        this._b = f10;
    }

    public void setGreen(float f10) {
        this._g = f10;
    }

    public void setRed(float f10) {
        this._r = f10;
    }

    public void setValue(int i10, float f10) {
        if (i10 == 0) {
            setRed(f10);
            return;
        }
        if (i10 == 1) {
            setGreen(f10);
        } else if (i10 == 2) {
            setBlue(f10);
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("index must be either 0, 1, 2 or 3");
            }
            setAlpha(f10);
        }
    }

    @Override
    public ColorRGBA subtract(float f10, float f11, float f12, float f13, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        return colorRGBA.set(getRed() - f10, getGreen() - f11, getBlue() - f12, getAlpha() - f13);
    }

    public ColorRGBA subtractLocal(float f10, float f11, float f12, float f13) {
        return set(getRed() - f10, getGreen() - f11, getBlue() - f12, getAlpha() - f13);
    }

    @Override
    public float[] toArray(float[] fArr) {
        if (fArr == null) {
            fArr = new float[4];
        }
        fArr[3] = getAlpha();
        fArr[2] = getBlue();
        fArr[1] = getGreen();
        fArr[0] = getRed();
        return fArr;
    }

    public String toString() {
        return "com.ardor3d.math.ColorRGBA [R=" + getRed() + ", G=" + getGreen() + ", B=" + getBlue() + ", A=" + getAlpha() + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(getRed(), a.f72595c, 1.0f);
        outputCapsule.write(getGreen(), "g", 1.0f);
        outputCapsule.write(getBlue(), C15580b.f118629u, 1.0f);
        outputCapsule.write(getAlpha(), "a", 1.0f);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeFloat(getRed());
        objectOutput.writeFloat(getGreen());
        objectOutput.writeFloat(getBlue());
        objectOutput.writeFloat(getAlpha());
    }

    public ColorRGBA zero() {
        return set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public ColorRGBA(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this(readOnlyColorRGBA.getRed(), readOnlyColorRGBA.getGreen(), readOnlyColorRGBA.getBlue(), readOnlyColorRGBA.getAlpha());
    }

    public ColorRGBA addLocal(ReadOnlyColorRGBA readOnlyColorRGBA) {
        return addLocal(readOnlyColorRGBA.getRed(), readOnlyColorRGBA.getGreen(), readOnlyColorRGBA.getBlue(), readOnlyColorRGBA.getAlpha());
    }

    public ColorRGBA m1191clone() {
        try {
            return (ColorRGBA) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public ColorRGBA divideLocal(ReadOnlyColorRGBA readOnlyColorRGBA) {
        return set(getRed() / readOnlyColorRGBA.getRed(), getGreen() / readOnlyColorRGBA.getGreen(), getBlue() / readOnlyColorRGBA.getBlue(), getAlpha() / readOnlyColorRGBA.getAlpha());
    }

    public ColorRGBA multiplyLocal(ReadOnlyColorRGBA readOnlyColorRGBA) {
        return set(getRed() * readOnlyColorRGBA.getRed(), getGreen() * readOnlyColorRGBA.getGreen(), getBlue() * readOnlyColorRGBA.getBlue(), getAlpha() * readOnlyColorRGBA.getAlpha());
    }

    public ColorRGBA subtractLocal(ReadOnlyColorRGBA readOnlyColorRGBA) {
        return subtractLocal(readOnlyColorRGBA.getRed(), readOnlyColorRGBA.getGreen(), readOnlyColorRGBA.getBlue(), readOnlyColorRGBA.getAlpha());
    }

    public ColorRGBA(float f10, float f11, float f12, float f13) {
        this._r = f10;
        this._g = f11;
        this._b = f12;
        this._a = f13;
    }

    @Override
    public ColorRGBA add(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA) {
        return add(readOnlyColorRGBA.getRed(), readOnlyColorRGBA.getGreen(), readOnlyColorRGBA.getBlue(), readOnlyColorRGBA.getAlpha(), colorRGBA);
    }

    @Override
    public ColorRGBA divide(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        return colorRGBA.set(getRed() / readOnlyColorRGBA.getRed(), getGreen() / readOnlyColorRGBA.getGreen(), getBlue() / readOnlyColorRGBA.getBlue(), getAlpha() / readOnlyColorRGBA.getAlpha());
    }

    @Override
    public ColorRGBA multiply(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        return colorRGBA.set(getRed() * readOnlyColorRGBA.getRed(), getGreen() * readOnlyColorRGBA.getGreen(), getBlue() * readOnlyColorRGBA.getBlue(), getAlpha() * readOnlyColorRGBA.getAlpha());
    }

    @Override
    public ColorRGBA subtract(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA) {
        return subtract(readOnlyColorRGBA.getRed(), readOnlyColorRGBA.getGreen(), readOnlyColorRGBA.getBlue(), readOnlyColorRGBA.getAlpha(), colorRGBA);
    }

    public ColorRGBA lerpLocal(ReadOnlyColorRGBA readOnlyColorRGBA, ReadOnlyColorRGBA readOnlyColorRGBA2, float f10) {
        float f11 = 1.0f - f10;
        setRed((readOnlyColorRGBA.getRed() * f11) + (readOnlyColorRGBA2.getRed() * f10));
        setGreen((readOnlyColorRGBA.getGreen() * f11) + (readOnlyColorRGBA2.getGreen() * f10));
        setBlue((readOnlyColorRGBA.getBlue() * f11) + (readOnlyColorRGBA2.getBlue() * f10));
        setAlpha((f11 * readOnlyColorRGBA.getAlpha()) + (f10 * readOnlyColorRGBA2.getAlpha()));
        return this;
    }

    public ColorRGBA set(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._r = readOnlyColorRGBA.getRed();
        this._g = readOnlyColorRGBA.getGreen();
        this._b = readOnlyColorRGBA.getBlue();
        this._a = readOnlyColorRGBA.getAlpha();
        return this;
    }

    public static ColorRGBA lerp(ReadOnlyColorRGBA readOnlyColorRGBA, ReadOnlyColorRGBA readOnlyColorRGBA2, float f10, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        float f11 = 1.0f - f10;
        return colorRGBA.set((readOnlyColorRGBA.getRed() * f11) + (readOnlyColorRGBA2.getRed() * f10), (readOnlyColorRGBA.getGreen() * f11) + (readOnlyColorRGBA2.getGreen() * f10), (readOnlyColorRGBA.getBlue() * f11) + (readOnlyColorRGBA2.getBlue() * f10), (f11 * readOnlyColorRGBA.getAlpha()) + (f10 * readOnlyColorRGBA2.getAlpha()));
    }
}
