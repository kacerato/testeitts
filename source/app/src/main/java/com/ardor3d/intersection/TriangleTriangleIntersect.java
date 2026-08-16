package com.ardor3d.intersection;

import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;

public class TriangleTriangleIntersect {
    public static final double EPSILON = 1.0E-12d;

    private static boolean coplanarTriTri(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, Vector3 vector35, Vector3 vector36, Vector3 vector37) {
        int i10;
        Vector3 vector38 = new Vector3();
        vector38.setX(Math.abs(vector3.getX()));
        vector38.setY(Math.abs(vector3.getY()));
        vector38.setZ(Math.abs(vector3.getZ()));
        int i11 = 2;
        if (vector38.getX() > vector38.getY()) {
            if (vector38.getX() > vector38.getZ()) {
                i10 = 1;
            }
            i10 = 0;
            i11 = 1;
        } else {
            if (vector38.getZ() <= vector38.getY()) {
                i10 = 0;
            }
            i10 = 0;
            i11 = 1;
        }
        double[] dArr = new double[3];
        vector32.toArray(dArr);
        double[] dArr2 = new double[3];
        vector33.toArray(dArr2);
        double[] dArr3 = new double[3];
        vector34.toArray(dArr3);
        double[] dArr4 = new double[3];
        vector35.toArray(dArr4);
        double[] dArr5 = new double[3];
        vector36.toArray(dArr5);
        double[] dArr6 = new double[3];
        vector37.toArray(dArr6);
        if (edgeAgainstTriEdges(dArr, dArr2, dArr4, dArr5, dArr6, i10, i11) || edgeAgainstTriEdges(dArr2, dArr3, dArr4, dArr5, dArr6, i10, i11) || edgeAgainstTriEdges(dArr3, dArr, dArr4, dArr5, dArr6, i10, i11)) {
            return true;
        }
        int i12 = i10;
        int i13 = i11;
        pointInTri(dArr, dArr4, dArr5, dArr6, i12, i13);
        pointInTri(dArr4, dArr, dArr2, dArr3, i12, i13);
        return false;
    }

    private static boolean edgeAgainstTriEdges(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5, int i10, int i11) {
        double d10 = dArr2[i10] - dArr[i10];
        double d11 = dArr2[i11] - dArr[i11];
        return edgeEdgeTest(dArr, dArr3, dArr4, i10, i11, d10, d11) || edgeEdgeTest(dArr, dArr4, dArr5, i10, i11, d10, d11) || edgeEdgeTest(dArr, dArr5, dArr3, i10, i11, d10, d11);
    }

    private static boolean edgeEdgeTest(double[] dArr, double[] dArr2, double[] dArr3, int i10, int i11, double d10, double d11) {
        double d12 = dArr2[i10];
        double d13 = d12 - dArr3[i10];
        double d14 = dArr2[i11];
        double d15 = d14 - dArr3[i11];
        double d16 = dArr[i10] - d12;
        double d17 = dArr[i11] - d14;
        double d18 = (d11 * d13) - (d10 * d15);
        double d19 = (d15 * d16) - (d13 * d17);
        if ((d18 <= 0.0d || d19 < 0.0d || d19 > d18) && (d18 >= 0.0d || d19 > 0.0d || d19 < d18)) {
            return false;
        }
        double d20 = (d17 * d10) - (d11 * d16);
        return d18 > 0.0d ? d20 >= 0.0d && d20 <= d18 : d20 <= 0.0d && d20 >= d18;
    }

