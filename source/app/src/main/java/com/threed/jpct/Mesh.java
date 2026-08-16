package com.threed.jpct;

import android.util.FloatMath;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;

public final class Mesh implements Serializable {
    public static final boolean COMPRESS = true;
    public static final boolean DONT_COMPRESS = false;
    public static final int SERIALIZE_ALL = 0;
    public static final int SERIALIZE_LOW_PRECISION = 2;
    public static final int SERIALIZE_VERTICES_ONLY = 1;
    private static final long serialVersionUID = 2;
    private static HashMap<GenericContainer, ArrayList<Integer>> verts;
    int[] coords;
    private boolean locked;
    int maxVectors;
    float[] nxOrg;
    transient int[] nxiOrg;
    float[] nyOrg;
    transient int[] nyiOrg;
    float[] nzOrg;
    transient int[] nziOrg;
    int[][] points;
    float[][] tangentVectors;
    float[] xOrg;
    float[] yOrg;
    float[] zOrg;
    private int serializeMethod = 0;
    IVertexController myController = null;
    boolean tangentsCalculated = false;
    short[] sxOrg = null;
    short[] syOrg = null;
    short[] szOrg = null;
    short[] snxOrg = null;
    short[] snyOrg = null;
    short[] snzOrg = null;
    int anzVectors = 0;
    int anzCoords = 0;
    int anzTri = 0;
    int obbStart = 0;
    int obbEnd = 0;
    boolean normalsCalculated = false;

    public Mesh(int i10) {
        this.maxVectors = i10;
        this.points = (int[][]) Array.newInstance(Integer.TYPE, (i10 / 3) + 1, 3);
        int i11 = this.maxVectors;
        this.coords = new int[i11];
        this.xOrg = new float[i11];
        this.yOrg = new float[i11];
        this.zOrg = new float[i11];
        this.nxOrg = new float[i11];
        this.nyOrg = new float[i11];
        this.nzOrg = new float[i11];
    }

