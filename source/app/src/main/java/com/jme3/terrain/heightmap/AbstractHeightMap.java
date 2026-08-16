package com.jme3.terrain.heightmap;

import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class AbstractHeightMap implements HeightMap {
    private static final Logger logger = Logger.getLogger(AbstractHeightMap.class.getName());
    public static float NORMALIZE_RANGE = 255.0f;
    protected float[] heightData = null;
    protected int size = 0;
    protected float heightScale = 1.0f;
    protected float filter = 0.5f;

    public void erodeTerrain() {
        int i10;
        int i11;
        int i12 = 0;
        while (true) {
            i10 = this.size;
            int i13 = 1;
            if (i12 >= i10) {
                break;
            }
            float f10 = this.heightData[i12];
            while (true) {
                int i14 = this.size;
                if (i13 < i14) {
                    float[] fArr = this.heightData;
                    float f11 = this.filter;
                    fArr[(i13 * i14) + i12] = (f10 * f11) + ((1.0f - f11) * fArr[(i13 * i14) + i12]);
                    f10 = fArr[(i14 * i13) + i12];
                    i13++;
                }
            }
            i12++;
        }
        for (int i15 = i10 - 1; i15 >= 0; i15--) {
            float f12 = this.heightData[i15];
            int i16 = 0;
            while (true) {
                int i17 = this.size;
                if (i16 < i17) {
                    float[] fArr2 = this.heightData;
                    float f13 = this.filter;
                    fArr2[(i16 * i17) + i15] = (f12 * f13) + ((1.0f - f13) * fArr2[(i16 * i17) + i15]);
                    f12 = fArr2[(i17 * i16) + i15];
                    i16++;
                }
            }
        }
        int i18 = 0;
        while (true) {
            i11 = this.size;
            if (i18 >= i11) {
                break;
            }
            float f14 = this.heightData[i18];
            int i19 = 0;
            while (true) {
                int i20 = this.size;
                if (i19 < i20) {
                    float[] fArr3 = this.heightData;
                    float f15 = this.filter;
                    fArr3[(i19 * i20) + i18] = (f14 * f15) + ((1.0f - f15) * fArr3[(i19 * i20) + i18]);
                    f14 = fArr3[(i20 * i19) + i18];
                    i19++;
                }
            }
            i18++;
        }
        for (int i21 = i11 - 1; i21 >= 0; i21--) {
            float f16 = this.heightData[i21];
            int i22 = 0;
            while (true) {
                int i23 = this.size;
                if (i22 < i23) {
                    float[] fArr4 = this.heightData;
                    float f17 = this.filter;
                    fArr4[(i22 * i23) + i21] = (f16 * f17) + ((1.0f - f17) * fArr4[(i22 * i23) + i21]);
                    f16 = fArr4[(i23 * i22) + i21];
                    i22++;
                }
            }
        }
    }

    public float[] findMinMaxHeights() {
        float f10 = this.heightData[0];
        float f11 = f10;
        int i10 = 0;
        while (true) {
            float[] fArr = this.heightData;
            if (i10 >= fArr.length) {
                return new float[]{f10, f11};
            }
            float f12 = fArr[i10];
            if (f12 > f11) {
                f11 = f12;
            } else if (f12 < f10) {
                f10 = f12;
            }
            i10++;
        }
    }

    public void flatten(byte b10) {
        if (b10 <= 1) {
            return;
        }
        float[] findMinMaxHeights = findMinMaxHeights();
        normalizeTerrain(1.0f);
        for (int i10 = 0; i10 < this.size; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.size;
                if (i11 < i12) {
                    float f10 = this.heightData[(i12 * i11) + i10];
                    float f11 = 1.0f;
                    for (int i13 = 0; i13 < b10; i13++) {
                        f11 *= f10;
                    }
                    this.heightData[(this.size * i11) + i10] = f11;
                    i11++;
                }
            }
        }
        normalizeTerrain(findMinMaxHeights[1] - findMinMaxHeights[0]);
    }

    @Override
    public float[] getHeightMap() {
        return this.heightData;
    }

    @Override
    public float getInterpolatedHeight(float f10, float f11) {
        int i10 = (int) f10;
        int i11 = (int) f11;
        float scaledHeightAtPoint = getScaledHeightAtPoint(i10, i11);
        if (f10 + 1.0f >= this.size) {
            return scaledHeightAtPoint;
        }
        float scaledHeightAtPoint2 = ((getScaledHeightAtPoint(i10 + 1, i11) - scaledHeightAtPoint) * (f10 - i10)) + scaledHeightAtPoint;
        if (1.0f + f11 >= this.size) {
            return scaledHeightAtPoint;
        }
        return (scaledHeightAtPoint2 + (((getScaledHeightAtPoint(i10, i11 + 1) - scaledHeightAtPoint) * (f11 - i11)) + scaledHeightAtPoint)) / 2.0f;
    }

    @Override
    public float getScaledHeightAtPoint(int i10, int i11) {
        return this.heightData[i10 + (i11 * this.size)] * this.heightScale;
    }

    @Override
    public float[] getScaledHeightMap() {
        float[] fArr = new float[this.heightData.length];
        int i10 = 0;
        while (true) {
            float[] fArr2 = this.heightData;
            if (i10 >= fArr2.length) {
                return fArr;
            }
            fArr[i10] = this.heightScale * fArr2[i10];
            i10++;
        }
    }

    @Override
    public int getSize() {
        return this.size;
    }

    @Override
    public float getTrueHeightAtPoint(int i10, int i11) {
        return this.heightData[i10 + (i11 * this.size)];
    }

    public void normalizeTerrain(float f10) {
        float f11 = this.heightData[0];
        float f12 = f11;
        for (int i10 = 0; i10 < this.size; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.size;
                if (i11 < i12) {
                    float[] fArr = this.heightData;
                    if (fArr[(i11 * i12) + i10] > f11) {
                        f11 = fArr[(i12 * i11) + i10];
                    } else if (fArr[(i11 * i12) + i10] < f12) {
                        f12 = fArr[(i12 * i11) + i10];
                    }
                    i11++;
                }
            }
        }
        if (f11 <= f12) {
            return;
        }
        float f13 = f11 - f12;
        for (int i13 = 0; i13 < this.size; i13++) {
            int i14 = 0;
            while (true) {
                int i15 = this.size;
                if (i14 < i15) {
                    float[] fArr2 = this.heightData;
                    fArr2[(i14 * i15) + i13] = ((fArr2[(i15 * i14) + i13] - f12) / f13) * f10;
                    i14++;
                }
            }
        }
    }

    public boolean save(String str) throws Exception {
        DataOutputStream dataOutputStream;
        if (str == null) {
            throw new Exception("Filename must not be null");
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                try {
                    dataOutputStream = new DataOutputStream(fileOutputStream2);
                    for (int i10 = 0; i10 < this.size; i10++) {
                        try {
                            int i11 = 0;
                            while (true) {
                                int i12 = this.size;
                                if (i11 < i12) {
                                    dataOutputStream.write((int) this.heightData[(i12 * i10) + i11]);
                                    i11++;
                                }
                            }
                        } catch (FileNotFoundException unused) {
                            fileOutputStream = fileOutputStream2;
                            logger.log(Level.WARNING, "Error opening file {0}", str);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                            }
                            return false;
                        } catch (IOException unused2) {
                            fileOutputStream = fileOutputStream2;
                            logger.log(Level.WARNING, "Error writing to file {0}", str);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                            }
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                            }
                            throw th;
                        }
                    }
                    fileOutputStream2.close();
                    dataOutputStream.close();
                    fileOutputStream2.close();
                    dataOutputStream.close();
                    logger.log(Level.FINE, "Saved terrain to {0}", str);
                    return true;
                } catch (FileNotFoundException unused3) {
                    dataOutputStream = null;
                } catch (IOException unused4) {
                    dataOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    dataOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (FileNotFoundException unused5) {
            dataOutputStream = null;
        } catch (IOException unused6) {
            dataOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            dataOutputStream = null;
        }
    }

    @Override
    public void setHeightAtPoint(float f10, int i10, int i11) {
        this.heightData[i10 + (i11 * this.size)] = f10;
    }

    @Override
    public void setHeightScale(float f10) {
        this.heightScale = f10;
    }

    @Override
    public void setMagnificationFilter(float f10) throws Exception {
        if (f10 < 0.0f || f10 >= 1.0f) {
            throw new Exception("filter must be between 0 and 1");
        }
        this.filter = f10;
    }

    @Override
    public void setSize(int i10) throws Exception {
        if (i10 <= 0) {
            throw new Exception("size must be greater than zero.");
        }
        this.size = i10;
    }

    public void smooth(float f10) {
        smooth(f10, 1);
    }

    @Override
    public void unloadHeightMap() {
        this.heightData = null;
    }

    public void smooth(float f10, int i10) {
        int i11;
        int i12;
        if (f10 < 0.0f || f10 > 1.0f) {
            return;
        }
        int i13 = i10 == 0 ? 1 : i10;
        for (int i14 = 0; i14 < this.size; i14++) {
            for (int i15 = 0; i15 < this.size; i15++) {
                int i16 = -i13;
                float f11 = 0.0f;
                int i17 = 0;
                for (int i18 = i16; i18 <= i13; i18++) {
                    for (int i19 = i16; i19 <= i13; i19++) {
                        int i20 = i14 + i18;
                        if (i20 >= 0 && i20 < (i11 = this.size) && (i12 = i15 + i19) >= 0 && i12 < i11) {
                            i17++;
                            f11 += this.heightData[i20 + (i12 * i11)];
                        }
                    }
                }
                float f12 = f11 / i17;
                float[] fArr = this.heightData;
                int i21 = this.size;
                fArr[(i15 * i21) + i14] = (f12 * f10) + (fArr[(i21 * i15) + i14] * (1.0f - f10));
            }
        }
    }
}
