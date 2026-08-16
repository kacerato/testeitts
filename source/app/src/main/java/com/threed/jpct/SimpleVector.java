package com.threed.jpct;

import android.annotation.SuppressLint;
import android.util.FloatMath;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;

@SuppressLint({"FloatMath"})
public class SimpleVector implements Serializable {
    private static final SimpleVector DOWN;
    public static final SimpleVector ORIGIN;
    private static List<CacheableSimpleVector> cache = new ArrayList();
    private static final long serialVersionUID = 1;
    private float[] array;

    public float f83625x;

    public float f83626y;

    public float f83627z;

    public static class CacheableSimpleVector extends SimpleVector {
        private static final long serialVersionUID = 1;

        public CacheableSimpleVector(float f10, float f11, float f12) {
            super(f10, f11, f12);
        }

        public void finalize() {
            if (SimpleVector.cache.size() < Config.vectorCacheSize) {
                synchronized (SimpleVector.cache) {
                    SimpleVector.cache.add(this);
                }
            }
        }

        public CacheableSimpleVector() {
        }
    }

    static {
        for (int i10 = 0; i10 < 10; i10++) {
            cache.add(new CacheableSimpleVector());
        }
        ORIGIN = new SimpleVector(0.0f, 0.0f, 0.0f);
        DOWN = new SimpleVector(0.0f, 1.0f, 0.0f);
    }

    public SimpleVector(float f10, float f11, float f12) {
        this.array = null;
        this.f83625x = f10;
        this.f83626y = f11;
        this.f83627z = f12;
    }

    private float _calcAngle(SimpleVector simpleVector) {
        float f10 = this.f83625x;
        float f11 = simpleVector.f83625x * f10;
        float f12 = this.f83626y;
        float f13 = f11 + (simpleVector.f83626y * f12);
        float f14 = this.f83627z;
        float f15 = f13 + (simpleVector.f83627z * f14);
        float sqrt = FloatMath.sqrt((f10 * f10) + (f12 * f12) + (f14 * f14));
        float f16 = simpleVector.f83625x;
        float f17 = simpleVector.f83626y;
        float f18 = simpleVector.f83627z;
        float sqrt2 = f15 / (sqrt * FloatMath.sqrt(((f16 * f16) + (f17 * f17)) + (f18 * f18)));
        if (sqrt2 < -1.0f) {
            sqrt2 = -1.0f;
        }
        if (sqrt2 > 1.0f) {
            return 1.0f;
        }
        return sqrt2;
    }

    private float acosFast(float f10) {
        return (((((-0.6981317f) * f10) * f10) - 0.87266463f) * f10) + 1.5707964f;
    }

    public static SimpleVector create() {
        return create(0.0f, 0.0f, 0.0f);
    }

    public void add(SimpleVector simpleVector) {
        this.f83625x += simpleVector.f83625x;
        this.f83626y += simpleVector.f83626y;
        this.f83627z += simpleVector.f83627z;
    }

    public SimpleVector calcAdd(SimpleVector simpleVector) {
        return new SimpleVector(this.f83625x + simpleVector.f83625x, this.f83626y + simpleVector.f83626y, this.f83627z + simpleVector.f83627z);
    }

    public float calcAngle(SimpleVector simpleVector) {
        return (float) Math.acos(_calcAngle(simpleVector));
    }

    public float calcAngleFast(SimpleVector simpleVector) {
        return acosFast(_calcAngle(simpleVector));
    }

    public SimpleVector calcCross(SimpleVector simpleVector) {
        float f10 = simpleVector.f83625x;
        float f11 = simpleVector.f83626y;
        float f12 = simpleVector.f83627z;
        float f13 = this.f83626y;
        float f14 = this.f83627z;
        float f15 = (f13 * f12) - (f14 * f11);
        float f16 = this.f83625x;
        return create(f15, (f14 * f10) - (f12 * f16), (f16 * f11) - (f13 * f10));
    }

    public float calcDot(SimpleVector simpleVector) {
        return (this.f83625x * simpleVector.f83625x) + (this.f83626y * simpleVector.f83626y) + (this.f83627z * simpleVector.f83627z);
    }

