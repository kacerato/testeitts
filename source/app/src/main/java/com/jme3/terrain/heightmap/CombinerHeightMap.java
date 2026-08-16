package com.jme3.terrain.heightmap;

import java.util.logging.Logger;

public class CombinerHeightMap extends AbstractHeightMap {
    public static final int ADDITION = 0;
    public static final int SUBTRACTION = 1;
    private static final Logger logger = Logger.getLogger(CombinerHeightMap.class.getName());
    private float factor1;
    private float factor2;
    private AbstractHeightMap map1;
    private AbstractHeightMap map2;
    private int mode;

    public CombinerHeightMap(AbstractHeightMap abstractHeightMap, AbstractHeightMap abstractHeightMap2, int i10) throws Exception {
        this.factor1 = 0.5f;
        this.factor2 = 0.5f;
        if (abstractHeightMap != null && abstractHeightMap2 != null) {
            if (abstractHeightMap.getSize() != abstractHeightMap2.getSize()) {
                throw new Exception("The two maps must be of the same size");
            }
            if (this.factor1 + this.factor2 == 1.0f) {
                this.size = abstractHeightMap.getSize();
                this.map1 = abstractHeightMap;
                this.map2 = abstractHeightMap2;
                setMode(i10);
                load();
                return;
            }
            throw new Exception("factor1 and factor2 must add to 1.0");
        }
        throw new Exception("Height map may not be null");
    }

    @Override
    public boolean load() {
        if (this.heightData != null) {
            unloadHeightMap();
        }
        int i10 = this.size;
        this.heightData = new float[i10 * i10];
        float[] heightMap = this.map1.getHeightMap();
        float[] heightMap2 = this.map2.getHeightMap();
        int i11 = this.mode;
        if (i11 == 0) {
            for (int i12 = 0; i12 < this.size; i12++) {
                int i13 = 0;
                while (true) {
                    int i14 = this.size;
                    if (i13 < i14) {
                        this.heightData[(i13 * i14) + i12] = (int) ((heightMap[(i13 * i14) + i12] * this.factor1) + (heightMap2[(i14 * i13) + i12] * this.factor2));
                        i13++;
                    }
                }
            }
        } else if (i11 == 1) {
            for (int i15 = 0; i15 < this.size; i15++) {
                int i16 = 0;
                while (true) {
                    int i17 = this.size;
                    if (i16 < i17) {
                        this.heightData[(i16 * i17) + i15] = (int) ((heightMap[(i16 * i17) + i15] * this.factor1) - (heightMap2[(i17 * i16) + i15] * this.factor2));
                        i16++;
                    }
                }
            }
        }
        logger.fine("Created heightmap using Combiner");
        return true;
    }

    public void setFactors(float f10, float f11) throws Exception {
        if (f10 + f11 != 1.0f) {
            throw new Exception("factor1 and factor2 must add to 1.0");
        }
        this.factor1 = f10;
        this.factor2 = f11;
    }

    public void setHeightMaps(AbstractHeightMap abstractHeightMap, AbstractHeightMap abstractHeightMap2) throws Exception {
        if (abstractHeightMap == null || abstractHeightMap2 == null) {
            throw new Exception("Height map may not be null");
        }
        if (abstractHeightMap.getSize() != abstractHeightMap2.getSize()) {
            throw new Exception("The two maps must be of the same size");
        }
        this.size = abstractHeightMap.getSize();
        this.map1 = abstractHeightMap;
        this.map2 = abstractHeightMap2;
    }

    public void setMode(int i10) throws Exception {
        if (i10 != 0 && i10 != 1) {
            throw new Exception("Invalid mode");
        }
        this.mode = i10;
    }

    public CombinerHeightMap(AbstractHeightMap abstractHeightMap, float f10, AbstractHeightMap abstractHeightMap2, float f11, int i10) throws Exception {
        this.factor1 = 0.5f;
        this.factor2 = 0.5f;
        if (abstractHeightMap != null && abstractHeightMap2 != null) {
            if (abstractHeightMap.getSize() != abstractHeightMap2.getSize()) {
                throw new Exception("The two maps must be of the same size");
            }
            if (f10 + f11 == 1.0f) {
                setMode(i10);
                this.size = abstractHeightMap.getSize();
                this.map1 = abstractHeightMap;
                this.map2 = abstractHeightMap2;
                this.factor1 = f10;
                this.factor2 = f11;
                this.mode = i10;
                load();
                return;
            }
            throw new Exception("factor1 and factor2 must add to 1.0");
        }
        throw new Exception("Height map may not be null");
    }
}