    public static boolean intersectTriTri(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, Vector3 vector35, Vector3 vector36) {
        double x10;
        double x11;
        double x12;
        double x13;
        double x14;
        double x15;
        boolean z10 = false;
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance4 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance5 = Vector3.fetchTempInstance();
        try {
            vector32.subtract(vector3, fetchTempInstance);
            vector33.subtract(vector3, fetchTempInstance2);
            fetchTempInstance.cross(fetchTempInstance2, fetchTempInstance3);
            double d10 = -fetchTempInstance3.dot(vector3);
            double dot = fetchTempInstance3.dot(vector34) + d10;
            double dot2 = fetchTempInstance3.dot(vector35) + d10;
            double dot3 = fetchTempInstance3.dot(vector36) + d10;
            double d11 = Math.abs(dot) < 1.0E-12d ? 0.0d : dot;
            double d12 = Math.abs(dot2) < 1.0E-12d ? 0.0d : dot2;
            double d13 = Math.abs(dot3) < 1.0E-12d ? 0.0d : dot3;
            double d14 = d11 * d12;
            double d15 = d11 * d13;
            if (d14 <= 0.0d || d15 <= 0.0d) {
                vector35.subtract(vector34, fetchTempInstance);
                vector36.subtract(vector34, fetchTempInstance2);
                fetchTempInstance.cross(fetchTempInstance2, fetchTempInstance4);
                double d16 = -fetchTempInstance4.dot(vector34);
                double dot4 = fetchTempInstance4.dot(vector3) + d16;
                double dot5 = fetchTempInstance4.dot(vector32) + d16;
                double dot6 = fetchTempInstance4.dot(vector33) + d16;
                double d17 = Math.abs(dot4) < 1.0E-12d ? 0.0d : dot4;
                double d18 = Math.abs(dot5) < 1.0E-12d ? 0.0d : dot5;
                double d19 = Math.abs(dot6) < 1.0E-12d ? 0.0d : dot6;
                double d20 = d17 * d18;
                double d21 = d17 * d19;
                if (d20 <= 0.0d || d21 <= 0.0d) {
                    fetchTempInstance3.cross(fetchTempInstance4, fetchTempInstance5);
                    double abs = Math.abs(fetchTempInstance5.getX());
                    double abs2 = Math.abs(fetchTempInstance5.getY());
                    double abs3 = Math.abs(fetchTempInstance5.getZ());
                    if (abs2 > abs) {
                        z10 = true;
                        abs = abs2;
                    }
                    if (abs3 > abs) {
                        x10 = vector3.getZ();
                        x11 = vector32.getZ();
                        x12 = vector33.getZ();
                        x13 = vector34.getZ();
                        x14 = vector35.getZ();
                        x15 = vector36.getZ();
                    } else if (z10) {
                        x10 = vector3.getY();
                        x11 = vector32.getY();
                        x12 = vector33.getY();
                        x13 = vector34.getY();
                        x14 = vector35.getY();
                        x15 = vector36.getY();
                    } else {
                        x10 = vector3.getX();
                        x11 = vector32.getX();
                        x12 = vector33.getX();
                        x13 = vector34.getX();
                        x14 = vector35.getX();
                        x15 = vector36.getX();
                    }
                    double d22 = x10;
                    double d23 = x11;
                    double d24 = x12;
                    double d25 = x14;
                    double d26 = x15;
                    double d27 = x13;
                    Vector3 fetchTempInstance6 = Vector3.fetchTempInstance();
                    Vector2 fetchTempInstance7 = Vector2.fetchTempInstance();
                    if (newComputeIntervals(d22, d23, d24, d17, d18, d19, d20, d21, fetchTempInstance6, fetchTempInstance7)) {
                        boolean coplanarTriTri = coplanarTriTri(fetchTempInstance3, vector3, vector32, vector33, vector34, vector35, vector36);
                        Vector3.releaseTempInstance(fetchTempInstance);
                        Vector3.releaseTempInstance(fetchTempInstance2);
                        Vector3.releaseTempInstance(fetchTempInstance3);
                        Vector3.releaseTempInstance(fetchTempInstance4);
                        Vector3.releaseTempInstance(fetchTempInstance5);
                        return coplanarTriTri;
                    }
                    Vector3 fetchTempInstance8 = Vector3.fetchTempInstance();
                    Vector2 fetchTempInstance9 = Vector2.fetchTempInstance();
                    if (newComputeIntervals(d27, d25, d26, d11, d12, d13, d14, d15, fetchTempInstance8, fetchTempInstance9)) {
                        boolean coplanarTriTri2 = coplanarTriTri(fetchTempInstance3, vector3, vector32, vector33, vector34, vector35, vector36);
                        Vector3.releaseTempInstance(fetchTempInstance);
                        Vector3.releaseTempInstance(fetchTempInstance2);
                        Vector3.releaseTempInstance(fetchTempInstance3);
                        Vector3.releaseTempInstance(fetchTempInstance4);
                        Vector3.releaseTempInstance(fetchTempInstance5);
                        return coplanarTriTri2;
                    }
                    double x16 = fetchTempInstance7.getX() * fetchTempInstance7.getY();
                    double x17 = fetchTempInstance9.getX() * fetchTempInstance9.getY();
                    double d28 = x16 * x17;
                    double x18 = fetchTempInstance6.getX() * d28;
                    double[] dArr = {x18 + (fetchTempInstance6.getY() * fetchTempInstance7.getY() * x17), x18 + (fetchTempInstance6.getZ() * fetchTempInstance7.getX() * x17)};
                    double x19 = fetchTempInstance8.getX() * d28;
                    double[] dArr2 = {x19 + (fetchTempInstance8.getY() * x16 * fetchTempInstance9.getY()), x19 + (fetchTempInstance8.getZ() * x16 * fetchTempInstance9.getX())};
                    Vector3.releaseTempInstance(fetchTempInstance6);
                    Vector3.releaseTempInstance(fetchTempInstance8);
                    Vector2.releaseTempInstance(fetchTempInstance7);
                    Vector2.releaseTempInstance(fetchTempInstance9);
                    sort(dArr);
                    sort(dArr2);
                    if (dArr[1] < dArr2[0] || dArr2[1] < dArr[0]) {
                        Vector3.releaseTempInstance(fetchTempInstance);
                        Vector3.releaseTempInstance(fetchTempInstance2);
                        Vector3.releaseTempInstance(fetchTempInstance3);
                        Vector3.releaseTempInstance(fetchTempInstance4);
                        Vector3.releaseTempInstance(fetchTempInstance5);
                        return false;
                    }
                    Vector3.releaseTempInstance(fetchTempInstance);
                    Vector3.releaseTempInstance(fetchTempInstance2);
                    Vector3.releaseTempInstance(fetchTempInstance3);
                    Vector3.releaseTempInstance(fetchTempInstance4);
                    Vector3.releaseTempInstance(fetchTempInstance5);
                    return true;
                }
            }
            return false;
        } finally {
            Vector3.releaseTempInstance(fetchTempInstance);
            Vector3.releaseTempInstance(fetchTempInstance2);
            Vector3.releaseTempInstance(fetchTempInstance3);
            Vector3.releaseTempInstance(fetchTempInstance4);
            Vector3.releaseTempInstance(fetchTempInstance5);
        }
    }

