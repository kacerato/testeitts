package com.jme3.terrain.heightmap;

import com.jme3.math.FastMath;
import java.lang.reflect.Array;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MidpointDisplacementHeightMap extends AbstractHeightMap {
    private static final Logger logger = Logger.getLogger(MidpointDisplacementHeightMap.class.getName());
    private float persistence;
    private float range;
    private long seed;

    public MidpointDisplacementHeightMap(int i10, float f10, float f11, long j10) {
        if (i10 >= 0 && FastMath.isPowerOfTwo(i10 - 1)) {
            this.size = i10;
            this.range = f10;
            this.persistence = f11;
            this.seed = j10;
            load();
            return;
        }
        throw new IllegalArgumentException("The size is negative or not of the form 2^N +1 (a power of two plus one)");
    }

    public int[] doDiamondStep(float[][] fArr, int[] iArr, int i10, float f10, Random random) {
        int i11;
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = i10 / 2;
        int[] iArr2 = {0, i14, i10, i14};
        int i15 = (-i10) / 2;
        int[] iArr3 = {0, i15, 0, i14};
        float f11 = 0.0f;
        int i16 = 0;
        for (int i17 = 0; i17 < 4; i17++) {
            int i18 = iArr2[i17] + i12;
            if (i18 >= 0) {
                int i19 = this.size;
                if (i18 <= i19 - 1 && (i11 = iArr3[i17] + i13) >= 0 && i11 <= i19 - 1) {
                    f11 += fArr[i18][i11];
                    i16++;
                }
            }
        }
        float f12 = f11 / i16;
        fArr[i12 + i14][i13] = f12 + getOffset(random, f10, iArr, f12);
        int i20 = ((i10 * 3) / 2) + i12;
        int i21 = this.size;
        if (i20 < i21) {
            return new int[]{i12 + i10, i13};
        }
        int i22 = i13 + i14;
        if (i22 < i21) {
            return i12 + i10 == i21 - 1 ? new int[]{i15, i22} : new int[]{0, i22};
        }
        return null;
    }

    public int[] doSquareStep(float[][] fArr, int[] iArr, int i10, float f10, Random random) {
        int i11 = iArr[0];
        int i12 = iArr[1];
        float[] fArr2 = fArr[i11];
        float f11 = fArr2[i12] + 0.0f;
        int i13 = i11 + i10;
        float[] fArr3 = fArr[i13];
        int i14 = i12 + i10;
        float f12 = (((f11 + fArr3[i12]) + fArr3[i14]) + fArr2[i14]) / 4.0f;
        float offset = getOffset(random, f10, iArr, f12);
        int i15 = i10 / 2;
        fArr[i11 + i15][i15 + i12] = f12 + offset;
        int i16 = (i10 * 3) / 2;
        int i17 = i11 + i16;
        int i18 = this.size;
        if (i17 < i18) {
            return new int[]{i13, i12};
        }
        if (i12 + i16 < i18) {
            return new int[]{0, i14};
        }
        return null;
    }

    public float getOffset(Random random, float f10, int[] iArr, float f11) {
        return (random.nextFloat() - 0.5f) * 2.0f * f10;
    }

    public float getPersistence() {
        return this.persistence;
    }

    public float getRange() {
        return this.range;
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
        fArr[0][0] = random.nextFloat();
        fArr[0][this.size - 1] = random.nextFloat();
        fArr[this.size - 1][0] = random.nextFloat();
        int i11 = this.size;
        fArr[i11 - 1][i11 - 1] = random.nextFloat();
        float f10 = this.range;
        int i12 = this.size - 1;
        while (i12 > 1) {
            int[] iArr = {0, 0};
            while (iArr != null) {
                iArr = doSquareStep(fArr, iArr, i12, f10, random);
            }
            int[] iArr2 = {0, 0};
            while (iArr2 != null) {
                iArr2 = doDiamondStep(fArr, iArr2, i12, f10, random);
            }
            i12 /= 2;
            f10 *= this.persistence;
        }
        for (int i13 = 0; i13 < this.size; i13++) {
            for (int i14 = 0; i14 < this.size; i14++) {
                setHeightAtPoint(fArr[i13][i14], i14, i13);
            }
        }
        normalizeTerrain(AbstractHeightMap.NORMALIZE_RANGE);
        logger.log(Level.FINE, "Midpoint displacement heightmap generated");
        return true;
    }

    public void setPersistence(float f10) {
        this.persistence = f10;
    }

    public void setRange(float f10) {
        this.range = f10;
    }

    public void setSeed(long j10) {
        this.seed = j10;
    }

    public MidpointDisplacementHeightMap(int i10, float f10, float f11) throws Exception {
        this(i10, f10, f11, new Random().nextLong());
    }
}
