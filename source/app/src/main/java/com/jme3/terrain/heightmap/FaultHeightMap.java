package com.jme3.terrain.heightmap;

import com.jme3.math.FastMath;
import java.lang.reflect.Array;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FaultHeightMap extends AbstractHeightMap {
    public static final int FAULTSHAPE_CIRCLE = 11;
    public static final int FAULTSHAPE_LINE = 10;
    public static final int FAULTTYPE_COSINE = 2;
    public static final int FAULTTYPE_LINEAR = 1;
    public static final int FAULTTYPE_SINE = 3;
    public static final int FAULTTYPE_STEP = 0;
    private static final Logger logger = Logger.getLogger(FaultHeightMap.class.getName());
    private int faultShape;
    private int faultType;
    private int iterations;
    private float maxFaultHeight;
    private float maxRadius;
    private float maxRange;
    private float minFaultHeight;
    private float minRadius;
    private float minRange;
    private long seed;

    public FaultHeightMap(int i10, int i11, int i12, int i13, float f10, float f11, long j10) throws Exception {
        if (i10 >= 0 && i11 >= 0) {
            this.size = i10;
            this.iterations = i11;
            this.faultType = i12;
            this.faultShape = i13;
            this.minFaultHeight = f10;
            this.maxFaultHeight = f11;
            this.seed = j10;
            this.minRange = f10;
            this.maxRange = f11;
            this.minRadius = i10 / 10;
            this.maxRadius = i10 / 4;
            load();
            return;
        }
        throw new Exception("Size and iterations must be greater than 0!");
    }

    public void addCircleFault(float[][] fArr, Random random, float f10, float f11) {
        float sqrt;
        float nextFloat = random.nextFloat();
        float f12 = this.maxRadius;
        float f13 = this.minRadius;
        float f14 = (nextFloat * (f12 - f13)) + f13;
        int floor = (int) FastMath.floor(f14);
        int i10 = floor * 2;
        int nextInt = random.nextInt(this.size + i10) - floor;
        int nextInt2 = random.nextInt(this.size + i10) - floor;
        for (int i11 = 0; i11 < this.size; i11++) {
            for (int i12 = 0; i12 < this.size; i12++) {
                if (i11 == nextInt && i12 == nextInt2) {
                    sqrt = 0.0f;
                } else {
                    float f15 = i11 - nextInt;
                    float f16 = i12 - nextInt2;
                    float sqrt2 = FastMath.sqrt(FastMath.sqr(f15) + FastMath.sqr(f16));
                    sqrt = FastMath.sqrt(FastMath.sqr(i11 - (nextInt + ((f15 / sqrt2) * f14))) + FastMath.sqr(i12 - (nextInt2 + ((f16 / sqrt2) * f14)))) * FastMath.sign(sqrt2 - f14);
                }
                float[] fArr2 = fArr[i11];
                fArr2[i12] = fArr2[i12] + calcHeight(sqrt, random, f10, f11);
            }
        }
    }

    public void addFault(float[][] fArr, Random random) {
        float nextFloat = this.minFaultHeight + (random.nextFloat() * (this.maxFaultHeight - this.minFaultHeight));
        float nextFloat2 = this.minRange + (random.nextFloat() * (this.maxRange - this.minRange));
        int i10 = this.faultShape;
        if (i10 == 10) {
            addLineFault(fArr, random, nextFloat, nextFloat2);
        } else {
            if (i10 != 11) {
                return;
            }
            addCircleFault(fArr, random, nextFloat, nextFloat2);
        }
    }

    public void addLineFault(float[][] fArr, Random random, float f10, float f11) {
        int nextInt = random.nextInt(this.size);
        int nextInt2 = random.nextInt(this.size);
        int nextInt3 = random.nextInt(this.size);
        int nextInt4 = random.nextInt(this.size);
        for (int i10 = 0; i10 < this.size; i10++) {
            for (int i11 = 0; i11 < this.size; i11++) {
                float sqrt = (((i11 - nextInt3) * r7) - ((i10 - nextInt) * r9)) / FastMath.sqrt(FastMath.sqr(nextInt2 - nextInt) + FastMath.sqr(nextInt4 - nextInt3));
                float[] fArr2 = fArr[i10];
                fArr2[i11] = fArr2[i11] + calcHeight(sqrt, random, f10, f11);
            }
        }
    }

    public float calcHeight(float f10, Random random, float f11, float f12) {
        int i10 = this.faultType;
        if (i10 == 0) {
            return FastMath.sign(f10) * f11;
        }
        if (i10 == 1) {
            if (FastMath.abs(f10) > f12) {
                return FastMath.sign(f10) * f11;
            }
            return FastMath.sign(f10) * f11 * (FastMath.abs(f10) / f12);
        }
        if (i10 == 2) {
            return FastMath.abs(f10) > f12 ? (-FastMath.sign(f10)) * f11 : FastMath.cos((((f10 / f12) + 1.0f) * 3.1415927f) / 2.0f) * f11;
        }
        if (i10 == 3) {
            return FastMath.abs(f10) > f12 ? -f11 : FastMath.sin(((((f10 / f12) * 2.0f) + 1.0f) * 3.1415927f) / 2.0f) * f11;
        }
        throw new RuntimeException("Code needs update to switch allcases");
    }

    public int getFaultShape() {
        return this.faultShape;
    }

    public int getFaultType() {
        return this.faultType;
    }

    public int getIterations() {
        return this.iterations;
    }

    public float getMaxFaultHeight() {
        return this.maxFaultHeight;
    }

    public float getMaxRadius() {
        return this.maxRadius;
    }

    public float getMaxRange() {
        return this.maxRange;
    }

    public float getMinFaultHeight() {
        return this.minFaultHeight;
    }

    public float getMinRadius() {
        return this.minRadius;
    }

    public float getMinRange() {
        return this.minRange;
    }

    public long getSeed() {
        return this.seed;
    }

    @Override
    public boolean load() {
        if (this.heightData != null) {
            unloadHeightMap();
        }
        int i10 = this.size;
        this.heightData = new float[i10 * i10];
        float[][] fArr = (float[][]) Array.newInstance(Float.TYPE, i10, i10);
        Random random = new Random(this.seed);
        for (int i11 = 0; i11 < this.iterations; i11++) {
            addFault(fArr, random);
        }
        for (int i12 = 0; i12 < this.size; i12++) {
            for (int i13 = 0; i13 < this.size; i13++) {
                setHeightAtPoint(fArr[i12][i13], i12, i13);
            }
        }
        normalizeTerrain(AbstractHeightMap.NORMALIZE_RANGE);
        logger.log(Level.FINE, "Fault heightmap generated");
        return true;
    }

    public void setFaultShape(int i10) {
        this.faultShape = i10;
    }

    public void setFaultType(int i10) {
        this.faultType = i10;
    }

    public void setIterations(int i10) {
        this.iterations = i10;
    }

    public void setMaxFaultHeight(float f10) {
        this.maxFaultHeight = f10;
    }

    public void setMaxRadius(float f10) {
        this.maxRadius = f10;
    }

    public void setMaxRange(float f10) {
        this.maxRange = f10;
    }

    public void setMinFaultHeight(float f10) {
        this.minFaultHeight = f10;
    }

    public void setMinRadius(float f10) {
        this.minRadius = f10;
    }

    public void setMinRange(float f10) {
        this.minRange = f10;
    }

    public void setSeed(long j10) {
        this.seed = j10;
    }

    public FaultHeightMap(int i10, int i11, float f10, float f11) throws Exception {
        this(i10, i11, 0, 10, f10, f11, new Random().nextLong());
    }
}
