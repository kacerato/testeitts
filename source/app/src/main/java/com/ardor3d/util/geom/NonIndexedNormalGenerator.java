package com.ardor3d.util.geom;

import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import java.util.Arrays;

public class NonIndexedNormalGenerator {
    private double _creaseAngle;
    private double[] _faceNormals;
    private int[] _indices;
    private int[] _normalsToSet;
    private final Vector3 _temp1 = new Vector3();
    private final Vector3 _temp2 = new Vector3();
    private final Vector3 _temp3 = new Vector3();

    private double[] getFacetedVertexNormals() {
        double[] dArr = new double[this._faceNormals.length * 3];
        int i10 = 0;
        while (true) {
            int i11 = i10 * 3;
            if (i11 >= this._faceNormals.length) {
                return dArr;
            }
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = (i10 * 9) + i12;
                double[] dArr2 = this._faceNormals;
                int i14 = i11 + i12;
                dArr[i13] = dArr2[i14];
                dArr[i13 + 3] = dArr2[i14];
                dArr[i13 + 6] = dArr2[i14];
            }
            i10++;
        }
    }

    private double[] getVertexNormals() {
        double[] dArr = this._faceNormals;
        double[] dArr2 = new double[dArr.length * 3];
        boolean[] zArr = new boolean[dArr.length];
        int i10 = 0;
        while (true) {
            int i11 = i10 * 3;
            if (i11 >= this._faceNormals.length) {
                return dArr2;
            }
            for (int i12 = 0; i12 < 3; i12++) {
                if (!zArr[i11 + i12]) {
                    setInterpolatedNormal(dArr2, zArr, i10, i12);
                }
            }
            i10++;
        }
    }

    private void initFaceNormals(double[] dArr) {
        this._faceNormals = new double[dArr.length / 3];
        int i10 = 0;
        while (true) {
            int i11 = i10 * 9;
            if (i11 >= dArr.length) {
                return;
            }
            this._temp1.set(dArr[i11], dArr[i11 + 1], dArr[i11 + 2]);
            this._temp2.set(dArr[i11 + 3], dArr[i11 + 4], dArr[i11 + 5]);
            this._temp3.set(dArr[i11 + 6], dArr[i11 + 7], dArr[i11 + 8]);
            this._temp2.subtractLocal(this._temp1);
            this._temp3.subtractLocal(this._temp1);
            this._temp2.cross(this._temp3, this._temp1);
            this._temp1.normalizeLocal();
            int i12 = i10 * 3;
            this._faceNormals[i12] = this._temp1.getX();
            this._faceNormals[i12 + 1] = this._temp1.getY();
            this._faceNormals[i12 + 2] = this._temp1.getZ();
            i10++;
        }
    }

    private void setInterpolatedNormal(double[] dArr, boolean[] zArr, int i10, int i11) {
        int i12;
        Vector3 vector3 = this._temp1;
        double[] dArr2 = this._faceNormals;
        int i13 = i10 * 3;
        vector3.set(dArr2[i13], dArr2[i13 + 1], dArr2[i13 + 2]);
        this._temp2.set(this._temp1);
        int i14 = i13 + i11;
        int i15 = this._indices[i14];
        int i16 = 0;
        this._normalsToSet[0] = i14;
        int i17 = i14 + 1;
        int i18 = 1;
        while (true) {
            int[] iArr = this._indices;
            if (i17 >= iArr.length) {
                break;
            }
            if (iArr[i17] == i15 && !zArr[i14]) {
                Vector3 vector32 = this._temp3;
                double[] dArr3 = this._faceNormals;
                int i19 = (i17 / 3) * 3;
                vector32.set(dArr3[i19], dArr3[i19 + 1], dArr3[i19 + 2]);
                if (this._temp1.smallestAngleBetween(this._temp3) < this._creaseAngle) {
                    this._normalsToSet = setValue(this._normalsToSet, i18, i17);
                    i18++;
                    this._temp2.addLocal(this._temp3);
                }
            }
            i17++;
        }
        this._temp2.normalizeLocal();
        while (true) {
            int[] iArr2 = this._normalsToSet;
            if (i16 >= iArr2.length || (i12 = iArr2[i16]) == -1) {
                return;
            }
            dArr[i12 * 3] = this._temp2.getX();
            dArr[(this._normalsToSet[i16] * 3) + 1] = this._temp2.getY();
            dArr[(this._normalsToSet[i16] * 3) + 2] = this._temp2.getZ();
            int[] iArr3 = this._normalsToSet;
            zArr[iArr3[i16]] = true;
            iArr3[i16] = -1;
            i16++;
        }
    }

    private int[] setValue(int[] iArr, int i10, int i11) {
        if (i10 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 3];
            Arrays.fill(iArr2, -1);
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = iArr2;
        }
        iArr[i10] = i11;
        return iArr;
    }

    public void generateNormals(Mesh mesh) {
    }

    public double[] generateNormals(double[] dArr, int[] iArr, double d10) {
        this._indices = iArr;
        this._creaseAngle = d10;
        int[] iArr2 = new int[10];
        this._normalsToSet = iArr2;
        Arrays.fill(iArr2, -1);
        initFaceNormals(dArr);
        if (d10 >= 1.0E-4d && iArr != null) {
            return getVertexNormals();
        }
        return getFacetedVertexNormals();
    }
}
