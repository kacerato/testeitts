package com.jme3.terrain.heightmap;

import java.lang.reflect.Array;
import java.util.logging.Logger;

public class ParticleDepositionHeightMap extends AbstractHeightMap {
    private static final Logger logger = Logger.getLogger(ParticleDepositionHeightMap.class.getName());
    private float caldera;
    private int jumps;
    private int maxParticles;
    private int minParticles;
    private int peakWalk;

    public ParticleDepositionHeightMap(int i10, int i11, int i12, int i13, int i14, float f10) throws Exception {
        if (i10 <= 0 || i11 < 0 || i12 < 0 || i13 > i14 || i13 < 0 || i14 < 0) {
            throw new Exception("values must be greater than zero, and minParticles must be greater than maxParticles");
        }
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new Exception("Caldera level must be between 0 and 1");
        }
        this.size = i10;
        this.jumps = i11;
        this.peakWalk = i12;
        this.minParticles = i13;
        this.maxParticles = i14;
        this.caldera = f10;
        load();
    }

    @Override
    public boolean load() {
        int i10;
        int i11 = this.size;
        int[] iArr = {0, 1, 0, i11 - 1, 1, 1, i11 - 1, i11 - 1};
        int[] iArr2 = {1, 0, i11 - 1, 0, i11 - 1, 1, i11 - 1, 1};
        int i12 = 1;
        float[][] fArr = (float[][]) Array.newInstance(Float.TYPE, i11, i11);
        int i13 = this.size;
        int[][] iArr3 = (int[][]) Array.newInstance(Integer.TYPE, i13, i13);
        if (this.heightData != null) {
            unloadHeightMap();
        }
        int i14 = this.size;
        this.heightData = new float[i14 * i14];
        int i15 = 0;
        while (i15 < this.jumps) {
            int rint = (int) Math.rint(Math.random() * (this.size - i12));
            int rint2 = (int) Math.rint(Math.random() * (this.size - i12));
            double random = Math.random();
            int i16 = this.maxParticles;
            int i17 = i15;
            int rint3 = (int) Math.rint((random * (i16 - r14)) + this.minParticles);
            int i18 = rint;
            int i19 = rint2;
            int i20 = 0;
            while (i20 < rint3) {
                int i21 = this.peakWalk;
                if (i21 == 0 || i20 % i21 != 0) {
                    i10 = rint3;
                } else {
                    i10 = rint3;
                    int rint4 = (int) Math.rint(Math.random() * 7.0d);
                    int i22 = i18 + iArr[rint4];
                    int i23 = this.size;
                    i18 = (i22 + i23) % i23;
                    i19 = ((i19 + iArr2[rint4]) + i23) % i23;
                }
                float[] fArr2 = fArr[i18];
                fArr2[i19] = fArr2[i19] + 1.0f;
                int i24 = i18;
                int i25 = i19;
                boolean z10 = false;
                while (!z10) {
                    int rint5 = (int) Math.rint(Math.random() * 8.0d);
                    int i26 = 0;
                    while (true) {
                        if (i26 >= 8) {
                            z10 = true;
                            break;
                        }
                        int i27 = (i26 + rint5) % 8;
                        int i28 = iArr[i27] + i24;
                        int i29 = this.size;
                        int i30 = i28 % i29;
                        int i31 = (i25 + iArr2[i27]) % i29;
                        float[] fArr3 = fArr[i30];
                        float f10 = fArr3[i31];
                        float f11 = f10 + 1.0f;
                        float[] fArr4 = fArr[i24];
                        if (f11 < fArr4[i25]) {
                            fArr3[i31] = f10 + 1.0f;
                            fArr4[i25] = fArr4[i25] - 1.0f;
                            i24 = i30;
                            i25 = i31;
                            z10 = false;
                            break;
                        }
                        i26++;
                    }
                }
                if (fArr[i24][i25] > fArr[rint][rint2]) {
                    rint = i24;
                    rint2 = i25;
                }
                i20++;
                rint3 = i10;
            }
            float f12 = fArr[rint][rint2];
            float f13 = (1.0f - this.caldera) * f12;
            iArr3[rint][rint2] = 1;
            int i32 = rint;
            int i33 = rint2;
            boolean z11 = false;
            while (!z11) {
                int i34 = i32;
                int i35 = i33;
                int i36 = rint;
                int i37 = rint2;
                z11 = true;
                while (rint <= i32) {
                    int[] iArr4 = iArr;
                    int i38 = rint2;
                    int i39 = i35;
                    while (i38 <= i33) {
                        int[] iArr5 = iArr2;
                        int i40 = this.size;
                        int i41 = (rint + i40) % i40;
                        int i42 = (i38 + i40) % i40;
                        int[] iArr6 = iArr3[i41];
                        int i43 = i32;
                        int i44 = i33;
                        if (iArr6[i42] == 1) {
                            iArr6[i42] = 2;
                            float[] fArr5 = fArr[i41];
                            float f14 = fArr5[i42];
                            if (f14 > f13 && f14 <= f12) {
                                fArr5[i42] = (2.0f * f13) - f14;
                                int[] iArr7 = iArr3[(i41 + 1) % i40];
                                if (iArr7[i42] == 0) {
                                    int i45 = rint + 1;
                                    if (i45 > i34) {
                                        i34 = i45;
                                    }
                                    iArr7[i42] = 1;
                                }
                                int[] iArr8 = iArr3[((r17 + i40) - 2) % i40];
                                if (iArr8[i42] == 0) {
                                    int i46 = rint - 1;
                                    if (i46 < i36) {
                                        i36 = i46;
                                    }
                                    iArr8[i42] = 1;
                                }
                                int i47 = (i42 + 1) % i40;
                                int[] iArr9 = iArr3[(rint + i40) % i40];
                                if (iArr9[i47] == 0) {
                                    int i48 = i38 + 1;
                                    if (i48 > i39) {
                                        i39 = i48;
                                    }
                                    iArr9[i47] = 1;
                                }
                                int i49 = ((i47 + i40) - 2) % i40;
                                if (iArr9[i49] == 0) {
                                    int i50 = i38 - 1;
                                    if (i50 < i37) {
                                        i37 = i50;
                                    }
                                    iArr9[i49] = 1;
                                }
                                z11 = false;
                                i38++;
                                iArr2 = iArr5;
                                i32 = i43;
                                i33 = i44;
                            }
                        }
                        i38++;
                        iArr2 = iArr5;
                        i32 = i43;
                        i33 = i44;
                    }
                    rint++;
                    i35 = i39;
                    iArr = iArr4;
                }
                rint = i36;
                i32 = i34;
                rint2 = i37;
                i33 = i35;
            }
            i15 = i17 + 1;
            i12 = 1;
        }
        for (int i51 = 0; i51 < this.size; i51++) {
            for (int i52 = 0; i52 < this.size; i52++) {
                setHeightAtPoint(fArr[i51][i52], i52, i51);
            }
        }
        erodeTerrain();
        normalizeTerrain(AbstractHeightMap.NORMALIZE_RANGE);
        logger.fine("Created heightmap using Particle Deposition");
        return true;
    }

    public void setCaldera(float f10) throws Exception {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new Exception("Caldera level must be between 0 and 1");
        }
        this.caldera = f10;
    }

    public void setJumps(int i10) throws Exception {
        if (i10 < 0) {
            throw new Exception("jumps must be positive");
        }
        this.jumps = i10;
    }

    public void setMaxParticles(int i10) {
        this.maxParticles = i10;
    }

    public void setMinParticles(int i10) throws Exception {
        if (i10 > this.maxParticles) {
            throw new Exception("minParticles must be less than the current maxParticles");
        }
        this.minParticles = i10;
    }

    public void setPeakWalk(int i10) throws Exception {
        if (i10 <= 0) {
            throw new Exception("peakWalk must be greater than zero");
        }
        this.peakWalk = i10;
    }
}