    public SimpleVector calcSub(SimpleVector simpleVector) {
        return create(this.f83625x - simpleVector.f83625x, this.f83626y - simpleVector.f83626y, this.f83627z - simpleVector.f83627z);
    }

    public float distance(SimpleVector simpleVector) {
        return lengthBetween(simpleVector);
    }

    public boolean equals(Object obj) {
        if (obj instanceof SimpleVector) {
            SimpleVector simpleVector = (SimpleVector) obj;
            if (simpleVector.f83625x == this.f83625x && simpleVector.f83626y == this.f83626y && simpleVector.f83627z == this.f83627z) {
                return true;
            }
        }
        return false;
    }

    public Matrix getRotationMatrix() {
        return getRotationMatrix(new Matrix(), DOWN);
    }

    public int hashCode() {
        return (int) ((this.f83625x * 100.0f) + (this.f83626y * 10.0f) + this.f83627z);
    }

    public float length() {
        float f10 = this.f83625x;
        float f11 = this.f83626y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f83627z;
        return FloatMath.sqrt(f12 + (f13 * f13));
    }

    public float lengthBetween(SimpleVector simpleVector) {
        float f10 = this.f83625x - simpleVector.f83625x;
        float f11 = this.f83626y - simpleVector.f83626y;
        float f12 = this.f83627z - simpleVector.f83627z;
        return FloatMath.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public void makeEqualLength(SimpleVector simpleVector) {
        float length = simpleVector.length();
        if (length() > length) {
            SimpleVector normalize = normalize();
            normalize.scalarMul(length);
            this.f83625x = normalize.f83625x;
            this.f83626y = normalize.f83626y;
            this.f83627z = normalize.f83627z;
        }
    }

    public void matMul(Matrix matrix) {
        float[][] fArr = matrix.mat;
        float[] fArr2 = fArr[0];
        float[] fArr3 = fArr[1];
        float[] fArr4 = fArr[2];
        float[] fArr5 = fArr[3];
        float f10 = this.f83625x;
        float f11 = fArr2[0] * f10;
        float f12 = this.f83626y;
        float f13 = f11 + (fArr3[0] * f12);
        float f14 = this.f83627z;
        float f15 = f13 + (fArr4[0] * f14) + fArr5[0];
        float f16 = (fArr2[1] * f10) + (fArr3[1] * f12) + (fArr4[1] * f14) + fArr5[1];
        float f17 = (f10 * fArr2[2]) + (f12 * fArr3[2]) + (f14 * fArr4[2]) + fArr5[2];
        this.f83625x = f15;
        this.f83626y = f16;
        this.f83627z = f17;
    }

    public SimpleVector normalize() {
        float f10 = this.f83625x;
        float f11 = this.f83626y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f83627z;
        float sqrt = FloatMath.sqrt(f12 + (f13 * f13));
        if (sqrt != 0.0f) {
            float f14 = 1.0f / sqrt;
            return create(this.f83625x * f14, this.f83626y * f14, this.f83627z * f14);
        }
        return create(0.0f, 0.0f, 0.0f);
    }

    public SimpleVector reflect(SimpleVector simpleVector) {
        SimpleVector calcCross = simpleVector.calcCross(calcCross(simpleVector));
        calcCross.scalarMul(2.0f);
        return calcSub(calcCross);
    }

    public SimpleVector rotate(SimpleVector simpleVector) {
        float f10 = this.f83625x;
        float f11 = this.f83626y;
        float f12 = this.f83627z;
        float sin = FloatMath.sin(simpleVector.f83625x);
        float cos = FloatMath.cos(simpleVector.f83625x);
        float sin2 = FloatMath.sin(simpleVector.f83626y);
        float cos2 = FloatMath.cos(simpleVector.f83626y);
        float sin3 = FloatMath.sin(simpleVector.f83627z);
        float cos3 = FloatMath.cos(simpleVector.f83627z);
        float f13 = (f10 * cos3) - (f11 * sin3);
        float f14 = (f10 * sin3) + (f11 * cos3);
        float f15 = (f13 * cos2) - (f12 * sin2);
        float f16 = (f13 * sin2) + (f12 * cos2);
        return create(f15, (f14 * cos) - (f16 * sin), (f14 * sin) + (f16 * cos));
    }

    public void rotateX(float f10) {
        float f11 = this.f83626y;
        float f12 = this.f83627z;
        float sin = FloatMath.sin(f10);
        float cos = FloatMath.cos(f10);
        this.f83626y = (f11 * cos) - (f12 * sin);
        this.f83627z = (f11 * sin) + (f12 * cos);
    }

    public void rotateY(float f10) {
        float f11 = this.f83625x;
        float f12 = this.f83627z;
        float sin = FloatMath.sin(f10);
        float cos = FloatMath.cos(f10);
        this.f83625x = (f11 * cos) - (f12 * sin);
        this.f83627z = (f11 * sin) + (f12 * cos);
    }

    public void rotateZ(float f10) {
        float f11 = this.f83626y;
        float f12 = this.f83625x;
        float sin = FloatMath.sin(f10);
        float cos = FloatMath.cos(f10);
        this.f83625x = (f12 * cos) - (f11 * sin);
        this.f83626y = (f12 * sin) + (f11 * cos);
    }

    public void scalarMul(float f10) {
        this.f83625x *= f10;
        this.f83626y *= f10;
        this.f83627z *= f10;
    }

    public void set(float f10, float f11, float f12) {
        this.f83625x = f10;
        this.f83626y = f11;
        this.f83627z = f12;
    }

    public void sub(SimpleVector simpleVector) {
        this.f83625x -= simpleVector.f83625x;
        this.f83626y -= simpleVector.f83626y;
        this.f83627z -= simpleVector.f83627z;
    }

    public float[] toArray() {
        float[] fArr = this.array;
        if (fArr == null) {
            this.array = new float[]{this.f83625x, this.f83626y, this.f83627z};
        } else {
            fArr[0] = this.f83625x;
            fArr[1] = this.f83626y;
            fArr[2] = this.f83627z;
        }
        return this.array;
    }

    public String toString() {
        return "(" + this.f83625x + DocLint.SEPARATOR + this.f83626y + DocLint.SEPARATOR + this.f83627z + ")";
    }

    public static SimpleVector create(SimpleVector simpleVector) {
        return create(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
    }

    public Matrix getRotationMatrix(SimpleVector simpleVector) {
        return getRotationMatrix(new Matrix(), simpleVector);
    }

    public static SimpleVector create(float f10, float f11, float f12) {
        CacheableSimpleVector cacheableSimpleVector;
        synchronized (cache) {
            try {
                if (cache.size() != 0) {
                    cacheableSimpleVector = cache.remove(r1.size() - 1);
                    cacheableSimpleVector.f83625x = f10;
                    cacheableSimpleVector.f83626y = f11;
                    cacheableSimpleVector.f83627z = f12;
                } else {
                    cacheableSimpleVector = new CacheableSimpleVector(f10, f11, f12);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cacheableSimpleVector;
    }

    public Matrix getRotationMatrix(Matrix matrix) {
        return getRotationMatrix(matrix, DOWN);
    }

    public void add(float f10, float f11, float f12) {
        this.f83625x += f10;
        this.f83626y += f11;
        this.f83627z += f12;
    }

    public Matrix getRotationMatrix(Matrix matrix, SimpleVector simpleVector) {
        float f10 = this.f83625x;
        float f11 = this.f83626y;
        float f12 = this.f83627z;
        if (f10 == 0.0f && f12 == 0.0f) {
            f10 += 1.0E-20f;
        }
        float sqrt = FloatMath.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
        if (sqrt != 0.0f) {
            f10 /= sqrt;
            f11 /= sqrt;
            f12 /= sqrt;
        }
        float[][] fArr = matrix.mat;
        float[] fArr2 = fArr[1];
        fArr2[0] = 0.0f;
        fArr2[1] = 1.0f;
        fArr2[2] = 0.0f;
        float[] fArr3 = fArr[2];
        fArr3[0] = f10;
        fArr3[1] = f11;
        fArr3[2] = f12;
        float f13 = simpleVector.f83625x;
        float f14 = simpleVector.f83626y;
        float f15 = simpleVector.f83627z;
        float f16 = (f14 * f12) - (f15 * f11);
        float f17 = (f15 * f10) - (f13 * f12);
        float f18 = (f13 * f11) - (f14 * f10);
        float sqrt2 = FloatMath.sqrt((f16 * f16) + (f17 * f17) + (f18 * f18));
        if (sqrt2 != 0.0f) {
            f16 /= sqrt2;
            f17 /= sqrt2;
            f18 /= sqrt2;
        }
        float f19 = (f11 * f18) - (f12 * f17);
        float f20 = (f12 * f16) - (f10 * f18);
        float f21 = (f10 * f17) - (f11 * f16);
        float sqrt3 = FloatMath.sqrt((f19 * f19) + (f20 * f20) + (f21 * f21));
        if (sqrt3 != 0.0f) {
            f19 /= sqrt3;
            f20 /= sqrt3;
            f21 /= sqrt3;
        }
        float[] fArr4 = fArr[0];
        fArr4[0] = f16;
        fArr4[1] = f17;
        fArr4[2] = f18;
        float[] fArr5 = fArr[1];
        fArr5[0] = f19;
        fArr5[1] = f20;
        fArr5[2] = f21;
        matrix.orthonormalize();
        return matrix;
    }

    public SimpleVector normalize(SimpleVector simpleVector) {
        if (simpleVector == null) {
            simpleVector = create();
        }
        float f10 = this.f83625x;
        float f11 = this.f83626y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f83627z;
        float sqrt = FloatMath.sqrt(f12 + (f13 * f13));
        if (sqrt != 0.0f) {
            float f14 = 1.0f / sqrt;
            simpleVector.set(this.f83625x * f14, this.f83626y * f14, this.f83627z * f14);
        } else {
            simpleVector.set(0.0f, 0.0f, 0.0f);
        }
        return simpleVector;
    }

    public void set(SimpleVector simpleVector) {
        this.f83625x = simpleVector.f83625x;
        this.f83626y = simpleVector.f83626y;
        this.f83627z = simpleVector.f83627z;
    }

    public SimpleVector(double d10, double d11, double d12) {
        this.array = null;
        this.f83625x = (float) d10;
        this.f83626y = (float) d11;
        this.f83627z = (float) d12;
    }

    public SimpleVector(SimpleVector simpleVector) {
        this.array = null;
        this.f83625x = simpleVector.f83625x;
        this.f83626y = simpleVector.f83626y;
        this.f83627z = simpleVector.f83627z;
    }

    public void rotate(Matrix matrix) {
        float[][] fArr = matrix.mat;
        float f10 = this.f83625x;
        float[] fArr2 = fArr[0];
        float f11 = fArr2[0] * f10;
        float f12 = this.f83626y;
        float[] fArr3 = fArr[1];
        float f13 = f11 + (fArr3[0] * f12);
        float f14 = this.f83627z;
        float[] fArr4 = fArr[2];
        float f15 = f13 + (fArr4[0] * f14);
        float f16 = (fArr2[1] * f10) + (fArr3[1] * f12) + (fArr4[1] * f14);
        float f17 = (f10 * fArr2[2]) + (f12 * fArr3[2]) + (f14 * fArr4[2]);
        this.f83625x = f15;
        this.f83626y = f16;
        this.f83627z = f17;
    }

    public SimpleVector() {
        this.array = null;
        this.f83625x = 0.0f;
        this.f83626y = 0.0f;
        this.f83627z = 0.0f;
    }

    public SimpleVector(float[] fArr) {
        this.array = null;
        if (fArr.length == 3) {
            this.f83625x = fArr[0];
            this.f83626y = fArr[1];
            this.f83627z = fArr[2];
        } else {
            this.f83625x = 0.0f;
            this.f83626y = 0.0f;
            this.f83627z = 0.0f;
            Logger.log("Source-array needs to have a length of 3", 0);
        }
    }
}