    private static boolean newComputeIntervals(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, Vector3 vector3, Vector2 vector2) {
        if (d16 > 0.0d) {
            vector3.setX(d12);
            vector3.setY((d10 - d12) * d15);
            vector3.setZ((d11 - d12) * d15);
            vector2.setX(d15 - d13);
            vector2.setY(d15 - d14);
            return false;
        }
        if (d17 > 0.0d) {
            vector3.setX(d11);
            vector3.setY((d10 - d11) * d14);
            vector3.setZ((d12 - d11) * d14);
            vector2.setX(d14 - d13);
            vector2.setY(d14 - d15);
            return false;
        }
        if (d14 * d15 > 0.0d || d13 != 0.0d) {
            vector3.setX(d10);
            vector3.setY((d11 - d10) * d13);
            vector3.setZ((d12 - d10) * d13);
            vector2.setX(d13 - d14);
            vector2.setY(d13 - d15);
            return false;
        }
        if (d14 != 0.0d) {
            vector3.setX(d11);
            vector3.setY((d10 - d11) * d14);
            vector3.setZ((d12 - d11) * d14);
            vector2.setX(d14 - d13);
            vector2.setY(d14 - d15);
            return false;
        }
        if (d15 == 0.0d) {
            return true;
        }
        vector3.setX(d12);
        vector3.setY((d10 - d12) * d15);
        vector3.setZ((d11 - d12) * d15);
        vector2.setX(d15 - d13);
        vector2.setY(d15 - d14);
        return false;
    }

    private static boolean pointInTri(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, int i10, int i11) {
        double d10 = dArr3[i11];
        double d11 = dArr2[i11];
        double d12 = d10 - d11;
        double d13 = dArr3[i10];
        double d14 = dArr2[i10];
        double d15 = -(d13 - d14);
        double d16 = dArr[i10];
        double d17 = dArr[i11];
        double d18 = (d12 * d16) + (d15 * d17) + (((-d12) * d14) - (d15 * d11));
        double d19 = dArr4[i11];
        double d20 = d19 - d10;
        double d21 = dArr4[i10];
        double d22 = -(d21 - d13);
        double d23 = (d20 * d16) + (d22 * d17) + (((-d20) * d13) - (d10 * d22));
        double d24 = d11 - d19;
        double d25 = -(d14 - d21);
        return d18 * d23 > 0.0d && d18 * (((d24 * d16) + (d25 * d17)) + (((-d24) * d21) - (d19 * d25))) > 0.0d;
    }

    private static void sort(double[] dArr) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        if (d10 > d11) {
            dArr[0] = d11;
            dArr[1] = d10;
        }
    }
}
