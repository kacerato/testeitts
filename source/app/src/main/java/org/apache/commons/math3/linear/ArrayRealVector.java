package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class ArrayRealVector extends RealVector implements Serializable {
    private static final RealVectorFormat DEFAULT_FORMAT = RealVectorFormat.getInstance();
    private static final long serialVersionUID = -1097961340710804027L;
    private double[] data;

    public ArrayRealVector() {
        this.data = new double[0];
    }

    @Override
    public void addToEntry(int i10, double d10) throws OutOfRangeException {
        try {
            double[] dArr = this.data;
            dArr[i10] = dArr[i10] + d10;
        } catch (IndexOutOfBoundsException unused) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i10), 0, Integer.valueOf(this.data.length - 1));
        }
    }

    @Override
    public RealVector append(RealVector realVector) {
        try {
            return new ArrayRealVector(this, (ArrayRealVector) realVector);
        } catch (ClassCastException unused) {
            return new ArrayRealVector(this, realVector);
        }
    }

    @Override
    public void checkVectorDimensions(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
    }

    @Override
    public double dotProduct(RealVector realVector) throws DimensionMismatchException {
        if (!(realVector instanceof ArrayRealVector)) {
            return super.dotProduct(realVector);
        }
        double[] dArr = ((ArrayRealVector) realVector).data;
        checkVectorDimensions(dArr.length);
        double d10 = 0.0d;
        int i10 = 0;
        while (true) {
            double[] dArr2 = this.data;
            if (i10 >= dArr2.length) {
                return d10;
            }
            d10 += dArr2[i10] * dArr[i10];
            i10++;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RealVector)) {
            return false;
        }
        RealVector realVector = (RealVector) obj;
        if (this.data.length != realVector.getDimension()) {
            return false;
        }
        if (realVector.isNaN()) {
            return isNaN();
        }
        int i10 = 0;
        while (true) {
            double[] dArr = this.data;
            if (i10 >= dArr.length) {
                return true;
            }
            if (dArr[i10] != realVector.getEntry(i10)) {
                return false;
            }
            i10++;
        }
    }

    public double[] getDataRef() {
        return this.data;
    }

    @Override
    public int getDimension() {
        return this.data.length;
    }

    @Override
    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        int i10 = 0;
        double d10 = 0.0d;
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            checkVectorDimensions(dArr.length);
            while (true) {
                double[] dArr2 = this.data;
                if (i10 >= dArr2.length) {
                    return FastMath.sqrt(d10);
                }
                double d11 = dArr2[i10] - dArr[i10];
                d10 += d11 * d11;
                i10++;
            }
        } else {
            checkVectorDimensions(realVector);
            while (true) {
                double[] dArr3 = this.data;
                if (i10 >= dArr3.length) {
                    return FastMath.sqrt(d10);
                }
                double entry = dArr3[i10] - realVector.getEntry(i10);
                d10 += entry * entry;
                i10++;
            }
        }
    }

    @Override
    public double getEntry(int i10) throws OutOfRangeException {
        try {
            return this.data[i10];
        } catch (IndexOutOfBoundsException unused) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i10), 0, Integer.valueOf(getDimension() - 1));
        }
    }

    @Override
    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        int i10 = 0;
        double d10 = 0.0d;
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            checkVectorDimensions(dArr.length);
            while (true) {
                double[] dArr2 = this.data;
                if (i10 >= dArr2.length) {
                    return d10;
                }
                d10 += FastMath.abs(dArr2[i10] - dArr[i10]);
                i10++;
            }
        } else {
            checkVectorDimensions(realVector);
            while (true) {
                double[] dArr3 = this.data;
                if (i10 >= dArr3.length) {
                    return d10;
                }
                d10 += FastMath.abs(dArr3[i10] - realVector.getEntry(i10));
                i10++;
            }
        }
    }

    @Override
    public double getL1Norm() {
        double d10 = 0.0d;
        for (double d11 : this.data) {
            d10 += FastMath.abs(d11);
        }
        return d10;
    }

    @Override
    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        int i10 = 0;
        double d10 = 0.0d;
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            checkVectorDimensions(dArr.length);
            while (true) {
                double[] dArr2 = this.data;
                if (i10 >= dArr2.length) {
                    return d10;
                }
                d10 = FastMath.max(d10, FastMath.abs(dArr2[i10] - dArr[i10]));
                i10++;
            }
        } else {
            checkVectorDimensions(realVector);
            while (true) {
                double[] dArr3 = this.data;
                if (i10 >= dArr3.length) {
                    return d10;
                }
                d10 = FastMath.max(d10, FastMath.abs(dArr3[i10] - realVector.getEntry(i10)));
                i10++;
            }
        }
    }

    @Override
    public double getLInfNorm() {
        double d10 = 0.0d;
        for (double d11 : this.data) {
            d10 = FastMath.max(d10, FastMath.abs(d11));
        }
        return d10;
    }

    @Override
    public double getNorm() {
        double d10 = 0.0d;
        for (double d11 : this.data) {
            d10 += d11 * d11;
        }
        return FastMath.sqrt(d10);
    }

    @Override
    public RealVector getSubVector(int i10, int i11) throws OutOfRangeException, NotPositiveException {
        if (i11 < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE, Integer.valueOf(i11));
        }
        ArrayRealVector arrayRealVector = new ArrayRealVector(i11);
        try {
            System.arraycopy(this.data, i10, arrayRealVector.data, 0, i11);
        } catch (IndexOutOfBoundsException unused) {
            checkIndex(i10);
            checkIndex((i10 + i11) - 1);
        }
        return arrayRealVector;
    }

    @Override
    public int hashCode() {
        if (isNaN()) {
            return 9;
        }
        return MathUtils.hash(this.data);
    }

    @Override
    public boolean isInfinite() {
        if (isNaN()) {
            return false;
        }
        for (double d10 : this.data) {
            if (Double.isInfinite(d10)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isNaN() {
        for (double d10 : this.data) {
            if (Double.isNaN(d10)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public RealVector mapAddToSelf(double d10) {
        int i10 = 0;
        while (true) {
            double[] dArr = this.data;
            if (i10 >= dArr.length) {
                return this;
            }
            dArr[i10] = dArr[i10] + d10;
            i10++;
        }
    }

    @Override
    public RealVector mapDivideToSelf(double d10) {
        int i10 = 0;
        while (true) {
            double[] dArr = this.data;
            if (i10 >= dArr.length) {
                return this;
            }
            dArr[i10] = dArr[i10] / d10;
            i10++;
        }
    }

    @Override
    public RealVector mapMultiplyToSelf(double d10) {
        int i10 = 0;
        while (true) {
            double[] dArr = this.data;
            if (i10 >= dArr.length) {
                return this;
            }
            dArr[i10] = dArr[i10] * d10;
            i10++;
        }
    }

    @Override
    public RealVector mapSubtractToSelf(double d10) {
        int i10 = 0;
        while (true) {
            double[] dArr = this.data;
            if (i10 >= dArr.length) {
                return this;
            }
            dArr[i10] = dArr[i10] - d10;
            i10++;
        }
    }

    @Override
    public RealMatrix outerProduct(RealVector realVector) {
        if (!(realVector instanceof ArrayRealVector)) {
            int length = this.data.length;
            int dimension = realVector.getDimension();
            RealMatrix createRealMatrix = MatrixUtils.createRealMatrix(length, dimension);
            for (int i10 = 0; i10 < length; i10++) {
                for (int i11 = 0; i11 < dimension; i11++) {
                    createRealMatrix.setEntry(i10, i11, this.data[i10] * realVector.getEntry(i11));
                }
            }
            return createRealMatrix;
        }
        double[] dArr = ((ArrayRealVector) realVector).data;
        int length2 = this.data.length;
        int length3 = dArr.length;
        RealMatrix createRealMatrix2 = MatrixUtils.createRealMatrix(length2, length3);
        for (int i12 = 0; i12 < length2; i12++) {
            for (int i13 = 0; i13 < length3; i13++) {
                createRealMatrix2.setEntry(i12, i13, this.data[i12] * dArr[i13]);
            }
        }
        return createRealMatrix2;
    }

    @Override
    public void set(double d10) {
        Arrays.fill(this.data, d10);
    }

    @Override
    public void setEntry(int i10, double d10) throws OutOfRangeException {
        try {
            this.data[i10] = d10;
        } catch (IndexOutOfBoundsException unused) {
            checkIndex(i10);
        }
    }

    @Override
    public void setSubVector(int i10, RealVector realVector) throws OutOfRangeException {
        if (realVector instanceof ArrayRealVector) {
            setSubVector(i10, ((ArrayRealVector) realVector).data);
            return;
        }
        for (int i11 = i10; i11 < realVector.getDimension() + i10; i11++) {
            try {
                this.data[i11] = realVector.getEntry(i11 - i10);
            } catch (IndexOutOfBoundsException unused) {
                checkIndex(i10);
                checkIndex((i10 + realVector.getDimension()) - 1);
                return;
            }
        }
    }

    @Override
    public double[] toArray() {
        return (double[]) this.data.clone();
    }

    public String toString() {
        return DEFAULT_FORMAT.format(this);
    }

    @Override
    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        int i10 = 0;
        realVectorPreservingVisitor.start(this.data.length, 0, r0.length - 1);
        while (true) {
            double[] dArr = this.data;
            if (i10 < dArr.length) {
                realVectorPreservingVisitor.visit(i10, dArr[i10]);
                i10++;
            } else {
                return realVectorPreservingVisitor.end();
            }
        }
    }

    @Override
    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        return walkInDefaultOrder(realVectorPreservingVisitor);
    }

    @Override
    public ArrayRealVector add(RealVector realVector) throws DimensionMismatchException {
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            int length = dArr.length;
            checkVectorDimensions(length);
            ArrayRealVector arrayRealVector = new ArrayRealVector(length);
            double[] dArr2 = arrayRealVector.data;
            for (int i10 = 0; i10 < length; i10++) {
                dArr2[i10] = this.data[i10] + dArr[i10];
            }
            return arrayRealVector;
        }
        checkVectorDimensions(realVector);
        double[] dArr3 = (double[]) this.data.clone();
        Iterator<RealVector.Entry> it = realVector.iterator();
        while (it.hasNext()) {
            RealVector.Entry next = it.next();
            int index = next.getIndex();
            dArr3[index] = dArr3[index] + next.getValue();
        }
        return new ArrayRealVector(dArr3, false);
    }

    @Override
    public void checkVectorDimensions(int i10) throws DimensionMismatchException {
        if (this.data.length != i10) {
            throw new DimensionMismatchException(this.data.length, i10);
        }
    }

    @Override
    public ArrayRealVector combine(double d10, double d11, RealVector realVector) throws DimensionMismatchException {
        return copy().combineToSelf(d10, d11, realVector);
    }

    @Override
    public ArrayRealVector combineToSelf(double d10, double d11, RealVector realVector) throws DimensionMismatchException {
        int i10 = 0;
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            checkVectorDimensions(dArr.length);
            while (true) {
                double[] dArr2 = this.data;
                if (i10 >= dArr2.length) {
                    break;
                }
                dArr2[i10] = (dArr2[i10] * d10) + (dArr[i10] * d11);
                i10++;
            }
        } else {
            checkVectorDimensions(realVector);
            while (true) {
                double[] dArr3 = this.data;
                if (i10 >= dArr3.length) {
                    break;
                }
                dArr3[i10] = (dArr3[i10] * d10) + (realVector.getEntry(i10) * d11);
                i10++;
            }
        }
        return this;
    }

    @Override
    public ArrayRealVector copy() {
        return new ArrayRealVector(this, true);
    }

    @Override
    public ArrayRealVector ebeDivide(RealVector realVector) throws DimensionMismatchException {
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            int length = dArr.length;
            checkVectorDimensions(length);
            ArrayRealVector arrayRealVector = new ArrayRealVector(length);
            double[] dArr2 = arrayRealVector.data;
            for (int i10 = 0; i10 < length; i10++) {
                dArr2[i10] = this.data[i10] / dArr[i10];
            }
            return arrayRealVector;
        }
        checkVectorDimensions(realVector);
        double[] dArr3 = (double[]) this.data.clone();
        for (int i11 = 0; i11 < this.data.length; i11++) {
            dArr3[i11] = dArr3[i11] / realVector.getEntry(i11);
        }
        return new ArrayRealVector(dArr3, false);
    }

    @Override
    public ArrayRealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException {
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            int length = dArr.length;
            checkVectorDimensions(length);
            ArrayRealVector arrayRealVector = new ArrayRealVector(length);
            double[] dArr2 = arrayRealVector.data;
            for (int i10 = 0; i10 < length; i10++) {
                dArr2[i10] = this.data[i10] * dArr[i10];
            }
            return arrayRealVector;
        }
        checkVectorDimensions(realVector);
        double[] dArr3 = (double[]) this.data.clone();
        for (int i11 = 0; i11 < this.data.length; i11++) {
            dArr3[i11] = dArr3[i11] * realVector.getEntry(i11);
        }
        return new ArrayRealVector(dArr3, false);
    }

    @Override
    public ArrayRealVector map(UnivariateFunction univariateFunction) {
        return copy().mapToSelf(univariateFunction);
    }

    @Override
    public ArrayRealVector mapToSelf(UnivariateFunction univariateFunction) {
        int i10 = 0;
        while (true) {
            double[] dArr = this.data;
            if (i10 >= dArr.length) {
                return this;
            }
            dArr[i10] = univariateFunction.value(dArr[i10]);
            i10++;
        }
    }

    @Override
    public ArrayRealVector subtract(RealVector realVector) throws DimensionMismatchException {
        if (realVector instanceof ArrayRealVector) {
            double[] dArr = ((ArrayRealVector) realVector).data;
            int length = dArr.length;
            checkVectorDimensions(length);
            ArrayRealVector arrayRealVector = new ArrayRealVector(length);
            double[] dArr2 = arrayRealVector.data;
            for (int i10 = 0; i10 < length; i10++) {
                dArr2[i10] = this.data[i10] - dArr[i10];
            }
            return arrayRealVector;
        }
        checkVectorDimensions(realVector);
        double[] dArr3 = (double[]) this.data.clone();
        Iterator<RealVector.Entry> it = realVector.iterator();
        while (it.hasNext()) {
            RealVector.Entry next = it.next();
            int index = next.getIndex();
            dArr3[index] = dArr3[index] - next.getValue();
        }
        return new ArrayRealVector(dArr3, false);
    }

    @Override
    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorPreservingVisitor, i10, i11);
    }

    public ArrayRealVector(int i10) {
        this.data = new double[i10];
    }

    public ArrayRealVector append(ArrayRealVector arrayRealVector) {
        return new ArrayRealVector(this, arrayRealVector);
    }

    @Override
    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        return walkInDefaultOrder(realVectorChangingVisitor);
    }

    @Override
    public RealVector append(double d10) {
        double[] dArr = this.data;
        double[] dArr2 = new double[dArr.length + 1];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        dArr2[this.data.length] = d10;
        return new ArrayRealVector(dArr2, false);
    }

    @Override
    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorChangingVisitor, i10, i11);
    }

    public ArrayRealVector(int i10, double d10) {
        double[] dArr = new double[i10];
        this.data = dArr;
        Arrays.fill(dArr, d10);
    }

    @Override
    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i10, i11);
        realVectorPreservingVisitor.start(this.data.length, i10, i11);
        while (i10 <= i11) {
            realVectorPreservingVisitor.visit(i10, this.data[i10]);
            i10++;
        }
        return realVectorPreservingVisitor.end();
    }

    public void setSubVector(int i10, double[] dArr) throws OutOfRangeException {
        try {
            System.arraycopy(dArr, 0, this.data, i10, dArr.length);
        } catch (IndexOutOfBoundsException unused) {
            checkIndex(i10);
            checkIndex((i10 + dArr.length) - 1);
        }
    }

    public ArrayRealVector(double[] dArr) {
        this.data = (double[]) dArr.clone();
    }

    @Override
    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        int i10 = 0;
        realVectorChangingVisitor.start(this.data.length, 0, r0.length - 1);
        while (true) {
            double[] dArr = this.data;
            if (i10 < dArr.length) {
                dArr[i10] = realVectorChangingVisitor.visit(i10, dArr[i10]);
                i10++;
            } else {
                return realVectorChangingVisitor.end();
            }
        }
    }

    public ArrayRealVector(double[] dArr, boolean z10) throws NullArgumentException {
        if (dArr != null) {
            this.data = z10 ? (double[]) dArr.clone() : dArr;
            return;
        }
        throw new NullArgumentException();
    }

    public ArrayRealVector(double[] dArr, int i10, int i11) throws NullArgumentException, NumberIsTooLargeException {
        if (dArr != null) {
            int i12 = i10 + i11;
            if (dArr.length >= i12) {
                double[] dArr2 = new double[i11];
                this.data = dArr2;
                System.arraycopy(dArr, i10, dArr2, 0, i11);
                return;
            }
            throw new NumberIsTooLargeException(Integer.valueOf(i12), Integer.valueOf(dArr.length), true);
        }
        throw new NullArgumentException();
    }

    @Override
    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i10, i11);
        realVectorChangingVisitor.start(this.data.length, i10, i11);
        while (i10 <= i11) {
            double[] dArr = this.data;
            dArr[i10] = realVectorChangingVisitor.visit(i10, dArr[i10]);
            i10++;
        }
        return realVectorChangingVisitor.end();
    }

    public ArrayRealVector(Double[] dArr) {
        this.data = new double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            this.data[i10] = dArr[i10].doubleValue();
        }
    }

    public ArrayRealVector(Double[] dArr, int i10, int i11) throws NullArgumentException, NumberIsTooLargeException {
        if (dArr != null) {
            int i12 = i10 + i11;
            if (dArr.length >= i12) {
                this.data = new double[i11];
                for (int i13 = i10; i13 < i12; i13++) {
                    this.data[i13 - i10] = dArr[i13].doubleValue();
                }
                return;
            }
            throw new NumberIsTooLargeException(Integer.valueOf(i12), Integer.valueOf(dArr.length), true);
        }
        throw new NullArgumentException();
    }

    public ArrayRealVector(RealVector realVector) throws NullArgumentException {
        if (realVector != null) {
            this.data = new double[realVector.getDimension()];
            int i10 = 0;
            while (true) {
                double[] dArr = this.data;
                if (i10 >= dArr.length) {
                    return;
                }
                dArr[i10] = realVector.getEntry(i10);
                i10++;
            }
        } else {
            throw new NullArgumentException();
        }
    }

    public ArrayRealVector(ArrayRealVector arrayRealVector) throws NullArgumentException {
        this(arrayRealVector, true);
    }

    public ArrayRealVector(ArrayRealVector arrayRealVector, boolean z10) {
        double[] dArr = arrayRealVector.data;
        this.data = z10 ? (double[]) dArr.clone() : dArr;
    }

    public ArrayRealVector(ArrayRealVector arrayRealVector, ArrayRealVector arrayRealVector2) {
        double[] dArr = new double[arrayRealVector.data.length + arrayRealVector2.data.length];
        this.data = dArr;
        double[] dArr2 = arrayRealVector.data;
        System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        double[] dArr3 = arrayRealVector2.data;
        System.arraycopy(dArr3, 0, this.data, arrayRealVector.data.length, dArr3.length);
    }

    public ArrayRealVector(ArrayRealVector arrayRealVector, RealVector realVector) {
        int length = arrayRealVector.data.length;
        int dimension = realVector.getDimension();
        double[] dArr = new double[length + dimension];
        this.data = dArr;
        System.arraycopy(arrayRealVector.data, 0, dArr, 0, length);
        for (int i10 = 0; i10 < dimension; i10++) {
            this.data[length + i10] = realVector.getEntry(i10);
        }
    }

    public ArrayRealVector(RealVector realVector, ArrayRealVector arrayRealVector) {
        int dimension = realVector.getDimension();
        int length = arrayRealVector.data.length;
        this.data = new double[dimension + length];
        for (int i10 = 0; i10 < dimension; i10++) {
            this.data[i10] = realVector.getEntry(i10);
        }
        System.arraycopy(arrayRealVector.data, 0, this.data, dimension, length);
    }

    public ArrayRealVector(ArrayRealVector arrayRealVector, double[] dArr) {
        int dimension = arrayRealVector.getDimension();
        int length = dArr.length;
        double[] dArr2 = new double[dimension + length];
        this.data = dArr2;
        System.arraycopy(arrayRealVector.data, 0, dArr2, 0, dimension);
        System.arraycopy(dArr, 0, this.data, dimension, length);
    }

    public ArrayRealVector(double[] dArr, ArrayRealVector arrayRealVector) {
        int length = dArr.length;
        int dimension = arrayRealVector.getDimension();
        double[] dArr2 = new double[length + dimension];
        this.data = dArr2;
        System.arraycopy(dArr, 0, dArr2, 0, length);
        System.arraycopy(arrayRealVector.data, 0, this.data, length, dimension);
    }

    public ArrayRealVector(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        int length2 = dArr2.length;
        double[] dArr3 = new double[length + length2];
        this.data = dArr3;
        System.arraycopy(dArr, 0, dArr3, 0, length);
        System.arraycopy(dArr2, 0, this.data, length, length2);
    }
}