    private final void calcNormalsFast() {
        int i10;
        float f10;
        float f11;
        float f12;
        int i11;
        if (verts == null) {
            verts = new HashMap<>();
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i10 = 3;
            if (i13 >= this.anzTri) {
                break;
            }
            int[] iArr = this.points[i13];
            int i14 = 0;
            for (int i15 = 3; i14 < i15; i15 = 3) {
                int i16 = this.coords[iArr[i14]];
                float f13 = this.xOrg[i16];
                float f14 = this.yOrg[i16];
                float f15 = this.zOrg[i16];
                GenericContainer genericContainer = new GenericContainer(3);
                genericContainer.add(f13);
                genericContainer.add(f14);
                genericContainer.add(f15);
                ArrayList<Integer> arrayList = verts.get(genericContainer);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(3);
                    verts.put(genericContainer, arrayList);
                }
                arrayList.add(IntegerC.valueOf(i13));
                i14++;
            }
            i13++;
            i12 = 0;
        }
        int i17 = i12;
        while (i17 < this.anzCoords) {
            float f16 = this.xOrg[i17];
            float f17 = this.yOrg[i17];
            float f18 = this.zOrg[i17];
            GenericContainer genericContainer2 = new GenericContainer(i10);
            genericContainer2.add(f16);
            genericContainer2.add(f17);
            genericContainer2.add(f18);
            ArrayList<Integer> arrayList2 = verts.get(genericContainer2);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                int i18 = i12;
                i11 = i18;
                f10 = 0.0f;
                f11 = 0.0f;
                f12 = 0.0f;
                while (i18 < size) {
                    int intValue = arrayList2.get(i18).intValue();
                    int[] iArr2 = this.coords;
                    int[] iArr3 = this.points[intValue];
                    int i19 = iArr2[iArr3[i12]];
                    int i20 = iArr2[iArr3[1]];
                    int i21 = iArr2[iArr3[2]];
                    float[] fArr = this.xOrg;
                    float f19 = fArr[i21];
                    float[] fArr2 = this.yOrg;
                    float f20 = fArr2[i21];
                    float[] fArr3 = this.zOrg;
                    float f21 = fArr3[i21];
                    float f22 = fArr[i19];
                    float f23 = fArr2[i19];
                    float f24 = fArr3[i19];
                    i11++;
                    float f25 = f22 - f19;
                    float f26 = f23 - f20;
                    float f27 = f24 - f21;
                    float f28 = fArr[i20] - f19;
                    float f29 = fArr2[i20] - f20;
                    float f30 = fArr3[i20] - f21;
                    f10 += (f26 * f30) - (f27 * f29);
                    f11 += (f27 * f28) - (f30 * f25);
                    f12 += (f25 * f29) - (f26 * f28);
                    i18++;
                    i12 = 0;
                }
            } else {
                f10 = 0.0f;
                f11 = 0.0f;
                f12 = 0.0f;
                i11 = 0;
            }
            if (i11 != 0) {
                float sqrt = FloatMath.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
                if (sqrt == 0.0f) {
                    sqrt = 1.0E-12f;
                }
                float f31 = 1.0f / sqrt;
                this.nxOrg[i17] = f10 * f31;
                this.nyOrg[i17] = f11 * f31;
                this.nzOrg[i17] = f12 * f31;
            }
            i17++;
            i12 = 0;
            i10 = 3;
        }
        verts.clear();
    }

    private short[] floatToShort(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        short[] sArr = new short[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            sArr[i10] = (short) (Float.floatToRawIntBits(fArr[i10]) >> 16);
        }
        return sArr;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if ((this.serializeMethod & 2) != 0) {
            this.xOrg = shortToFloat(this.sxOrg);
            this.sxOrg = null;
            this.yOrg = shortToFloat(this.syOrg);
            this.syOrg = null;
            this.zOrg = shortToFloat(this.szOrg);
            this.szOrg = null;
            this.nxOrg = shortToFloat(this.snxOrg);
            this.snxOrg = null;
            this.nyOrg = shortToFloat(this.snyOrg);
            this.snyOrg = null;
            this.nzOrg = shortToFloat(this.snzOrg);
            this.snzOrg = null;
        }
        if ((this.serializeMethod & 1) != 0) {
            this.nxOrg = new float[this.xOrg.length];
            this.nyOrg = new float[this.yOrg.length];
            this.nzOrg = new float[this.zOrg.length];
            if (this.points != null) {
                calcNormals();
            }
        }
    }

    private float[] shortToFloat(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        float[] fArr = new float[sArr.length];
        for (int i10 = 0; i10 < sArr.length; i10++) {
            fArr[i10] = Float.intBitsToFloat(sArr[i10] << 16);
        }
        return fArr;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        float[] fArr = this.xOrg;
        float[] fArr2 = this.yOrg;
        float[] fArr3 = this.zOrg;
        float[] fArr4 = this.nxOrg;
        float[] fArr5 = this.nyOrg;
        float[] fArr6 = this.nzOrg;
        int i10 = this.serializeMethod;
        if ((i10 & 1) != 0) {
            this.nxOrg = null;
            this.nyOrg = null;
            this.nzOrg = null;
        }
        if ((i10 & 2) != 0) {
            this.sxOrg = floatToShort(fArr);
            this.xOrg = null;
            this.syOrg = floatToShort(this.yOrg);
            this.yOrg = null;
            this.szOrg = floatToShort(this.zOrg);
            this.zOrg = null;
            this.snxOrg = floatToShort(this.nxOrg);
            this.nxOrg = null;
            this.snyOrg = floatToShort(this.nyOrg);
            this.nyOrg = null;
            this.snzOrg = floatToShort(this.nzOrg);
            this.nzOrg = null;
        }
        objectOutputStream.defaultWriteObject();
        this.xOrg = fArr;
        this.yOrg = fArr2;
        this.zOrg = fArr3;
        this.nxOrg = fArr4;
        this.nyOrg = fArr5;
        this.nzOrg = fArr6;
    }

    public void applyVertexController() {
        IVertexController iVertexController = this.myController;
        if (iVertexController == null) {
            Logger.log("No controller has been assigned to this mesh", 1);
        } else {
            iVertexController.apply();
            this.myController.updateMesh();
        }
    }

    public float[] calcBoundingBox() {
        int i10 = this.anzCoords;
        int i11 = this.obbStart;
        if (i11 != 0) {
            i10 = i11;
        }
        float f10 = 1.0E11f;
        float f11 = 1.0E11f;
        float f12 = -1.0E11f;
        float f13 = -1.0E11f;
        float f14 = -1.0E11f;
        float f15 = 1.0E11f;
        for (int i12 = 0; i12 < i10; i12++) {
            float f16 = this.xOrg[i12];
            float f17 = this.yOrg[i12];
            float f18 = this.zOrg[i12];
            if (f16 < f10) {
                f10 = f16;
            }
            if (f16 > f12) {
                f12 = f16;
            }
            if (f17 < f15) {
                f15 = f17;
            }
            if (f17 > f13) {
                f13 = f17;
            }
            if (f18 < f11) {
                f11 = f18;
            }
            if (f18 > f14) {
                f14 = f18;
            }
        }
        return new float[]{f10, f12, f15, f13, f11, f14};
    }

    public SimpleVector calcCenter() {
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        int i10 = 0;
        for (int i11 = 0; i11 < this.anzTri; i11++) {
            int[] iArr = this.points[i11];
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = this.coords[iArr[i12]];
                f10 += this.xOrg[i13];
                f11 += this.yOrg[i13];
                f12 += this.zOrg[i13];
                i10++;
            }
        }
        if (i10 == 0) {
            return SimpleVector.create(0.0f, 0.0f, 0.0f);
        }
        float f13 = i10;
        return SimpleVector.create(f10 / f13, f11 / f13, f12 / f13);
    }

    public void calcNormals() {
        long currentTimeMillis = System.currentTimeMillis();
        calcNormalsFast();
        if (Logger.getLogLevel() >= 2) {
            Logger.log("Normal vectors calculated in " + (System.currentTimeMillis() - currentTimeMillis) + "ms!");
        }
        this.normalsCalculated = true;
    }

    public final Vector[] calcNormalsMD2(Vector[] vectorArr) {
        Vector[] vectorArr2;
        int i10;
        float f10;
        float f11;
        float f12;
        Vector[] vectorArr3;
        Vector[] vectorArr4 = vectorArr == null ? new Vector[this.anzCoords] : null;
        int i11 = 0;
        int i12 = 0;
        while (i12 < this.anzCoords) {
            if (vectorArr == null) {
                vectorArr4[i12] = new Vector();
            }
            float f13 = this.xOrg[i12];
            float f14 = this.yOrg[i12];
            float f15 = this.zOrg[i12];
            char c10 = 2;
            char c11 = 1;
            if (vectorArr == null) {
                int i13 = i11;
                i10 = i13;
                f10 = 0.0f;
                f11 = 0.0f;
                f12 = 0.0f;
                while (i13 < this.anzTri) {
                    int[] iArr = this.coords;
                    int[] iArr2 = this.points[i13];
                    int i14 = iArr[iArr2[i11]];
                    int i15 = iArr[iArr2[c11]];
                    int i16 = iArr[iArr2[c10]];
                    float[] fArr = this.xOrg;
                    float f16 = fArr[i16];
                    float[] fArr2 = this.yOrg;
                    float f17 = fArr2[i16];
                    float[] fArr3 = this.zOrg;
                    float f18 = fArr3[i16];
                    float f19 = fArr[i14];
                    float f20 = fArr2[i14];
                    float f21 = fArr3[i14];
                    float f22 = fArr[i15];
                    float f23 = fArr2[i15];
                    float f24 = fArr3[i15];
                    if ((f13 == f16 && f14 == f17 && f15 == f18) || ((f13 == f22 && f14 == f23 && f15 == f24) || (f13 == f19 && f14 == f20 && f15 == f21))) {
                        vectorArr3 = vectorArr4;
                        vectorArr4[i12].addElement(IntegerC.valueOf(i13));
                        i10++;
                        float f25 = f19 - f16;
                        float f26 = f20 - f17;
                        float f27 = f21 - f18;
                        float f28 = f22 - f16;
                        float f29 = f23 - f17;
                        float f30 = f24 - f18;
                        f10 += (f26 * f30) - (f27 * f29);
                        f11 += (f27 * f28) - (f30 * f25);
                        f12 += (f25 * f29) - (f26 * f28);
                    } else {
                        vectorArr3 = vectorArr4;
                    }
                    i13++;
                    vectorArr4 = vectorArr3;
                    i11 = 0;
                    c10 = 2;
                    c11 = 1;
                }
                vectorArr2 = vectorArr4;
            } else {
                vectorArr2 = vectorArr4;
                int size = vectorArr[i12].size();
                i10 = 0;
                f10 = 0.0f;
                f11 = 0.0f;
                f12 = 0.0f;
                for (int i17 = 0; i17 < size; i17++) {
                    int intValue = ((Integer) vectorArr[i12].elementAt(i17)).intValue();
                    int[] iArr3 = this.coords;
                    int[] iArr4 = this.points[intValue];
                    int i18 = iArr3[iArr4[0]];
                    int i19 = iArr3[iArr4[1]];
                    int i20 = iArr3[iArr4[2]];
                    float[] fArr4 = this.xOrg;
                    float f31 = fArr4[i20];
                    float[] fArr5 = this.yOrg;
                    float f32 = fArr5[i20];
                    float[] fArr6 = this.zOrg;
                    float f33 = fArr6[i20];
                    float f34 = fArr4[i18];
                    float f35 = fArr5[i18];
                    float f36 = fArr6[i18];
                    float f37 = fArr4[i19];
                    float f38 = fArr5[i19];
                    float f39 = fArr6[i19];
                    if ((f13 == f31 && f14 == f32 && f15 == f33) || ((f13 == f37 && f14 == f38 && f15 == f39) || (f13 == f34 && f14 == f35 && f15 == f36))) {
                        i10++;
                        float f40 = f34 - f31;
                        float f41 = f35 - f32;
                        float f42 = f36 - f33;
                        float f43 = f37 - f31;
                        float f44 = f38 - f32;
                        float f45 = f39 - f33;
                        f10 += (f41 * f45) - (f42 * f44);
                        f11 += (f42 * f43) - (f45 * f40);
                        f12 += (f40 * f44) - (f41 * f43);
                    }
                }
            }
            if (i10 != 0) {
                float sqrt = FloatMath.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
                if (sqrt == 0.0f) {
                    sqrt = 1.0E-12f;
                }
                float f46 = 1.0f / sqrt;
                this.nxOrg[i12] = f10 * f46;
                this.nyOrg[i12] = f11 * f46;
                this.nzOrg[i12] = f12 * f46;
            }
            i12++;
            vectorArr4 = vectorArr2;
            i11 = 0;
        }
        return vectorArr == null ? vectorArr4 : vectorArr;
    }

    public void calculateTangentVectors(Vectors vectors) {
        Mesh mesh = this;
        Vectors vectors2 = vectors;
        long currentTimeMillis = System.currentTimeMillis();
        float[][] fArr = mesh.tangentVectors;
        if (fArr == null || fArr.length != mesh.anzCoords) {
            mesh.tangentVectors = new float[mesh.anzCoords];
        }
        int i10 = mesh.anzCoords;
        SimpleVector[] simpleVectorArr = new SimpleVector[i10];
        SimpleVector[] simpleVectorArr2 = new SimpleVector[i10];
        int i11 = 0;
        int i12 = 0;
        while (i12 < i10) {
            simpleVectorArr[i12] = new SimpleVector(0.0f, 0.0f, 0.0f);
            simpleVectorArr2[i12] = new SimpleVector(0.0f, 0.0f, 0.0f);
            i12++;
            mesh = this;
            vectors2 = vectors;
            i11 = 0;
        }
        int i13 = mesh.anzTri;
        int i14 = i11;
        while (i14 < i13) {
            int[] iArr = mesh.points[i14];
            int[] iArr2 = mesh.coords;
            int i15 = iArr[i11];
            int i16 = iArr2[i15];
            int i17 = iArr[1];
            int i18 = iArr2[i17];
            int i19 = iArr[2];
            int i20 = iArr2[i19];
            float[] fArr2 = mesh.xOrg;
            float f10 = fArr2[i16];
            float[] fArr3 = mesh.yOrg;
            float f11 = fArr3[i16];
            long j10 = currentTimeMillis;
            float[] fArr4 = mesh.zOrg;
            float f12 = fArr4[i16];
            float f13 = fArr2[i18];
            float f14 = fArr3[i18];
            float f15 = fArr4[i18];
            float f16 = fArr2[i20];
            float f17 = fArr3[i20];
            float f18 = fArr4[i20];
            float[] fArr5 = vectors2.nuOrg;
            float f19 = fArr5[i15];
            int i21 = i13;
            float[] fArr6 = vectors2.nvOrg;
            float f20 = fArr6[i15];
            float f21 = fArr5[i17];
            float f22 = fArr6[i17];
            float f23 = f13 - f10;
            float f24 = f16 - f10;
            float f25 = f14 - f11;
            float f26 = f17 - f11;
            float f27 = f15 - f12;
            float f28 = f18 - f12;
            float f29 = f21 - f19;
            float f30 = fArr5[i19] - f19;
            float f31 = f22 - f20;
            float f32 = fArr6[i19] - f20;
            if (f29 == 0.0f) {
                f29 = 1.0E-5f;
            }
            if (f30 == 0.0f) {
                f30 = 1.0E-5f;
            }
            if (f31 == 0.0f) {
                f31 = 1.0E-5f;
            }
            if (f32 == 0.0f) {
                f32 = 1.0E-5f;
            }
            float f33 = (f29 * f32) - (f30 * f31);
            float f34 = 1.0f / (f33 != 0.0f ? f33 : 1.0E-5f);
            SimpleVector simpleVector = new SimpleVector(((f32 * f23) - (f31 * f24)) * f34, ((f32 * f25) - (f31 * f26)) * f34, ((f32 * f27) - (f31 * f28)) * f34);
            SimpleVector simpleVector2 = new SimpleVector(((f24 * f29) - (f23 * f30)) * f34, ((f26 * f29) - (f25 * f30)) * f34, ((f29 * f28) - (f30 * f27)) * f34);
            simpleVectorArr[i16].add(simpleVector);
            simpleVectorArr[i18].add(simpleVector);
            simpleVectorArr[i20].add(simpleVector);
            simpleVectorArr2[i16].add(simpleVector2);
            simpleVectorArr2[i18].add(simpleVector2);
            simpleVectorArr2[i20].add(simpleVector2);
            i14++;
            mesh = this;
            vectors2 = vectors;
            currentTimeMillis = j10;
            i13 = i21;
            i11 = 0;
        }
        SimpleVector simpleVector3 = new SimpleVector();
        SimpleVector simpleVector4 = new SimpleVector();
        SimpleVector simpleVector5 = new SimpleVector();
        int i22 = mesh.anzCoords;
        for (int i23 = i11; i23 < i22; i23++) {
            simpleVector3.set(mesh.nxOrg[i23], mesh.nyOrg[i23], mesh.nzOrg[i23]);
            simpleVector5.set(simpleVectorArr[i23]);
            simpleVector4.set(simpleVector3);
            simpleVector4.scalarMul(simpleVector3.calcDot(simpleVector5));
            simpleVector5.sub(simpleVector4);
            simpleVector5 = simpleVector5.normalize();
            float[][] fArr7 = mesh.tangentVectors;
            float[] fArr8 = fArr7[i23];
            if (fArr8 == null) {
                fArr8 = new float[4];
                fArr7[i23] = fArr8;
            }
            fArr8[i11] = simpleVector5.f83625x;
            fArr8[1] = simpleVector5.f83626y;
            fArr8[2] = simpleVector5.f83627z;
            fArr8[3] = simpleVector3.calcCross(simpleVector5).calcDot(simpleVectorArr2[i23]) < 0.0f ? -1.0f : 1.0f;
        }
        mesh.tangentsCalculated = true;
        if (Logger.getLogLevel() >= 2) {
            Logger.log("Tangent vectors calculated in " + (System.currentTimeMillis() - currentTimeMillis) + "ms!");
        }
    }

    public Mesh cloneMesh(boolean z10) {
        int i10;
        Mesh mesh = new Mesh(this.maxVectors);
        mesh.anzCoords = this.anzCoords;
        mesh.anzVectors = this.anzVectors;
        mesh.anzTri = this.anzTri;
        mesh.obbStart = this.obbStart;
        mesh.obbEnd = this.obbEnd;
        int i11 = 0;
        while (true) {
            i10 = this.maxVectors;
            if (i11 >= i10) {
                break;
            }
            mesh.coords[i11] = this.coords[i11];
            if (i11 < this.anzCoords) {
                mesh.xOrg[i11] = this.xOrg[i11];
                mesh.yOrg[i11] = this.yOrg[i11];
                mesh.zOrg[i11] = this.zOrg[i11];
                mesh.nxOrg[i11] = this.nxOrg[i11];
                mesh.nyOrg[i11] = this.nyOrg[i11];
                mesh.nzOrg[i11] = this.nzOrg[i11];
            }
            i11++;
        }
        int i12 = (i10 / 3) + 1;
        for (int i13 = 0; i13 < i12; i13++) {
            for (int i14 = 0; i14 < 3; i14++) {
                mesh.points[i13][i14] = this.points[i13][i14];
            }
        }
        if (z10) {
            mesh.compress();
        }
        return mesh;
    }

    public void compress() {
        int i10 = this.anzCoords;
        int i11 = this.anzVectors + 8;
        if (this.obbEnd == 0) {
            i10 += 8;
        }
        float[] fArr = new float[i10];
        float[] fArr2 = new float[i10];
        float[] fArr3 = new float[i10];
        float[] fArr4 = new float[i10];
        float[] fArr5 = new float[i10];
        float[] fArr6 = new float[i10];
        for (int i12 = 0; i12 < this.anzCoords; i12++) {
            fArr[i12] = this.xOrg[i12];
            fArr2[i12] = this.yOrg[i12];
            fArr3[i12] = this.zOrg[i12];
            fArr4[i12] = this.nxOrg[i12];
            fArr5[i12] = this.nyOrg[i12];
            fArr6[i12] = this.nzOrg[i12];
        }
        this.xOrg = fArr;
        this.yOrg = fArr2;
        this.zOrg = fArr3;
        this.nxOrg = fArr4;
        this.nyOrg = fArr5;
        this.nzOrg = fArr6;
        if (i11 < this.maxVectors) {
            int i13 = (i11 / 3) + 1;
            int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i13, 3);
            int[] iArr2 = new int[i11];
            for (int i14 = 0; i14 < i11; i14++) {
                iArr2[i14] = this.coords[i14];
            }
            for (int i15 = 0; i15 < i13; i15++) {
                iArr[i15] = this.points[i15];
            }
            this.coords = iArr2;
            this.points = iArr;
            this.maxVectors = i11;
        }
    }

    public float[] getBoundingBox() {
        return calcBoundingBox();
    }

    public final float getLargestCoveredDistance() {
        float f10 = -1.0f;
        for (int i10 = 0; i10 < this.anzTri; i10++) {
            int[] iArr = this.coords;
            int[] iArr2 = this.points[i10];
            int i11 = iArr[iArr2[0]];
            int i12 = iArr[iArr2[1]];
            int i13 = iArr[iArr2[2]];
            float[] fArr = this.xOrg;
            float f11 = fArr[i11];
            float[] fArr2 = this.yOrg;
            float f12 = fArr2[i11];
            float[] fArr3 = this.zOrg;
            float f13 = fArr3[i11];
            float f14 = fArr[i12];
            float f15 = fArr2[i12];
            float f16 = fArr3[i12];
            float f17 = fArr[i13];
            float f18 = fArr2[i13];
            float f19 = fArr3[i13];
            float abs = Math.abs(f11 - f14);
            float abs2 = Math.abs(f14 - f17);
            float abs3 = Math.abs(f11 - f17);
            float abs4 = Math.abs(f12 - f15);
            float abs5 = Math.abs(f15 - f18);
            float abs6 = Math.abs(f12 - f18);
            float abs7 = Math.abs(f13 - f16);
            float abs8 = Math.abs(f16 - f19);
            float abs9 = Math.abs(f13 - f19);
            if (abs > f10) {
                f10 = abs;
            }
            if (abs2 <= f10) {
                abs2 = f10;
            }
            if (abs3 <= abs2) {
                abs3 = abs2;
            }
            if (abs4 <= abs3) {
                abs4 = abs3;
            }
            if (abs5 <= abs4) {
                abs5 = abs4;
            }
            if (abs6 <= abs5) {
                abs6 = abs5;
            }
            if (abs7 <= abs6) {
                abs7 = abs6;
            }
            if (abs8 <= abs7) {
                abs8 = abs7;
            }
            f10 = abs9 > abs8 ? abs9 : abs8;
        }
        return f10;
    }

    public int getTriangleCount() {
        return this.anzTri;
    }

    public int getUniqueVertexCount() {
        return this.anzCoords;
    }

    public int getVertexCount() {
        return this.anzVectors;
    }

    public boolean isLocked() {
        return this.locked;
    }

    public void removeVertexController() {
        IVertexController iVertexController = this.myController;
        if (iVertexController != null) {
            iVertexController.destroy();
            this.myController = null;
        }
    }

    public void rotateMesh(Matrix matrix, float f10, float f11, float f12, float f13) {
        float[][] fArr = matrix.mat;
        float[] fArr2 = fArr[0];
        float f14 = fArr2[0];
        float[] fArr3 = fArr[1];
        float f15 = fArr3[0];
        float[] fArr4 = fArr[2];
        float f16 = fArr4[0];
        float f17 = fArr2[1];
        float f18 = fArr3[1];
        float f19 = fArr4[1];
        float f20 = fArr2[2];
        float f21 = fArr3[2];
        float f22 = fArr4[2];
        for (int i10 = 0; i10 < this.anzCoords; i10++) {
            float[] fArr5 = this.zOrg;
            float f23 = fArr5[i10] - f12;
            float[] fArr6 = this.xOrg;
            float f24 = fArr6[i10] - f10;
            float[] fArr7 = this.yOrg;
            float f25 = fArr7[i10] - f11;
            fArr6[i10] = (f24 * f14) + (f25 * f15) + (f23 * f16) + f10;
            fArr7[i10] = (f24 * f17) + (f25 * f18) + (f23 * f19) + f11;
            fArr5[i10] = (f24 * f20) + (f25 * f21) + (f23 * f22) + f12;
            float[] fArr8 = this.nxOrg;
            float f26 = fArr8[i10];
            float[] fArr9 = this.nyOrg;
            float f27 = fArr9[i10];
            float[] fArr10 = this.nzOrg;
            float f28 = fArr10[i10];
            fArr8[i10] = (((f26 * f14) + (f27 * f15)) + (f28 * f16)) / f13;
            fArr9[i10] = (((f26 * f17) + (f27 * f18)) + (f28 * f19)) / f13;
            fArr10[i10] = (((f26 * f20) + (f27 * f21)) + (f28 * f22)) / f13;
        }
    }

    public void setLocked(boolean z10) {
        this.locked = z10;
    }

    public void setSerializeMethod(int i10) {
        this.serializeMethod = i10;
    }

    public boolean setVertexController(IVertexController iVertexController, boolean z10) {
        IVertexController iVertexController2 = this.myController;
        if (iVertexController2 != null) {
            iVertexController2.destroy();
        }
        if (!iVertexController.init(this, z10)) {
            return false;
        }
        this.myController = iVertexController;
        return true;
    }

    public void strip() {
        if (this.locked) {
            return;
        }
        this.points = null;
        this.coords = null;
    }

    public void strongStrip(World world, Object3D object3D) {
        if (world == null || this.locked) {
            return;
        }
        int size = world.objectList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object3D elementAt = world.objectList.elementAt(i10);
            if (elementAt != object3D && elementAt.objMesh == this && (!elementAt.isCompiled() || elementAt.dynamic)) {
                return;
            }
        }
        this.nxOrg = null;
        this.nyOrg = null;
        this.nzOrg = null;
    }

    public void translateMesh(Matrix matrix, Matrix matrix2) {
        for (int i10 = 0; i10 < this.anzCoords; i10++) {
            float[] fArr = this.zOrg;
            float f10 = fArr[i10];
            float[] fArr2 = matrix.mat[3];
            float f11 = fArr2[2];
            float[] fArr3 = matrix2.mat[3];
            fArr[i10] = f10 + f11 + fArr3[2];
            float[] fArr4 = this.xOrg;
            fArr4[i10] = fArr4[i10] + fArr2[0] + fArr3[0];
            float[] fArr5 = this.yOrg;
            fArr5[i10] = fArr5[i10] + fArr2[1] + fArr3[1];
        }
    }
}
