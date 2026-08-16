package com.jme3.terrain.heightmap;

import java.lang.reflect.Array;
import java.util.Random;
import java.util.logging.Logger;

public class HillHeightMap extends AbstractHeightMap {
    private static final Logger logger = Logger.getLogger(HillHeightMap.class.getName());
    private int iterations;
    private float maxRadius;
    private float minRadius;
    private long seed;

    public HillHeightMap(int i10, int i11, float f10, float f11, long j10) throws Exception {
        if (i10 > 0 && i11 > 0 && f10 > 0.0f && f11 > 0.0f && f10 < f11) {
            logger.fine("Constructing hill heightmap using seed: " + j10);
            this.size = i10;
            this.seed = j10;
            this.iterations = i11;
            this.minRadius = f10;
            this.maxRadius = f11;
            load();
            return;
        }
        throw new Exception("Either size of the terrain is not greater than zero, or number of iterations is not greater than zero, or minimum or maximum radius are not greater than zero, or minimum radius is greater than maximum radius, or power of flattening is below one");
    }

    private float randomRange(Random random, float f10, float f11) {
        return ((random.nextInt() * (f11 - f10)) / 2.1474836E9f) + f10;
    }

    public void addHill(float[][] fArr, Random random) {
        float randomRange = randomRange(random, this.minRadius, this.maxRadius);
        float f10 = -randomRange;
        float randomRange2 = randomRange(random, f10, this.size + randomRange);
        float randomRange3 = randomRange(random, f10, this.size + randomRange);
        float f11 = randomRange * randomRange;
        int round = Math.round((randomRange2 - randomRange) - 1.0f);
        int round2 = Math.round(randomRange2 + randomRange + 1.0f);
        int round3 = Math.round((randomRange3 - randomRange) - 1.0f);
        int round4 = Math.round(randomRange + randomRange3 + 1.0f);
        if (round < 0) {
            round = 0;
        }
        int i10 = this.size;
        if (round2 > i10) {
            round2 = i10 - 1;
        }
        if (round3 < 0) {
            round3 = 0;
        }
        if (round4 > i10) {
            round4 = i10 - 1;
        }
        while (round <= round2) {
            for (int i11 = round3; i11 <= round4; i11++) {
                float f12 = randomRange2 - round;
                float f13 = randomRange3 - i11;
                float f14 = f11 - ((f12 * f12) + (f13 * f13));
                if (f14 > 0.0f) {
                    float[] fArr2 = fArr[round];
                    fArr2[i11] = fArr2[i11] + f14;
                }
            }
            round++;
        }
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
            addHill(fArr, random);
        }
        for (int i12 = 0; i12 < this.size; i12++) {
            for (int i13 = 0; i13 < this.size; i13++) {
                setHeightAtPoint(fArr[i12][i13], i13, i12);
            }
        }
        normalizeTerrain(AbstractHeightMap.NORMALIZE_RANGE);
        logger.fine("Created Heightmap using the Hill Algorithm");
        return true;
    }

    public void setIterations(int i10) throws Exception {
        if (i10 <= 0) {
            throw new Exception("Number of iterations is not greater than zero");
        }
        this.iterations = i10;
    }

    public void setMaxRadius(float f10) throws Exception {
        if (f10 <= 0.0f || f10 <= this.minRadius) {
            throw new Exception("The maximum radius is not greater than 0, or not greater than the minimum radius");
        }
        this.maxRadius = f10;
    }

    public void setMinRadius(float f10) throws Exception {
        if (f10 <= 0.0f || f10 >= this.maxRadius) {
            throw new Exception("The minimum radius is not greater than 0, or not lower than the maximum radius");
        }
        this.minRadius = f10;
    }

    public HillHeightMap(int i10, int i11, float f10, float f11) throws Exception {
        this(i10, i11, f10, f11, new Random().nextLong());
    }
}
