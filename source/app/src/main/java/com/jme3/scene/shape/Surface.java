package com.jme3.scene.shape;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.CurveAndSurfaceMath;
import com.jme3.math.FastMath;
import com.jme3.math.Spline;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Surface extends Mesh {
    private int basisUFunctionDegree;
    private int basisVFunctionDegree;
    private List<List<Vector4f>> controlPoints;
    private List<Float>[] knots;
    private Spline.SplineType type;
    private int uSegments;
    private int vSegments;

    private Surface(List<List<Vector4f>> list, List<Float>[] listArr, int i10, int i11, int i12, int i13, boolean z10) {
        validateInputData(list, listArr, i10, i11);
        this.type = Spline.SplineType.Nurb;
        this.uSegments = i10;
        this.vSegments = i11;
        this.controlPoints = list;
        this.knots = listArr;
        this.basisUFunctionDegree = i12;
        CurveAndSurfaceMath.prepareNurbsKnots(listArr[0], i12);
        List<Float> list2 = listArr[1];
        if (list2 != null) {
            this.basisVFunctionDegree = i13;
            CurveAndSurfaceMath.prepareNurbsKnots(list2, i13);
        }
        buildSurface(z10);
    }

    private void addNormal(Vector3f vector3f, Map<Vector3f, Vector3f> map, boolean z10, Vector3f... vector3fArr) {
        for (Vector3f vector3f2 : vector3fArr) {
            Vector3f vector3f3 = map.get(vector3f2);
            if (!z10 || vector3f3 == null) {
                map.put(vector3f2, vector3f.m1292clone());
            } else {
                vector3f3.addLocal(vector3f).normalizeLocal();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void buildSurface(boolean z10) {
        int i10;
        int i11;
        float minUNurbKnot = getMinUNurbKnot();
        float maxUNurbKnot = (getMaxUNurbKnot() - minUNurbKnot) / this.uSegments;
        float minVNurbKnot = getMinVNurbKnot();
        float maxVNurbKnot = (getMaxVNurbKnot() - minVNurbKnot) / this.vSegments;
        ArrayList arrayList = new ArrayList((this.uSegments + 1) * (this.vSegments + 1));
        int i12 = 0;
        while (true) {
            i10 = this.vSegments;
            if (i12 > i10) {
                break;
            }
            float f10 = minUNurbKnot;
            int i13 = 0;
            while (i13 <= this.uSegments) {
                Vector3f vector3f = new Vector3f();
                CurveAndSurfaceMath.interpolate(f10, minVNurbKnot, this.controlPoints, this.knots, this.basisUFunctionDegree, this.basisVFunctionDegree, vector3f);
                arrayList.add(vector3f);
                f10 += maxUNurbKnot;
                i13++;
                i12 = i12;
            }
            minVNurbKnot += maxVNurbKnot;
            i12++;
        }
        if (!z10) {
            int i14 = this.uSegments;
            int i15 = i14 + 1;
            int i16 = i10 + 1;
            int i17 = ((i14 - 1) * 2) + 2;
            ArrayList arrayList2 = new ArrayList(i16 * i17);
            for (int i18 = 0; i18 < arrayList.size(); i18++) {
                arrayList2.add((Vector3f) arrayList.get(i18));
                int i19 = i18 % i15;
                if (i19 != 0 && i19 != i14) {
                    arrayList2.add((Vector3f) arrayList.get(i18));
                }
            }
            arrayList = new ArrayList(arrayList2.size() * i16);
            arrayList.addAll(arrayList2.subList(0, i17));
            int i20 = 1;
            while (true) {
                i11 = this.vSegments;
                if (i20 >= i11) {
                    break;
                }
                int i21 = i20 * i17;
                int i22 = i21 + i17;
                arrayList.addAll(arrayList2.subList(i21, i22));
                arrayList.addAll(arrayList2.subList(i21, i22));
                i20++;
            }
            arrayList.addAll(arrayList2.subList(i11 * i17, (i11 * i17) + i17));
        }
        int i23 = this.uSegments;
        int i24 = this.vSegments * i23 * 6;
        int[] iArr = new int[i24];
        int i25 = z10 ? i23 + 1 : i23 * 2;
        if (z10) {
            int i26 = 0;
            for (int i27 = 0; i27 < this.vSegments; i27++) {
                for (int i28 = 0; i28 < this.uSegments; i28++) {
                    int i29 = (i27 * i25) + i28;
                    int i30 = i29 + i25;
                    iArr[i26] = i30;
                    int i31 = i29 + 1;
                    iArr[i26 + 1] = i31;
                    iArr[i26 + 2] = i29;
                    iArr[i26 + 3] = i30;
                    int i32 = i26 + 5;
                    iArr[i26 + 4] = i30 + 1;
                    i26 += 6;
                    iArr[i32] = i31;
                }
            }
        } else {
            int i33 = 0;
            for (int i34 = 0; i34 < this.vSegments; i34++) {
                for (int i35 = 0; i35 < this.uSegments; i35++) {
                    int i36 = i34 * 2 * i25;
                    int i37 = i35 * 2;
                    int i38 = i36 + i25 + i37;
                    iArr[i33] = i38;
                    int i39 = i36 + i37;
                    int i40 = i39 + 1;
                    iArr[i33 + 1] = i40;
                    iArr[i33 + 2] = i39;
                    iArr[i33 + 3] = i38;
                    int i41 = i33 + 5;
                    iArr[i33 + 4] = i38 + 1;
                    i33 += 6;
                    iArr[i41] = i40;
                }
            }
        }
        Vector3f[] vector3fArr = (Vector3f[]) arrayList.toArray(new Vector3f[arrayList.size()]);
        HashMap hashMap = new HashMap(vector3fArr.length);
        for (int i42 = 0; i42 < i24; i42 += 3) {
            int i43 = i42 + 1;
            int i44 = i42 + 2;
            addNormal(FastMath.computeNormal(vector3fArr[iArr[i42]], vector3fArr[iArr[i43]], vector3fArr[iArr[i44]]), hashMap, z10, vector3fArr[iArr[i42]], vector3fArr[iArr[i43]], vector3fArr[iArr[i44]]);
        }
        float[] fArr = new float[vector3fArr.length * 3];
        int i45 = 0;
        for (Vector3f vector3f2 : vector3fArr) {
            Vector3f vector3f3 = hashMap.get(vector3f2);
            fArr[i45] = vector3f3.f81611x;
            int i46 = i45 + 2;
            fArr[i45 + 1] = vector3f3.f81612y;
            i45 += 3;
            fArr[i46] = vector3f3.f81613z;
        }
        setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(vector3fArr));
        setBuffer(VertexBuffer.Type.Index, 3, iArr);
        setBuffer(VertexBuffer.Type.Normal, 3, fArr);
        updateBound();
        updateCounts();
    }

    public static final Surface createNurbsSurface(List<List<Vector4f>> list, List<Float>[] listArr, int i10, int i11, int i12, int i13) {
        return createNurbsSurface(list, listArr, i10, i11, i12, i13, true);
    }

    private float getMaxUNurbKnot() {
        List<Float> list = this.knots[0];
        return list.get(list.size() - this.basisUFunctionDegree).floatValue();
    }

    private float getMaxVNurbKnot() {
        List<Float> list = this.knots[1];
        return list.get(list.size() - this.basisVFunctionDegree).floatValue();
    }

    private float getMinUNurbKnot() {
        return this.knots[0].get(this.basisUFunctionDegree - 1).floatValue();
    }

    private float getMinVNurbKnot() {
        return this.knots[1].get(this.basisVFunctionDegree - 1).floatValue();
    }

    private void validateInputData(List<List<Vector4f>> list, List<Float>[] listArr, int i10, int i11) {
        int size = list.get(0).size();
        for (int i12 = 1; i12 < list.size(); i12++) {
            if (list.get(i12).size() != size) {
                throw new IllegalArgumentException("The amount of 'U' control points is invalid!");
            }
        }
        if (i10 <= 0) {
            throw new IllegalArgumentException("U segments amount should be positive!");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("V segments amount cannot be negative!");
        }
        if (listArr.length != 2) {
            throw new IllegalArgumentException("Nurb surface should have two rows of knots!");
        }
        for (int i13 = 0; i13 < listArr.length; i13++) {
            int i14 = 0;
            while (i14 < listArr[i13].size() - 1) {
                float floatValue = listArr[i13].get(i14).floatValue();
                i14++;
                if (floatValue > listArr[i13].get(i14).floatValue()) {
                    throw new IllegalArgumentException("The knots' values cannot decrease!");
                }
            }
        }
    }

    public int getBasisUFunctionDegree() {
        return this.basisUFunctionDegree;
    }

    public int getBasisVFunctionDegree() {
        return this.basisVFunctionDegree;
    }

    public List<List<Vector4f>> getControlPoints() {
        return this.controlPoints;
    }

    public List<Float> getKnots(int i10) {
        return this.knots[i10];
    }

    public Spline.SplineType getType() {
        return this.type;
    }

    public int getUControlPointsAmount() {
        return this.controlPoints.size();
    }

    public int getVControlPointsAmount() {
        if (this.controlPoints.get(0) == null) {
            return 0;
        }
        return this.controlPoints.get(0).size();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.type = (Spline.SplineType) capsule.readEnum("type", Spline.SplineType.class, null);
        this.basisUFunctionDegree = capsule.readInt("basisUFunctionDegree", 0);
        this.basisVFunctionDegree = capsule.readInt("basisVFunctionDegree", 0);
        this.uSegments = capsule.readInt("uSegments", 0);
        this.vSegments = capsule.readInt("vSegments", 0);
        float[][] readFloatArray2D = capsule.readFloatArray2D("knotArray2D", null);
        int length = readFloatArray2D.length;
        this.knots = new ArrayList[length];
        for (int i10 = 0; i10 < length; i10++) {
            float[] fArr = readFloatArray2D[i10];
            this.knots[i10] = new ArrayList(fArr.length);
            for (float f10 : fArr) {
                this.knots[i10].add(Float.valueOf(f10));
            }
        }
        ArrayList[] readSavableArrayListArray = capsule.readSavableArrayListArray("listArray", null);
        this.controlPoints = new ArrayList(readSavableArrayListArray.length);
        for (ArrayList arrayList : readSavableArrayListArray) {
            this.controlPoints.add(arrayList);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.type, "type", (Enum) null);
        capsule.write(this.basisUFunctionDegree, "basisUFunctionDegree", 0);
        capsule.write(this.basisVFunctionDegree, "basisVFunctionDegree", 0);
        capsule.write(this.uSegments, "uSegments", 0);
        capsule.write(this.vSegments, "vSegments", 0);
        int length = this.knots.length;
        float[][] fArr = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            List<Float> list = this.knots[i10];
            int size = list.size();
            float[] fArr2 = new float[size];
            for (int i11 = 0; i11 < size; i11++) {
                fArr2[i11] = list.get(i11).floatValue();
            }
            fArr[i10] = fArr2;
        }
        capsule.write(fArr, "knotArray2D", (float[][]) null);
        int size2 = this.controlPoints.size();
        ArrayList[] arrayListArr = new ArrayList[size2];
        for (int i12 = 0; i12 < size2; i12++) {
            List<Vector4f> list2 = this.controlPoints.get(i12);
            ArrayList arrayList = new ArrayList(list2.size());
            arrayListArr[i12] = arrayList;
            arrayList.addAll(list2);
        }
        capsule.writeSavableArrayListArray(arrayListArr, "listArray", null);
    }

    public static final Surface createNurbsSurface(List<List<Vector4f>> list, List<Float>[] listArr, int i10, int i11, int i12, int i13, boolean z10) {
        Surface surface = new Surface(list, listArr, i10, i11, i12, i13, z10);
        surface.type = Spline.SplineType.Nurb;
        return surface;
    }

    public Surface() {
    }
}
