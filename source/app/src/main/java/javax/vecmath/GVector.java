package javax.vecmath;

import java.io.Serializable;

public class GVector implements Serializable, Cloneable {
    static final long serialVersionUID = 1398850036893875112L;
    private int length;
    double[] values;

    public GVector(int i10) {
        this.length = i10;
        this.values = new double[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.values[i11] = 0.0d;
        }
    }

    public final void LUDBackSolve(GMatrix gMatrix, GVector gVector, GVector gVector2) {
        int i10 = gMatrix.nRow * gMatrix.nCol;
        double[] dArr = new double[i10];
        double[] dArr2 = new double[i10];
        int[] iArr = new int[gVector.getSize()];
        if (gMatrix.nRow != gVector.getSize()) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector16"));
        }
        if (gMatrix.nRow != gVector2.getSize()) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector24"));
        }
        if (gMatrix.nRow != gMatrix.nCol) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector25"));
        }
        for (int i11 = 0; i11 < gMatrix.nRow; i11++) {
            int i12 = 0;
            while (true) {
                int i13 = gMatrix.nCol;
                if (i12 < i13) {
                    dArr[(i13 * i11) + i12] = gMatrix.values[i11][i12];
                    i12++;
                }
            }
        }
        for (int i14 = 0; i14 < i10; i14++) {
            dArr2[i14] = 0.0d;
        }
        for (int i15 = 0; i15 < gMatrix.nRow; i15++) {
            dArr2[gMatrix.nCol * i15] = gVector.values[i15];
        }
        for (int i16 = 0; i16 < gMatrix.nCol; i16++) {
            iArr[i16] = (int) gVector2.values[i16];
        }
        GMatrix.luBacksubstitution(gMatrix.nRow, dArr, iArr, dArr2);
        for (int i17 = 0; i17 < gMatrix.nRow; i17++) {
            this.values[i17] = dArr2[gMatrix.nCol * i17];
        }
    }

    public final void SVDBackSolve(GMatrix gMatrix, GMatrix gMatrix2, GMatrix gMatrix3, GVector gVector) {
        int i10;
        if (gMatrix.nRow != gVector.getSize() || (i10 = gMatrix.nRow) != gMatrix.nCol || i10 != gMatrix2.nRow) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector15"));
        }
        int i11 = gMatrix2.nCol;
        if (i11 != this.values.length || i11 != gMatrix3.nCol || i11 != gMatrix3.nRow) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector23"));
        }
        GMatrix gMatrix4 = new GMatrix(i10, i11);
        gMatrix4.mul(gMatrix, gMatrix3);
        gMatrix4.mulTransposeRight(gMatrix, gMatrix2);
        gMatrix4.invert();
        mul(gMatrix4, gVector);
    }

    public final void add(GVector gVector) {
        if (this.length == gVector.length) {
            for (int i10 = 0; i10 < this.length; i10++) {
                double[] dArr = this.values;
                dArr[i10] = dArr[i10] + gVector.values[i10];
            }
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector4"));
    }

    public final double angle(GVector gVector) {
        return Math.acos(dot(gVector) / (norm() * gVector.norm()));
    }

    public Object clone() {
        try {
            GVector gVector = (GVector) super.clone();
            gVector.values = new double[this.length];
            for (int i10 = 0; i10 < this.length; i10++) {
                gVector.values[i10] = this.values[i10];
            }
            return gVector;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final double dot(GVector gVector) {
        if (this.length != gVector.length) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector14"));
        }
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.length; i10++) {
            d10 += this.values[i10] * gVector.values[i10];
        }
        return d10;
    }

    public boolean epsilonEquals(GVector gVector, double d10) {
        if (this.length != gVector.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.length; i10++) {
            double d11 = this.values[i10] - gVector.values[i10];
            if (d11 < 0.0d) {
                d11 = -d11;
            }
            if (d11 > d10) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(GVector gVector) {
        try {
            if (this.length != gVector.length) {
                return false;
            }
            for (int i10 = 0; i10 < this.length; i10++) {
                if (this.values[i10] != gVector.values[i10]) {
                    return false;
                }
            }
            return true;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final double getElement(int i10) {
        return this.values[i10];
    }

    public final int getSize() {
        return this.values.length;
    }

    public int hashCode() {
        long j10 = 1;
        for (int i10 = 0; i10 < this.length; i10++) {
            j10 = (j10 * 31) + VecMathUtil.doubleToLongBits(this.values[i10]);
        }
        return (int) (j10 ^ (j10 >> 32));
    }

    public final void interpolate(GVector gVector, GVector gVector2, float f10) {
        interpolate(gVector, gVector2, f10);
    }

    public final void mul(GMatrix gMatrix, GVector gVector) {
        double[] dArr;
        if (gMatrix.getNumCol() == gVector.length) {
            if (this.length == gMatrix.getNumRow()) {
                if (gVector != this) {
                    dArr = gVector.values;
                } else {
                    dArr = (double[]) this.values.clone();
                }
                for (int i10 = this.length - 1; i10 >= 0; i10--) {
                    this.values[i10] = 0.0d;
                    for (int i11 = gVector.length - 1; i11 >= 0; i11--) {
                        double[] dArr2 = this.values;
                        dArr2[i10] = dArr2[i10] + (gMatrix.values[i10][i11] * dArr[i11]);
                    }
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GVector11"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector10"));
    }

    public final void negate() {
        for (int i10 = this.length - 1; i10 >= 0; i10--) {
            double[] dArr = this.values;
            dArr[i10] = dArr[i10] * (-1.0d);
        }
    }

    public final double norm() {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.length; i10++) {
            double d11 = this.values[i10];
            d10 += d11 * d11;
        }
        return Math.sqrt(d10);
    }

    public final double normSquared() {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.length; i10++) {
            double d11 = this.values[i10];
            d10 += d11 * d11;
        }
        return d10;
    }

    public final void normalize(GVector gVector) {
        if (this.length == gVector.length) {
            double d10 = 0.0d;
            for (int i10 = 0; i10 < this.length; i10++) {
                double d11 = gVector.values[i10];
                d10 += d11 * d11;
            }
            double sqrt = 1.0d / Math.sqrt(d10);
            for (int i11 = 0; i11 < this.length; i11++) {
                this.values[i11] = gVector.values[i11] * sqrt;
            }
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector0"));
    }

    public final void scale(double d10, GVector gVector) {
        if (this.length == gVector.length) {
            for (int i10 = 0; i10 < this.length; i10++) {
                this.values[i10] = gVector.values[i10] * d10;
            }
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector1"));
    }

    public final void scaleAdd(double d10, GVector gVector, GVector gVector2) {
        int i10 = gVector2.length;
        int i11 = gVector.length;
        if (i10 != i11) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector2"));
        }
        if (this.length != i11) {
            throw new MismatchedSizeException(VecMathI18N.getString("GVector3"));
        }
        for (int i12 = 0; i12 < this.length; i12++) {
            this.values[i12] = (gVector.values[i12] * d10) + gVector2.values[i12];
        }
    }

    public final void set(double[] dArr) {
        for (int i10 = this.length - 1; i10 >= 0; i10--) {
            this.values[i10] = dArr[i10];
        }
    }

    public final void setElement(int i10, double d10) {
        this.values[i10] = d10;
    }

    public final void setSize(int i10) {
        double[] dArr = new double[i10];
        int i11 = this.length;
        if (i11 >= i10) {
            i11 = i10;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            dArr[i12] = this.values[i12];
        }
        this.length = i10;
        this.values = dArr;
    }

    public final void sub(GVector gVector) {
        if (this.length == gVector.length) {
            for (int i10 = 0; i10 < this.length; i10++) {
                double[] dArr = this.values;
                dArr[i10] = dArr[i10] - gVector.values[i10];
            }
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector7"));
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.length * 8);
        for (int i10 = 0; i10 < this.length; i10++) {
            stringBuffer.append(this.values[i10]);
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    public final void zero() {
        for (int i10 = 0; i10 < this.length; i10++) {
            this.values[i10] = 0.0d;
        }
    }

    public final void interpolate(GVector gVector, float f10) {
        interpolate(gVector, f10);
    }

    public final void interpolate(GVector gVector, GVector gVector2, double d10) {
        int i10 = gVector2.length;
        int i11 = gVector.length;
        if (i10 == i11) {
            if (this.length == i11) {
                for (int i12 = 0; i12 < this.length; i12++) {
                    this.values[i12] = ((1.0d - d10) * gVector.values[i12]) + (gVector2.values[i12] * d10);
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GVector21"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector20"));
    }

    public final void set(GVector gVector) {
        int i10;
        int i11 = this.length;
        int i12 = gVector.length;
        int i13 = 0;
        if (i11 < i12) {
            this.length = i12;
            this.values = new double[i12];
            while (i13 < this.length) {
                this.values[i13] = gVector.values[i13];
                i13++;
            }
            return;
        }
        while (true) {
            i10 = gVector.length;
            if (i13 >= i10) {
                break;
            }
            this.values[i13] = gVector.values[i13];
            i13++;
        }
        while (i10 < this.length) {
            this.values[i10] = 0.0d;
            i10++;
        }
    }

    public boolean equals(Object obj) {
        try {
            GVector gVector = (GVector) obj;
            if (this.length != gVector.length) {
                return false;
            }
            for (int i10 = 0; i10 < this.length; i10++) {
                if (this.values[i10] != gVector.values[i10]) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public GVector(double[] dArr) {
        this.length = dArr.length;
        this.values = new double[dArr.length];
        for (int i10 = 0; i10 < this.length; i10++) {
            this.values[i10] = dArr[i10];
        }
    }

    public final void add(GVector gVector, GVector gVector2) {
        int i10 = gVector.length;
        if (i10 == gVector2.length) {
            if (this.length == i10) {
                for (int i11 = 0; i11 < this.length; i11++) {
                    this.values[i11] = gVector.values[i11] + gVector2.values[i11];
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GVector6"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector5"));
    }

    public final void scale(double d10) {
        for (int i10 = 0; i10 < this.length; i10++) {
            double[] dArr = this.values;
            dArr[i10] = dArr[i10] * d10;
        }
    }

    public final void sub(GVector gVector, GVector gVector2) {
        int i10 = gVector.length;
        if (i10 == gVector2.length) {
            if (this.length == i10) {
                for (int i11 = 0; i11 < this.length; i11++) {
                    this.values[i11] = gVector.values[i11] - gVector2.values[i11];
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GVector9"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector8"));
    }

    public final void normalize() {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.length; i10++) {
            double d11 = this.values[i10];
            d10 += d11 * d11;
        }
        double sqrt = 1.0d / Math.sqrt(d10);
        for (int i11 = 0; i11 < this.length; i11++) {
            double[] dArr = this.values;
            dArr[i11] = dArr[i11] * sqrt;
        }
    }

    public GVector(GVector gVector) {
        int i10 = gVector.length;
        this.values = new double[i10];
        this.length = i10;
        for (int i11 = 0; i11 < this.length; i11++) {
            this.values[i11] = gVector.values[i11];
        }
    }

    public final void interpolate(GVector gVector, double d10) {
        if (gVector.length == this.length) {
            for (int i10 = 0; i10 < this.length; i10++) {
                double[] dArr = this.values;
                dArr[i10] = ((1.0d - d10) * dArr[i10]) + (gVector.values[i10] * d10);
            }
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector22"));
    }

    public final void mul(GVector gVector, GMatrix gMatrix) {
        double[] dArr;
        if (gMatrix.getNumRow() == gVector.length) {
            if (this.length == gMatrix.getNumCol()) {
                if (gVector != this) {
                    dArr = gVector.values;
                } else {
                    dArr = (double[]) this.values.clone();
                }
                for (int i10 = this.length - 1; i10 >= 0; i10--) {
                    this.values[i10] = 0.0d;
                    for (int i11 = gVector.length - 1; i11 >= 0; i11--) {
                        double[] dArr2 = this.values;
                        dArr2[i10] = dArr2[i10] + (gMatrix.values[i11][i10] * dArr[i11]);
                    }
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GVector13"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GVector12"));
    }

    public final void set(Tuple2f tuple2f) {
        if (this.length < 2) {
            this.length = 2;
            this.values = new double[2];
        }
        double[] dArr = this.values;
        dArr[0] = tuple2f.f92826x;
        dArr[1] = tuple2f.f92827y;
        for (int i10 = 2; i10 < this.length; i10++) {
            this.values[i10] = 0.0d;
        }
    }

    public GVector(Tuple2f tuple2f) {
        this.values = r1;
        double[] dArr = {tuple2f.f92826x, tuple2f.f92827y};
        this.length = 2;
    }

    public GVector(Tuple3f tuple3f) {
        this.values = r1;
        double[] dArr = {tuple3f.f92836x, tuple3f.f92837y, tuple3f.f92838z};
        this.length = 3;
    }

    public final void set(Tuple3f tuple3f) {
        if (this.length < 3) {
            this.length = 3;
            this.values = new double[3];
        }
        double[] dArr = this.values;
        dArr[0] = tuple3f.f92836x;
        dArr[1] = tuple3f.f92837y;
        dArr[2] = tuple3f.f92838z;
        for (int i10 = 3; i10 < this.length; i10++) {
            this.values[i10] = 0.0d;
        }
    }

    public GVector(Tuple3d tuple3d) {
        this.values = r1;
        double[] dArr = {tuple3d.f92833x, tuple3d.f92834y, tuple3d.f92835z};
        this.length = 3;
    }

    public final void set(Tuple3d tuple3d) {
        if (this.length < 3) {
            this.length = 3;
            this.values = new double[3];
        }
        double[] dArr = this.values;
        dArr[0] = tuple3d.f92833x;
        dArr[1] = tuple3d.f92834y;
        dArr[2] = tuple3d.f92835z;
        for (int i10 = 3; i10 < this.length; i10++) {
            this.values[i10] = 0.0d;
        }
    }

    public GVector(Tuple4f tuple4f) {
        this.values = r1;
        double[] dArr = {tuple4f.f92851x, tuple4f.f92852y, tuple4f.f92853z, tuple4f.f92850w};
        this.length = 4;
    }

    public final void set(Tuple4f tuple4f) {
        if (this.length < 4) {
            this.length = 4;
            this.values = new double[4];
        }
        double[] dArr = this.values;
        dArr[0] = tuple4f.f92851x;
        dArr[1] = tuple4f.f92852y;
        dArr[2] = tuple4f.f92853z;
        dArr[3] = tuple4f.f92850w;
        for (int i10 = 4; i10 < this.length; i10++) {
            this.values[i10] = 0.0d;
        }
    }

    public GVector(Tuple4d tuple4d) {
        this.values = r1;
        double[] dArr = {tuple4d.f92847x, tuple4d.f92848y, tuple4d.f92849z, tuple4d.f92846w};
        this.length = 4;
    }

    public final void set(Tuple4d tuple4d) {
        if (this.length < 4) {
            this.length = 4;
            this.values = new double[4];
        }
        double[] dArr = this.values;
        dArr[0] = tuple4d.f92847x;
        dArr[1] = tuple4d.f92848y;
        dArr[2] = tuple4d.f92849z;
        dArr[3] = tuple4d.f92846w;
        for (int i10 = 4; i10 < this.length; i10++) {
            this.values[i10] = 0.0d;
        }
    }

    public GVector(double[] dArr, int i10) {
        this.length = i10;
        this.values = new double[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.values[i11] = dArr[i11];
        }
    }
}
