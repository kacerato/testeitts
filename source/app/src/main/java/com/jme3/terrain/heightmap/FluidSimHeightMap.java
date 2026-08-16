package com.jme3.terrain.heightmap;

import java.lang.reflect.Array;
import java.util.Random;
import java.util.logging.Logger;

public class FluidSimHeightMap extends AbstractHeightMap {
    private static final Logger logger = Logger.getLogger(FluidSimHeightMap.class.getName());
    float coefA;
    float coefB;
    float coefC;
    private int iterations;
    private float maxInitialHeight;
    private float minInitialHeight;
    private float nodeDistance;
    private long seed;
    private float timeStep;
    private float viscosity;
    private float waveSpeed;

    public FluidSimHeightMap(int i10, int i11, float f10, float f11, float f12, float f13, float f14, float f15, long j10) throws Exception {
        this.waveSpeed = 100.0f;
        this.timeStep = 0.033f;
        this.nodeDistance = 10.0f;
        this.viscosity = 100.0f;
        this.minInitialHeight = -500.0f;
        this.maxInitialHeight = 500.0f;
        if (i10 > 0 && i11 > 0 && f10 < f11) {
            this.size = i10;
            this.seed = j10;
            this.iterations = i11;
            this.minInitialHeight = f10;
            this.maxInitialHeight = f11;
            this.viscosity = f12;
            this.waveSpeed = f13;
            this.timeStep = f14;
            this.nodeDistance = f15;
            load();
            return;
        }
        throw new Exception("Either size of the terrain is not greater that zero, or number of iterations is not greater that zero, or minimum height greater or equal as the maximum, or maximum height smaller or equal as the minimum.");
    }

    private float randomRange(Random random, float f10, float f11) {
        return (random.nextFloat() * (f11 - f10)) + f10;
    }

    @Override
    public boolean load() {
        int i10;
        if (this.heightData != null) {
            unloadHeightMap();
        }
        int i11 = this.size;
        this.heightData = new float[i11 * i11];
        float[][] fArr = (float[][]) Array.newInstance(Float.TYPE, 2, i11 * i11);
        Random random = new Random(this.seed);
        float f10 = this.waveSpeed;
        float f11 = this.timeStep;
        float f12 = this.nodeDistance;
        float f13 = this.viscosity;
        this.coefA = (4.0f - (((((8.0f * f10) * f10) * f11) * f11) / (f12 * f12))) / ((f13 * f11) + 2.0f);
        this.coefB = ((f13 * f11) - 2.0f) / ((f13 * f11) + 2.0f);
        this.coefC = (((((f10 * 2.0f) * f10) * f11) * f11) / (f12 * f12)) / ((f13 * f11) + 2.0f);
        for (int i12 = 0; i12 < this.size; i12++) {
            int i13 = 0;
            while (true) {
                int i14 = this.size;
                if (i13 < i14) {
                    float randomRange = randomRange(random, this.minInitialHeight, this.maxInitialHeight);
                    fArr[1][(i14 * i12) + i13] = randomRange;
                    fArr[0][(i12 * i14) + i13] = randomRange;
                    i13++;
                }
            }
        }
        int i15 = 0;
        int i16 = 0;
        while (i15 < this.iterations) {
            int i17 = 1 - i16;
            float[] fArr2 = fArr[i17];
            float[] fArr3 = fArr[i16];
            for (int i18 = 0; i18 < this.size; i18++) {
                int i19 = 0;
                while (true) {
                    int i20 = this.size;
                    if (i19 < i20) {
                        int i21 = (i18 * i20) + i19;
                        float f14 = 0.0f;
                        if (i19 > 0) {
                            f14 = 0.0f + fArr3[i21 - 1];
                            i10 = 1;
                        } else {
                            i10 = 0;
                        }
                        if (i19 < i20 - 1) {
                            f14 += fArr3[i21 + 1];
                            i10++;
                        }
                        if (i18 > 0) {
                            f14 += fArr3[i21 - i20];
                            i10++;
                        }
                        if (i18 < i20 - 1) {
                            f14 += fArr3[i20 + i21];
                            i10++;
                        }
                        if (i10 != 4) {
                            f14 *= 4 / i10;
                        }
                        fArr2[i21] = (this.coefA * fArr3[i21]) + (this.coefB * fArr2[i21]) + (this.coefC * f14);
                        i19++;
                    }
                }
            }
            i15++;
            i16 = i17;
        }
        for (int i22 = 0; i22 < this.size; i22++) {
            int i23 = 0;
            while (true) {
                int i24 = this.size;
                if (i23 < i24) {
                    this.heightData[(i22 * i24) + i23] = fArr[i16][(i24 * i22) + i23];
                    i23++;
                }
            }
        }
        normalizeTerrain(AbstractHeightMap.NORMALIZE_RANGE);
        logger.fine("Created Heightmap using fluid simulation");
        return true;
    }

    public void setIterations(int i10) throws Exception {
        if (i10 <= 0) {
            throw new Exception("Number of iterations is not greater than zero");
        }
        this.iterations = i10;
    }

    public void setMaxInitialHeight(float f10) {
        this.maxInitialHeight = f10;
    }

    public void setMinInitialHeight(float f10) {
        this.minInitialHeight = f10;
    }

    public void setNodeDistance(float f10) {
        this.nodeDistance = f10;
    }

    public void setTimeStep(float f10) {
        this.timeStep = f10;
    }

    public void setViscosity(float f10) {
        this.viscosity = f10;
    }

    public void setWaveSpeed(float f10) {
        this.waveSpeed = f10;
    }

    public FluidSimHeightMap(int i10, int i11) throws Exception {
        this.waveSpeed = 100.0f;
        this.timeStep = 0.033f;
        this.nodeDistance = 10.0f;
        this.viscosity = 100.0f;
        this.minInitialHeight = -500.0f;
        this.maxInitialHeight = 500.0f;
        if (i10 > 0 && i11 > 0) {
            this.size = i10;
            this.iterations = i11;
            load();
            return;
        }
        throw new Exception("Either size of the terrain is not greater than zero, or number of iterations is not greater than zero");
    }
}
