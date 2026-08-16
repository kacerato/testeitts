package com.jme3.math;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Eigen3f implements Serializable {
    static final double ONE_THIRD_DOUBLE = 0.3333333333333333d;
    static final long serialVersionUID = 1;
    float[] eigenValues;
    Vector3f[] eigenVectors;
    private static final Logger logger = Logger.getLogger(Eigen3f.class.getName());
    static final double ROOT_THREE_DOUBLE = Math.sqrt(3.0d);

    public Eigen3f() {
        this.eigenValues = new float[3];
        this.eigenVectors = new Vector3f[3];
    }

    private void computeRoots(Matrix3f matrix3f, double[] dArr) {
        double d10 = matrix3f.m00;
        double d11 = matrix3f.m01;
        double d12 = matrix3f.m02;
        double d13 = matrix3f.m11;
        double d14 = matrix3f.m12;
        double d15 = matrix3f.m22;
        double d16 = d10 * d13;
        double d17 = ((((d16 * d15) + (((d11 * 2.0d) * d12) * d14)) - ((d10 * d14) * d14)) - ((d13 * d12) * d12)) - ((d15 * d11) * d11);
        double d18 = ((((d16 - (d11 * d11)) + (d10 * d15)) - (d12 * d12)) + (d13 * d15)) - (d14 * d14);
        double d19 = d10 + d13 + d15;
        double d20 = d19 * 0.3333333333333333d;
        double d21 = (d18 - (d19 * d20)) * 0.3333333333333333d;
        if (d21 > 0.0d) {
            d21 = 0.0d;
        }
        double d22 = 0.5d * (d17 + ((((d20 * 2.0d) * d20) - d18) * d20));
        double d23 = (d22 * d22) + (d21 * d21 * d21);
        double d24 = d23 <= 0.0d ? d23 : 0.0d;
        double sqrt = Math.sqrt(-d21);
        double atan2 = Math.atan2(Math.sqrt(-d24), d22) * 0.3333333333333333d;
        double cos = Math.cos(atan2);
        double sin = Math.sin(atan2);
        double d25 = d20 + (2.0d * sqrt * cos);
        double d26 = ROOT_THREE_DOUBLE;
        double d27 = d20 - (((d26 * sin) + cos) * sqrt);
        double d28 = d20 - (sqrt * (cos - (d26 * sin)));
        if (d27 >= d25) {
            dArr[0] = d25;
            dArr[1] = d27;
        } else {
            dArr[0] = d27;
            dArr[1] = d25;
        }
        double d29 = dArr[1];
        if (d28 >= d29) {
            dArr[2] = d28;
            return;
        }
        dArr[2] = d29;
        double d30 = dArr[0];
        if (d28 >= d30) {
            dArr[1] = d28;
        } else {
            dArr[1] = d30;
            dArr[0] = d28;
        }
    }

    private void computeVectors(Matrix3f matrix3f, Vector3f vector3f, int i10, int i11, int i12) {
        boolean z10;
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        Vector3f.generateComplementBasis(vector3f2, vector3f3, vector3f);
        Vector3f mult = matrix3f.mult(vector3f2);
        float dot = this.eigenValues[i12] - vector3f2.dot(mult);
        float dot2 = vector3f3.dot(mult);
        float dot3 = this.eigenValues[i12] - vector3f3.dot(matrix3f.mult(vector3f3));
        float abs = FastMath.abs(dot);
        float abs2 = FastMath.abs(dot2);
        if (abs2 > abs) {
            abs = abs2;
        }
        float abs3 = FastMath.abs(dot3);
        boolean z11 = true;
        if (abs3 > abs) {
            abs = abs3;
            z10 = true;
        } else {
            z10 = false;
        }
        if (abs >= 1.0E-4f) {
            if (z10) {
                float invSqrt = FastMath.invSqrt((dot3 * dot3) + (dot2 * dot2));
                vector3f2.mult(dot3 * invSqrt, this.eigenVectors[i12]).addLocal(vector3f3.mult(dot2 * invSqrt));
            } else {
                float invSqrt2 = FastMath.invSqrt((dot * dot) + (dot2 * dot2));
                vector3f2.mult(dot2 * invSqrt2, this.eigenVectors[i12]).addLocal(vector3f3.mult(dot * invSqrt2));
            }
        } else if (z10) {
            this.eigenVectors[i12] = vector3f2;
        } else {
            this.eigenVectors[i12] = vector3f3;
        }
        Vector3f cross = vector3f.cross(this.eigenVectors[i12]);
        matrix3f.mult(vector3f, mult);
        float dot4 = this.eigenValues[i10] - vector3f.dot(mult);
        float dot5 = cross.dot(mult);
        float dot6 = this.eigenValues[i10] - cross.dot(matrix3f.mult(cross));
        float abs4 = FastMath.abs(dot4);
        float abs5 = FastMath.abs(dot5);
        if (abs5 > abs4) {
            abs4 = abs5;
        }
        float abs6 = FastMath.abs(dot6);
        if (abs6 > abs4) {
            abs4 = abs6;
        } else {
            z11 = false;
        }
        if (abs4 >= 1.0E-4f) {
            if (z11) {
                float invSqrt3 = FastMath.invSqrt((dot6 * dot6) + (dot5 * dot5));
                this.eigenVectors[i10] = vector3f.mult(dot6 * invSqrt3).add(cross.mult(dot5 * invSqrt3));
            } else {
                float invSqrt4 = FastMath.invSqrt((dot4 * dot4) + (dot5 * dot5));
                this.eigenVectors[i10] = vector3f.mult(dot5 * invSqrt4).add(cross.mult(dot4 * invSqrt4));
            }
        } else if (z11) {
            this.eigenVectors[i10].set(vector3f);
        } else {
            this.eigenVectors[i10].set(cross);
        }
        Vector3f[] vector3fArr = this.eigenVectors;
        vector3fArr[i12].cross(vector3fArr[i10], vector3fArr[i11]);
    }

    public static void main(String[] strArr) {
        Matrix3f matrix3f = new Matrix3f(2.0f, 1.0f, 1.0f, 1.0f, 2.0f, 1.0f, 1.0f, 1.0f, 2.0f);
        Eigen3f eigen3f = new Eigen3f(matrix3f);
        logger.info("eigenvalues = ");
        for (int i10 = 0; i10 < 3; i10++) {
            logger.log(Level.FINE, "{0} ", Float.valueOf(eigen3f.getEigenValue(i10)));
        }
        logger.info("eigenvectors = ");
        for (int i11 = 0; i11 < 3; i11++) {
            Vector3f eigenVector = eigen3f.getEigenVector(i11);
            logger.info(eigenVector.toString());
            matrix3f.setColumn(i11, eigenVector);
        }
        logger.info(matrix3f.toString());
    }

    private boolean positiveRank(Matrix3f matrix3f, float[] fArr, Vector3f vector3f) {
        fArr[0] = -1.0f;
        int i10 = -1;
        for (int i11 = 0; i11 < 3; i11++) {
            for (int i12 = i11; i12 < 3; i12++) {
                float abs = FastMath.abs(matrix3f.get(i11, i12));
                if (abs > fArr[0]) {
                    fArr[0] = abs;
                    i10 = i11;
                }
            }
        }
        vector3f.set(matrix3f.getRow(i10));
        return fArr[0] >= 1.0E-4f;
    }

    private float scaleMatrix(Matrix3f matrix3f) {
        float abs = FastMath.abs(matrix3f.m00);
        float abs2 = FastMath.abs(matrix3f.m01);
        if (abs2 > abs) {
            abs = abs2;
        }
        float abs3 = FastMath.abs(matrix3f.m02);
        if (abs3 > abs) {
            abs = abs3;
        }
        float abs4 = FastMath.abs(matrix3f.m11);
        if (abs4 > abs) {
            abs = abs4;
        }
        float abs5 = FastMath.abs(matrix3f.m12);
        if (abs5 > abs) {
            abs = abs5;
        }
        float abs6 = FastMath.abs(matrix3f.m22);
        if (abs6 > abs) {
            abs = abs6;
        }
        if (abs > 1.0f) {
            matrix3f.multLocal(1.0f / abs);
        }
        return abs;
    }

    public void calculateEigen(Matrix3f matrix3f) {
        char c10;
        this.eigenVectors[0] = new Vector3f();
        this.eigenVectors[1] = new Vector3f();
        this.eigenVectors[2] = new Vector3f();
        Matrix3f matrix3f2 = new Matrix3f(matrix3f);
        float scaleMatrix = scaleMatrix(matrix3f2);
        double[] dArr = new double[3];
        computeRoots(matrix3f2, dArr);
        float[] fArr = this.eigenValues;
        fArr[0] = (float) dArr[0];
        fArr[1] = (float) dArr[1];
        fArr[2] = (float) dArr[2];
        float[] fArr2 = new float[3];
        Vector3f[] vector3fArr = {new Vector3f(), new Vector3f(), new Vector3f()};
        for (int i10 = 0; i10 < 3; i10++) {
            Matrix3f matrix3f3 = new Matrix3f(matrix3f2);
            float f10 = matrix3f3.m00;
            float f11 = this.eigenValues[i10];
            matrix3f3.m00 = f10 - f11;
            matrix3f3.m11 -= f11;
            matrix3f3.m22 -= f11;
            float[] fArr3 = {fArr2[i10]};
            if (!positiveRank(matrix3f3, fArr3, vector3fArr[i10])) {
                if (scaleMatrix > 1.0f) {
                    for (int i11 = 0; i11 < 3; i11++) {
                        float[] fArr4 = this.eigenValues;
                        fArr4[i11] = fArr4[i11] * scaleMatrix;
                    }
                }
                this.eigenVectors[0].set(Vector3f.UNIT_X);
                this.eigenVectors[1].set(Vector3f.UNIT_Y);
                this.eigenVectors[2].set(Vector3f.UNIT_Z);
                return;
            }
            fArr2[i10] = fArr3[0];
        }
        float f12 = fArr2[0];
        float f13 = fArr2[1];
        if (f13 > f12) {
            f12 = f13;
            c10 = 1;
        } else {
            c10 = 0;
        }
        if (fArr2[2] > f12) {
            c10 = 2;
        }
        if (c10 == 0) {
            vector3fArr[0].normalizeLocal();
            computeVectors(matrix3f2, vector3fArr[0], 1, 2, 0);
        } else if (c10 == 1) {
            vector3fArr[1].normalizeLocal();
            computeVectors(matrix3f2, vector3fArr[1], 2, 0, 1);
        } else if (c10 == 2) {
            vector3fArr[2].normalizeLocal();
            computeVectors(matrix3f2, vector3fArr[2], 0, 1, 2);
        }
        if (scaleMatrix > 1.0f) {
            for (int i12 = 0; i12 < 3; i12++) {
                float[] fArr5 = this.eigenValues;
                fArr5[i12] = fArr5[i12] * scaleMatrix;
            }
        }
    }

    public float getEigenValue(int i10) {
        return this.eigenValues[i10];
    }

    public float[] getEigenValues() {
        return this.eigenValues;
    }

    public Vector3f getEigenVector(int i10) {
        return this.eigenVectors[i10];
    }

    public Vector3f[] getEigenVectors() {
        return this.eigenVectors;
    }

    public Eigen3f(Matrix3f matrix3f) {
        this.eigenValues = new float[3];
        this.eigenVectors = new Vector3f[3];
        calculateEigen(matrix3f);
    }
}
