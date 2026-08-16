package com.jme3.terrain.geomipmap;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.FastMath;
import com.jme3.math.Triangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.terrain.GeoMap;
import com.jme3.util.BufferUtils;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public class LODGeomap extends GeoMap {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$scene$VertexBuffer$Format;

        static {
            int[] iArr = new int[VertexBuffer.Format.values().length];
            $SwitchMap$com$jme3$scene$VertexBuffer$Format = iArr;
            try {
                iArr[VertexBuffer.Format.UnsignedInt.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedShort.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedByte.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class VerboseBuffer {
        int count = 0;
        private IndexBuffer delegate;

        public VerboseBuffer(IndexBuffer indexBuffer) {
            this.delegate = indexBuffer;
        }

        public int getCount() {
            return this.count;
        }

        public void put(int i10) {
            this.delegate.put(this.count, i10);
            this.count++;
        }
    }

    public LODGeomap() {
    }

    private int calculateNumIndexesLodDiff(int i10) {
        if (i10 == 0) {
            i10 = 1;
        }
        int width = (getWidth() - 1) / i10;
        int i11 = width - 1;
        return (((i11 * i11) * 2) - (i11 * 2)) + ((width - 3) * 2) + ((getWidth() / i10) * 8) + 11;
    }

    public static Vector3f calculateTangent(Vector3f[] vector3fArr, Vector2f[] vector2fArr, Vector3f vector3f, Vector3f vector3f2) {
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        Vector2f vector2f = new Vector2f();
        Vector2f vector2f2 = new Vector2f();
        vector2fArr[2].subtract(vector2fArr[0], vector2f2);
        vector2fArr[1].subtract(vector2fArr[0], vector2f);
        float f10 = vector2f.f81609x * vector2f2.f81610y;
        if (Math.abs(f10) < 1.0E-7f) {
            f10 = 1.0f;
        }
        vector3fArr[1].subtract(vector3fArr[0], vector3f3);
        vector3fArr[2].subtract(vector3fArr[0], vector3f4);
        vector3f.set(vector3f3);
        vector3f.normalizeLocal();
        vector3f2.set(vector3f4);
        vector3f2.normalizeLocal();
        float f11 = 1.0f / f10;
        float f12 = vector2f2.f81610y;
        vector3f.f81611x = vector3f3.f81611x * f12 * f11;
        vector3f.f81612y = 0.0f;
        vector3f.f81613z = f12 * vector3f3.f81613z * f11;
        vector3f.normalizeLocal();
        vector3f2.f81611x = 0.0f;
        float f13 = vector2f.f81609x;
        vector3f2.f81612y = vector3f4.f81612y * f13 * f11;
        vector3f2.f81613z = f13 * vector3f4.f81613z * f11;
        vector3f2.normalizeLocal();
        return vector3f;
    }

    private Vector3f getNormal(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, Vector3f vector3f5) {
        float f10 = vector3f.f81611x;
        float f11 = vector3f2.f81611x;
        float f12 = vector3f.f81612y;
        float f13 = vector3f2.f81612y;
        float f14 = vector3f.f81613z;
        float f15 = vector3f2.f81613z;
        float f16 = vector3f4.f81611x;
        float f17 = (f10 - f11) * f16;
        float f18 = vector3f4.f81612y;
        float f19 = (f12 - f13) * f18;
        float f20 = vector3f4.f81613z;
        float f21 = (f14 - f15) * f20;
        float f22 = vector3f3.f81611x - f11;
        float f23 = f22 * f16;
        float f24 = (vector3f3.f81612y - f13) * f18;
        float f25 = (vector3f3.f81613z - f15) * f20;
        float f26 = (f19 * f25) - (f21 * f24);
        float f27 = (f21 * f23) - (f25 * f17);
        float f28 = (f17 * f24) - (f19 * f23);
        float sqrt = 1.0f / FastMath.sqrt(((f26 * f26) + (f27 * f27)) + (f28 * f28));
        vector3f5.f81611x = f26 * sqrt;
        vector3f5.f81612y = f27 * sqrt;
        vector3f5.f81613z = f28 * sqrt;
        return vector3f5;
    }

    public Mesh createMesh(Vector3f vector3f, Vector2f vector2f, Vector2f vector2f2, float f10, int i10, boolean z10) {
        return createMesh(vector3f, vector2f, vector2f2, f10, i10, z10, 1, false, false, false, false);
    }

    public int findClosestHeightIndex(int i10, int i11) {
        if (i10 >= 0) {
            int i12 = this.width;
            if (i10 < i12 - 1 && i11 >= 0 && i11 < i12 - 1) {
                return (i11 * i12) + i10;
            }
        }
        return -1;
    }

    public Triangle[] getGridTrianglesAtPoint(float f10, float f11, Vector3f vector3f, Vector3f vector3f2) {
        Triangle[] gridTrianglesAtPoint = getGridTrianglesAtPoint(f10, f11);
        if (gridTrianglesAtPoint != null) {
            gridTrianglesAtPoint[0].get1().multLocal(vector3f).addLocal(vector3f2);
            gridTrianglesAtPoint[0].get2().multLocal(vector3f).addLocal(vector3f2);
            gridTrianglesAtPoint[0].get3().multLocal(vector3f).addLocal(vector3f2);
            gridTrianglesAtPoint[1].get1().multLocal(vector3f).addLocal(vector3f2);
            gridTrianglesAtPoint[1].get2().multLocal(vector3f).addLocal(vector3f2);
            gridTrianglesAtPoint[1].get3().multLocal(vector3f).addLocal(vector3f2);
        }
        return gridTrianglesAtPoint;
    }

    public float getHeight(int i10, int i11, float f10, float f11) {
        int findClosestHeightIndex = findClosestHeightIndex(i10, i11);
        if (findClosestHeightIndex < 0) {
            return Float.NaN;
        }
        float[] fArr = this.hdata;
        float f12 = fArr[findClosestHeightIndex];
        float f13 = fArr[findClosestHeightIndex + 1];
        int i12 = this.width;
        float f14 = fArr[findClosestHeightIndex + i12];
        float f15 = fArr[findClosestHeightIndex + i12 + 1];
        if ((i10 == 0 && i11 == 0) || (i10 == i12 - 2 && i11 == i12 - 2)) {
            return f10 < f11 ? (f10 * (f15 - f14)) + f12 + (f11 * (f14 - f12)) : f12 + (f10 * (f13 - f12)) + (f11 * (f15 - f13));
        }
        float f16 = 1.0f - f11;
        return f10 < f16 ? (f10 * (f13 - f12)) + f14 + (f16 * (f12 - f14)) : f14 + (f10 * (f15 - f14)) + (f16 * (f13 - f15));
    }

    public Triangle getTriangleAtPoint(float f10, float f11, Vector3f vector3f, Vector3f vector3f2) {
        Triangle triangleAtPoint = getTriangleAtPoint(f10, f11);
        if (triangleAtPoint != null) {
            triangleAtPoint.get1().multLocal(vector3f).addLocal(vector3f2);
            triangleAtPoint.get2().multLocal(vector3f).addLocal(vector3f2);
            triangleAtPoint.get3().multLocal(vector3f).addLocal(vector3f2);
        }
        return triangleAtPoint;
    }

    public Vector2f getUV(int i10, int i11, Vector2f vector2f, Vector2f vector2f2, float f10, int i12) {
        float f11 = f10 * 1.0f;
        float f12 = vector2f2.f81609x + f11;
        float f13 = (-vector2f2.f81610y) + f11;
        float f14 = i12 - 1;
        vector2f.set((i10 + f12) / f14, (i11 + f13) / f14);
        return vector2f;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
    }

    public IndexBuffer writeIndexArrayLodDiff(int i10, boolean z10, boolean z11, boolean z12, boolean z13, int i11) {
        int i12;
        int width = getWidth() * getHeight();
        int calculateNumIndexesLodDiff = calculateNumIndexesLodDiff(i10);
        VerboseBuffer verboseBuffer = new VerboseBuffer(IndexBuffer.createIndexBuffer(width, calculateNumIndexesLodDiff));
        int i13 = i10;
        while (true) {
            i12 = i10 * 2;
            if (i13 >= getWidth() - i12) {
                break;
            }
            int width2 = getWidth() * i13;
            int width3 = (i13 + i10) * getWidth();
            int i14 = i10;
            while (i14 < getWidth() - i10) {
                verboseBuffer.put(width2 + i14);
                verboseBuffer.put(width3 + i14);
                i14 += i10;
            }
            if (i13 < getWidth() - (i10 * 3)) {
                verboseBuffer.put(((getWidth() + width3) - i10) - 1);
                verboseBuffer.put(width3 + i10);
            }
            i13 += i10;
        }
        verboseBuffer.put(((getWidth() * (getWidth() - i10)) - 1) - i10);
        int width4 = (getWidth() * getWidth()) - 1;
        verboseBuffer.put(width4);
        if (!z10) {
            verboseBuffer.put(width4);
            int width5 = getWidth();
            while (true) {
                width5 -= i10;
                if (width5 <= i10) {
                    break;
                }
                int width6 = (getWidth() * width5) - 1;
                verboseBuffer.put(width6);
                verboseBuffer.put(width6 - i10);
            }
        } else {
            int width7 = getWidth() - i10;
            while (true) {
                int i15 = i10 + 1;
                if (width7 < i15) {
                    break;
                }
                verboseBuffer.put(((getWidth() * width7) - 1) - i10);
                int i16 = width7 - i10;
                verboseBuffer.put((getWidth() * i16) - 1);
                if (width7 > i15) {
                    verboseBuffer.put(((getWidth() * i16) - 1) - i10);
                    verboseBuffer.put((i16 * getWidth()) - 1);
                }
                width7 -= i12;
            }
        }
        verboseBuffer.put(getWidth() - 1);
        if (z11) {
            if (z10) {
                verboseBuffer.put(getWidth() - 1);
            }
            int width8 = getWidth() - 1;
            while (width8 >= i10) {
                verboseBuffer.put(((getWidth() * i10) + width8) - i10);
                int i17 = width8 - i12;
                verboseBuffer.put(i17);
                if (width8 > i12) {
                    verboseBuffer.put(((getWidth() * i10) + width8) - i12);
                    verboseBuffer.put(i17);
                }
                width8 = i17;
            }
        } else {
            if (z10) {
                verboseBuffer.put(getWidth() - 1);
            }
            int width9 = getWidth() - 1;
            while (true) {
                width9 -= i10;
                if (width9 <= 0) {
                    break;
                }
                verboseBuffer.put((getWidth() * i10) + width9);
                verboseBuffer.put(width9);
            }
            verboseBuffer.put(0);
        }
        verboseBuffer.put(0);
        if (z12) {
            if (z11) {
                verboseBuffer.put(0);
            }
            int i18 = 0;
            while (i18 < getWidth() - i10) {
                verboseBuffer.put(((i18 + i10) * getWidth()) + i10);
                int i19 = i18 + i12;
                verboseBuffer.put(getWidth() * i19);
                if (i18 < (getWidth() - 1) - i12) {
                    verboseBuffer.put((getWidth() * i19) + i10);
                    verboseBuffer.put(getWidth() * i19);
                }
                i18 = i19;
            }
        } else {
            if (!z11) {
                verboseBuffer.put(0);
            }
            int i20 = i10;
            while (i20 < getWidth() - i10) {
                verboseBuffer.put(getWidth() * i20);
                verboseBuffer.put((getWidth() * i20) + i10);
                i20 += i10;
            }
        }
        verboseBuffer.put(getWidth() * (getWidth() - 1));
        if (z13) {
            if (z12) {
                verboseBuffer.put(getWidth() * (getWidth() - 1));
            }
            for (int i21 = 0; i21 < getWidth() - i10; i21 += i12) {
                verboseBuffer.put((getWidth() * ((getWidth() - 1) - i10)) + i21 + i10);
                verboseBuffer.put((getWidth() * (getWidth() - 1)) + i21 + i12);
                if (i21 < (getWidth() - 1) - i12) {
                    verboseBuffer.put((getWidth() * ((getWidth() - 1) - i10)) + i21 + i12);
                    verboseBuffer.put((getWidth() * (getWidth() - 1)) + i21 + i12);
                }
            }
        } else {
            if (z12) {
                verboseBuffer.put(getWidth() * (getWidth() - 1));
            }
            int i22 = i10;
            while (i22 < getWidth() - i10) {
                verboseBuffer.put((getWidth() * ((getWidth() - 1) - i10)) + i22);
                verboseBuffer.put((getWidth() * (getWidth() - 1)) + i22);
                i22 += i10;
            }
        }
        verboseBuffer.put((getWidth() * getWidth()) - 1);
        for (int count = verboseBuffer.getCount(); count < calculateNumIndexesLodDiff; count++) {
            verboseBuffer.put((getWidth() * getWidth()) - 1);
        }
        return verboseBuffer.delegate;
    }

    public IndexBuffer writeIndexArrayLodVariable(int i10, int i11, int i12, int i13, int i14, int i15) {
        int width = getWidth() * getHeight();
        int calculateNumIndexesLodDiff = calculateNumIndexesLodDiff(i10);
        VerboseBuffer verboseBuffer = new VerboseBuffer(IndexBuffer.createIndexBuffer(width, calculateNumIndexesLodDiff));
        int i16 = i10;
        while (i16 < getWidth() - (i10 * 2)) {
            int width2 = getWidth() * i16;
            int width3 = (i16 + i10) * getWidth();
            int i17 = i10;
            while (i17 < getWidth() - i10) {
                verboseBuffer.put(width2 + i17);
                verboseBuffer.put(width3 + i17);
                i17 += i10;
            }
            if (i16 < getWidth() - (i10 * 3)) {
                verboseBuffer.put(((getWidth() + width3) - i10) - 1);
                verboseBuffer.put(width3 + i10);
            }
            i16 += i10;
        }
        verboseBuffer.put(((getWidth() * (getWidth() - i10)) - 1) - i10);
        int width4 = (getWidth() * getWidth()) - 1;
        verboseBuffer.put(width4);
        if (i11 > i10) {
            int i18 = i11 / i10;
            for (int width5 = (getWidth() - 1) / i11; width5 > 0; width5--) {
                int width6 = (getWidth() * ((width5 * i11) + 1)) - 1;
                for (int i19 = 1; i19 <= i18; i19++) {
                    int width7 = (width6 - (getWidth() * (i19 * i10))) - i10;
                    if (i19 == i18 && width5 == 1) {
                        verboseBuffer.put(getWidth() - 1);
                    } else if (i19 == i18) {
                        verboseBuffer.put(width7);
                        verboseBuffer.put(width7 + i10);
                    } else {
                        verboseBuffer.put(width7);
                        verboseBuffer.put(width6);
                    }
                }
            }
            verboseBuffer.put(((getWidth() * (i10 + 1)) - i10) - 1);
            verboseBuffer.put(getWidth() - 1);
        } else {
            verboseBuffer.put(width4);
            int width8 = getWidth();
            while (true) {
                width8 -= i10;
                if (width8 <= i10) {
                    break;
                }
                int width9 = (getWidth() * width8) - 1;
                verboseBuffer.put(width9);
                verboseBuffer.put(width9 - i10);
            }
            verboseBuffer.put(getWidth() - 1);
        }
        if (i12 > i10) {
            if (i11 > i10) {
                verboseBuffer.put(getWidth() - 1);
                verboseBuffer.put((getWidth() * i10) - 1);
                verboseBuffer.put(getWidth() - 1);
            }
            getWidth();
            int i20 = i12 / i10;
            for (int width10 = (getWidth() - 1) / i12; width10 > 0; width10--) {
                int i21 = width10 * i12;
                for (int i22 = 1; i22 <= i20; i22++) {
                    int width11 = ((getWidth() * i10) + i21) - (i22 * i10);
                    if (i22 == i20 && width10 == 1) {
                        verboseBuffer.put(0);
                    } else if (i22 == i20) {
                        verboseBuffer.put(width11);
                        verboseBuffer.put(i21 - i12);
                    } else {
                        verboseBuffer.put(width11);
                        verboseBuffer.put(i21);
                    }
                }
            }
        } else {
            if (i11 > i10) {
                verboseBuffer.put(getWidth() - 1);
            }
            int width12 = getWidth() - 1;
            while (true) {
                width12 -= i10;
                if (width12 <= 0) {
                    break;
                }
                verboseBuffer.put((getWidth() * i10) + width12);
                verboseBuffer.put(width12);
            }
            verboseBuffer.put(0);
        }
        verboseBuffer.put(0);
        if (i13 > i10) {
            int width13 = (getWidth() - 1) / i13;
            int i23 = i13 / i10;
            for (int i24 = 0; i24 < width13; i24++) {
                int width14 = getWidth() * i24 * i13;
                for (int i25 = 1; i25 <= i23; i25++) {
                    int width15 = (getWidth() * i25 * i10) + width14 + i10;
                    if (i25 == i23 && i24 == width13 - 1) {
                        verboseBuffer.put((getWidth() * getWidth()) - getWidth());
                    } else if (i25 == i23) {
                        verboseBuffer.put(width15);
                        verboseBuffer.put(width15 - i10);
                    } else {
                        verboseBuffer.put(width15);
                        verboseBuffer.put(width14);
                    }
                }
            }
        } else {
            verboseBuffer.put(0);
            verboseBuffer.put((getWidth() * i10) + i10);
            verboseBuffer.put(0);
            int i26 = i10;
            while (i26 < getWidth() - i10) {
                verboseBuffer.put(getWidth() * i26);
                verboseBuffer.put((getWidth() * i26) + i10);
                i26 += i10;
            }
            verboseBuffer.put(getWidth() * (getWidth() - 1));
        }
        if (i14 > i10) {
            if (i13 > i10) {
                verboseBuffer.put(getWidth() * (getWidth() - 1));
                verboseBuffer.put(getWidth() * (getWidth() - i10));
                verboseBuffer.put(getWidth() * (getWidth() - 1));
            }
            getWidth();
            getWidth();
            getWidth();
            int width16 = (getWidth() - 1) / i14;
            int i27 = i14 / i10;
            for (int i28 = 0; i28 < width16; i28++) {
                int width17 = ((getWidth() * getWidth()) - getWidth()) + (i28 * i14);
                for (int i29 = 1; i29 <= i27; i29++) {
                    int width18 = (width17 - (getWidth() * i10)) + (i29 * i10);
                    if (i29 == i27 && i28 == width16 - 1) {
                        verboseBuffer.put((getWidth() * getWidth()) - 1);
                    } else if (i29 == i27) {
                        verboseBuffer.put(width18);
                        verboseBuffer.put(width17 + i14);
                    } else {
                        verboseBuffer.put(width18);
                        verboseBuffer.put(width17);
                    }
                }
            }
        } else {
            if (i13 > i10) {
                verboseBuffer.put(getWidth() * (getWidth() - 1));
                verboseBuffer.put(((getWidth() * getWidth()) - (getWidth() * i10)) + i10);
                verboseBuffer.put(getWidth() * (getWidth() - 1));
            }
            int i30 = i10;
            while (i30 < getWidth() - i10) {
                verboseBuffer.put((getWidth() * ((getWidth() - 1) - i10)) + i30);
                verboseBuffer.put((getWidth() * (getWidth() - 1)) + i30);
                i30 += i10;
            }
        }
        verboseBuffer.put((getWidth() * getWidth()) - 1);
        for (int count = verboseBuffer.getCount(); count < calculateNumIndexesLodDiff; count++) {
            verboseBuffer.put((getWidth() * getWidth()) - 1);
        }
        return verboseBuffer.delegate;
    }

    @Override
    public FloatBuffer writeNormalArray(FloatBuffer floatBuffer, Vector3f vector3f) {
        FloatBuffer createFloatBuffer;
        int i10;
        FloatBuffer floatBuffer2;
        TempVars tempVars;
        Vector3f vector3f2;
        int i11;
        Vector3f vector3f3;
        if (!isLoaded()) {
            throw new IllegalStateException("The Geomap data is not loaded.");
        }
        if (floatBuffer == null) {
            createFloatBuffer = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 3);
        } else {
            if (floatBuffer.remaining() < getWidth() * getHeight() * 3) {
                throw new BufferUnderflowException();
            }
            createFloatBuffer = floatBuffer;
        }
        createFloatBuffer.rewind();
        TempVars tempVars2 = TempVars.get();
        Vector3f vector3f4 = tempVars2.vect1;
        Vector3f vector3f5 = tempVars2.vect2;
        Vector3f vector3f6 = tempVars2.vect3;
        Vector3f vector3f7 = tempVars2.vect4;
        Vector3f vector3f8 = tempVars2.vect5;
        Vector3f vector3f9 = tempVars2.vect6;
        int i12 = 0;
        while (i12 < getHeight()) {
            int i13 = 0;
            while (i13 < getWidth()) {
                vector3f4.set(0.0f, getValue(i13, i12), 0.0f);
                Vector3f vector3f10 = tempVars2.vect8;
                if (i12 == 0) {
                    if (i13 == 0) {
                        vector3f5.set(1.0f, getValue(i13 + 1, i12), 0.0f);
                        vector3f8.set(0.0f, getValue(i13, i12 + 1), 1.0f);
                        vector3f3 = vector3f10;
                        i10 = i13;
                        tempVars = tempVars2;
                        i11 = i12;
                        getNormal(vector3f8, vector3f4, vector3f5, vector3f, vector3f3);
                    } else {
                        vector3f3 = vector3f10;
                        i10 = i13;
                        tempVars = tempVars2;
                        i11 = i12;
                        if (i10 == getWidth() - 1) {
                            vector3f6.set(-1.0f, getValue(i10 - 1, i11), 0.0f);
                            vector3f8.set(0.0f, getValue(i10, i11 + 1), 1.0f);
                            getNormal(vector3f6, vector3f4, vector3f8, vector3f, vector3f3);
                        } else {
                            vector3f6.set(-1.0f, getValue(i10 - 1, i11), 0.0f);
                            vector3f5.set(1.0f, getValue(i10 + 1, i11), 0.0f);
                            vector3f8.set(0.0f, getValue(i10, i11 + 1), 1.0f);
                            vector3f3.set(getNormal(vector3f6, vector3f4, vector3f8, vector3f, vector3f9));
                            floatBuffer2 = createFloatBuffer;
                            vector3f2 = vector3f3;
                            vector3f2.addLocal(getNormal(vector3f8, vector3f4, vector3f5, vector3f, vector3f9));
                        }
                    }
                    FloatBuffer floatBuffer3 = createFloatBuffer;
                    vector3f2 = vector3f3;
                    floatBuffer2 = floatBuffer3;
                } else {
                    i10 = i13;
                    floatBuffer2 = createFloatBuffer;
                    tempVars = tempVars2;
                    vector3f2 = vector3f10;
                    i11 = i12;
                    if (i11 == getHeight() - 1) {
                        if (i10 == 0) {
                            vector3f7.set(0.0f, getValue(i10, i11 - 1), -1.0f);
                            vector3f5.set(1.0f, getValue(i10 + 1, i11), 0.0f);
                            getNormal(vector3f5, vector3f4, vector3f7, vector3f, vector3f2);
                        } else if (i10 == getWidth() - 1) {
                            vector3f7.set(0.0f, getValue(i10, i11 - 1), -1.0f);
                            vector3f6.set(-1.0f, getValue(i10 - 1, i11), 0.0f);
                            getNormal(vector3f7, vector3f4, vector3f6, vector3f, vector3f2);
                        } else {
                            vector3f7.set(0.0f, getValue(i10, i11 - 1), -1.0f);
                            vector3f6.set(-1.0f, getValue(i10 - 1, i11), 0.0f);
                            vector3f5.set(1.0f, getValue(i10 + 1, i11), 0.0f);
                            vector3f2.set(getNormal(vector3f7, vector3f4, vector3f6, vector3f, vector3f9));
                            vector3f2.addLocal(getNormal(vector3f5, vector3f4, vector3f7, vector3f, vector3f9));
                        }
                    } else if (i10 == 0) {
                        vector3f7.set(0.0f, getValue(i10, i11 - 1), -1.0f);
                        vector3f5.set(1.0f, getValue(i10 + 1, i11), 0.0f);
                        vector3f8.set(0.0f, getValue(i10, i11 + 1), 1.0f);
                        vector3f2.set(getNormal(vector3f5, vector3f4, vector3f7, vector3f, vector3f9));
                        vector3f2.addLocal(getNormal(vector3f8, vector3f4, vector3f5, vector3f, vector3f9));
                    } else if (i10 == getWidth() - 1) {
                        vector3f7.set(0.0f, getValue(i10, i11 - 1), -1.0f);
                        vector3f6.set(-1.0f, getValue(i10 - 1, i11), 0.0f);
                        vector3f8.set(0.0f, getValue(i10, i11 + 1), 1.0f);
                        vector3f2.set(getNormal(vector3f7, vector3f4, vector3f6, vector3f, vector3f9));
                        vector3f2.addLocal(getNormal(vector3f6, vector3f4, vector3f8, vector3f, vector3f9));
                    } else {
                        vector3f7.set(0.0f, getValue(i10, i11 - 1), -1.0f);
                        vector3f6.set(-1.0f, getValue(i10 - 1, i11), 0.0f);
                        vector3f5.set(1.0f, getValue(i10 + 1, i11), 0.0f);
                        vector3f8.set(0.0f, getValue(i10, i11 + 1), 1.0f);
                        vector3f2.set(getNormal(vector3f7, vector3f4, vector3f6, vector3f, vector3f9));
                        vector3f2.addLocal(getNormal(vector3f6, vector3f4, vector3f8, vector3f, vector3f9));
                        vector3f2.addLocal(getNormal(vector3f8, vector3f4, vector3f5, vector3f, vector3f9));
                        vector3f2.addLocal(getNormal(vector3f5, vector3f4, vector3f7, vector3f, vector3f9));
                    }
                }
                vector3f2.normalizeLocal();
                FloatBuffer floatBuffer4 = floatBuffer2;
                BufferUtils.setInBuffer(vector3f2, floatBuffer4, (i11 * getWidth()) + i10);
                i13 = i10 + 1;
                createFloatBuffer = floatBuffer4;
                i12 = i11;
                tempVars2 = tempVars;
            }
            i12++;
            tempVars2 = tempVars2;
        }
        FloatBuffer floatBuffer5 = createFloatBuffer;
        tempVars2.release();
        return floatBuffer5;
    }

    public FloatBuffer[] writeTangentArray(FloatBuffer floatBuffer, FloatBuffer floatBuffer2, FloatBuffer floatBuffer3, FloatBuffer floatBuffer4, Vector3f vector3f) {
        if (!isLoaded()) {
            throw new IllegalStateException("The Geomap data is not loaded.");
        }
        if (floatBuffer2 == null) {
            floatBuffer2 = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 3);
        } else if (floatBuffer2.remaining() < getWidth() * getHeight() * 3) {
            throw new BufferUnderflowException();
        }
        floatBuffer2.rewind();
        if (floatBuffer3 == null) {
            floatBuffer3 = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 3);
        } else if (floatBuffer3.remaining() < getWidth() * getHeight() * 3) {
            throw new BufferUnderflowException();
        }
        floatBuffer3.rewind();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        for (int i10 = 0; i10 < getHeight(); i10++) {
            for (int i11 = 0; i11 < getWidth(); i11++) {
                int width = ((getWidth() * i10) + i11) * 3;
                vector3f2.set(floatBuffer.get(width), floatBuffer.get(width + 1), floatBuffer.get(width + 2));
                vector3f3.set(vector3f2.cross(new Vector3f(0.0f, 0.0f, 1.0f)));
                vector3f4.set(new Vector3f(1.0f, 0.0f, 0.0f).cross(vector3f2));
                BufferUtils.setInBuffer(vector3f3.normalizeLocal(), floatBuffer2, (getWidth() * i10) + i11);
                BufferUtils.setInBuffer(vector3f4.normalizeLocal(), floatBuffer3, (getWidth() * i10) + i11);
            }
        }
        return new FloatBuffer[]{floatBuffer2, floatBuffer3};
    }

    public FloatBuffer writeTexCoordArray(FloatBuffer floatBuffer, Vector2f vector2f, Vector2f vector2f2, float f10, int i10) {
        if (floatBuffer == null) {
            floatBuffer = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 2);
        } else if (floatBuffer.remaining() < getWidth() * getHeight() * 2) {
            throw new BufferUnderflowException();
        }
        if (vector2f == null) {
            vector2f = new Vector2f();
        }
        Vector2f vector2f3 = new Vector2f();
        for (int height = getHeight() - 1; height >= 0; height--) {
            for (int i11 = 0; i11 < getWidth(); i11++) {
                getUV(i11, height, vector2f3, vector2f, f10, i10);
                float f11 = vector2f3.f81609x * vector2f2.f81609x;
                float f12 = vector2f3.f81610y * vector2f2.f81610y;
                floatBuffer.put(f11);
                floatBuffer.put(f12);
            }
        }
        return floatBuffer;
    }

    public LODGeomap(int i10, float[] fArr) {
        super(fArr, i10, i10, 1);
    }

    public Mesh createMesh(Vector3f vector3f, Vector2f vector2f, Vector2f vector2f2, float f10, int i10, boolean z10, int i11, boolean z11, boolean z12, boolean z13, boolean z14) {
        FloatBuffer writeVertexArray = writeVertexArray(null, vector3f, z10);
        FloatBuffer writeTexCoordArray = writeTexCoordArray(null, vector2f2, vector2f, f10, i10);
        FloatBuffer writeNormalArray = writeNormalArray(null, vector3f);
        IndexBuffer writeIndexArrayLodDiff = writeIndexArrayLodDiff(i11, z11, z12, z13, z14, i10);
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 3);
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 3);
        writeTangentArray(writeNormalArray, createFloatBuffer2, createFloatBuffer, writeTexCoordArray, vector3f);
        Mesh mesh = new Mesh();
        mesh.setMode(Mesh.Mode.TriangleStrip);
        mesh.setBuffer(VertexBuffer.Type.Position, 3, writeVertexArray);
        mesh.setBuffer(VertexBuffer.Type.Normal, 3, writeNormalArray);
        mesh.setBuffer(VertexBuffer.Type.Tangent, 3, createFloatBuffer2);
        mesh.setBuffer(VertexBuffer.Type.Binormal, 3, createFloatBuffer);
        mesh.setBuffer(VertexBuffer.Type.TexCoord, 2, writeTexCoordArray);
        int i12 = AnonymousClass1.$SwitchMap$com$jme3$scene$VertexBuffer$Format[writeIndexArrayLodDiff.getFormat().ordinal()];
        if (i12 == 1) {
            mesh.setBuffer(VertexBuffer.Type.Index, 3, (IntBuffer) writeIndexArrayLodDiff.getBuffer());
        } else if (i12 == 2) {
            mesh.setBuffer(VertexBuffer.Type.Index, 3, (ShortBuffer) writeIndexArrayLodDiff.getBuffer());
        } else if (i12 == 3) {
            mesh.setBuffer(VertexBuffer.Type.Index, 3, (ByteBuffer) writeIndexArrayLodDiff.getBuffer());
        }
        mesh.setStatic();
        mesh.updateBound();
        return mesh;
    }

    public Triangle getTriangleAtPoint(float f10, float f11) {
        Triangle[] gridTrianglesAtPoint = getGridTrianglesAtPoint(f10, f11);
        if (gridTrianglesAtPoint == null) {
            return null;
        }
        Vector2f vector2f = new Vector2f(f10, f11);
        Vector2f vector2f2 = new Vector2f(gridTrianglesAtPoint[0].get1().f81611x, gridTrianglesAtPoint[0].get1().f81613z);
        Vector2f vector2f3 = new Vector2f(gridTrianglesAtPoint[0].get2().f81611x, gridTrianglesAtPoint[0].get2().f81613z);
        Vector2f vector2f4 = new Vector2f(gridTrianglesAtPoint[0].get3().f81611x, gridTrianglesAtPoint[0].get3().f81613z);
        if (FastMath.pointInsideTriangle(vector2f2, vector2f3, vector2f4, vector2f) != 0) {
            return gridTrianglesAtPoint[0];
        }
        vector2f2.set(gridTrianglesAtPoint[1].get1().f81611x, gridTrianglesAtPoint[1].get1().f81613z);
        vector2f2.set(gridTrianglesAtPoint[1].get2().f81611x, gridTrianglesAtPoint[1].get2().f81613z);
        vector2f2.set(gridTrianglesAtPoint[1].get3().f81611x, gridTrianglesAtPoint[1].get3().f81613z);
        if (FastMath.pointInsideTriangle(vector2f2, vector2f3, vector2f4, vector2f) != 0) {
            return gridTrianglesAtPoint[1];
        }
        return null;
    }

    public Triangle[] getGridTrianglesAtPoint(float f10, float f11) {
        int i10 = (int) f10;
        int i11 = (int) f11;
        int findClosestHeightIndex = findClosestHeightIndex(i10, i11);
        if (findClosestHeightIndex < 0) {
            return null;
        }
        Triangle triangle = new Triangle(new Vector3f(), new Vector3f(), new Vector3f());
        Triangle triangle2 = new Triangle(new Vector3f(), new Vector3f(), new Vector3f());
        float[] fArr = this.hdata;
        float f12 = fArr[findClosestHeightIndex];
        float f13 = fArr[findClosestHeightIndex + 1];
        int i12 = this.width;
        float f14 = fArr[findClosestHeightIndex + i12];
        float f15 = fArr[findClosestHeightIndex + i12 + 1];
        if ((i10 == 0 && i11 == 0) || (i10 == i12 - 2 && i11 == i12 - 2)) {
            float f16 = i10;
            triangle.get(0).f81611x = f16;
            triangle.get(0).f81612y = f12;
            float f17 = i11;
            triangle.get(0).f81613z = f17;
            triangle.get(1).f81611x = f16;
            triangle.get(1).f81612y = f14;
            float f18 = i11 + 1;
            triangle.get(1).f81613z = f18;
            float f19 = i10 + 1;
            triangle.get(2).f81611x = f19;
            triangle.get(2).f81612y = f15;
            triangle.get(2).f81613z = f18;
            triangle2.get(0).f81611x = f16;
            triangle2.get(0).f81612y = f12;
            triangle2.get(0).f81613z = f17;
            triangle2.get(1).f81611x = f19;
            triangle2.get(1).f81612y = f15;
            triangle2.get(1).f81613z = f18;
            triangle2.get(2).f81611x = f19;
            triangle2.get(2).f81612y = f13;
            triangle2.get(2).f81613z = f17;
        } else {
            float f20 = i10;
            triangle.get(0).f81611x = f20;
            triangle.get(0).f81612y = f12;
            float f21 = i11;
            triangle.get(0).f81613z = f21;
            triangle.get(1).f81611x = f20;
            triangle.get(1).f81612y = f14;
            float f22 = i11 + 1;
            triangle.get(1).f81613z = f22;
            float f23 = i10 + 1;
            triangle.get(2).f81611x = f23;
            triangle.get(2).f81612y = f13;
            triangle.get(2).f81613z = f21;
            triangle2.get(0).f81611x = f23;
            triangle2.get(0).f81612y = f13;
            triangle2.get(0).f81613z = f21;
            triangle2.get(1).f81611x = f20;
            triangle2.get(1).f81612y = f14;
            triangle2.get(1).f81613z = f22;
            triangle2.get(2).f81611x = f23;
            triangle2.get(2).f81612y = f15;
            triangle2.get(2).f81613z = f22;
        }
        return new Triangle[]{triangle, triangle2};
    }
}
