package org.apache.commons.math3.linear;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Add;
import org.apache.commons.math3.analysis.function.Divide;
import org.apache.commons.math3.analysis.function.Multiply;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public abstract class RealVector {

    public class Entry {
        private int index;

        public Entry() {
            setIndex(0);
        }

        public int getIndex() {
            return this.index;
        }

        public double getValue() {
            return RealVector.this.getEntry(getIndex());
        }

        public void setIndex(int i10) {
            this.index = i10;
        }

        public void setValue(double d10) {
            RealVector.this.setEntry(getIndex(), d10);
        }
    }

    public class SparseEntryIterator implements Iterator<Entry> {
        private Entry current;
        private final int dim;
        private Entry next;

        public SparseEntryIterator() {
            this.dim = RealVector.this.getDimension();
            this.current = new Entry();
            Entry entry = new Entry();
            this.next = entry;
            if (entry.getValue() == 0.0d) {
                advance(this.next);
            }
        }

        public void advance(Entry entry) {
            if (entry == null) {
                return;
            }
            do {
                entry.setIndex(entry.getIndex() + 1);
                if (entry.getIndex() >= this.dim) {
                    break;
                }
            } while (entry.getValue() == 0.0d);
            if (entry.getIndex() >= this.dim) {
                entry.setIndex(-1);
            }
        }

        @Override
        public boolean hasNext() {
            return this.next.getIndex() >= 0;
        }

        @Override
        public void remove() throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override
        public Entry next() {
            int index = this.next.getIndex();
            if (index >= 0) {
                this.current.setIndex(index);
                advance(this.next);
                return this.current;
            }
            throw new NoSuchElementException();
        }
    }

    public static RealVector unmodifiableRealVector(RealVector realVector) {
        return new RealVector() {

            public class UnmodifiableEntry extends Entry {
                public UnmodifiableEntry() {
                    super();
                }

                @Override
                public double getValue() {
                    return RealVector.this.getEntry(getIndex());
                }

                @Override
                public void setValue(double d10) throws MathUnsupportedOperationException {
                    throw new MathUnsupportedOperationException();
                }
            }

            @Override
            public RealVector add(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.add(realVector2);
            }

            @Override
            public void addToEntry(int i10, double d10) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealVector append(RealVector realVector2) {
                return RealVector.this.append(realVector2);
            }

            @Override
            public RealVector combine(double d10, double d11, RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.combine(d10, d11, realVector2);
            }

            @Override
            public RealVector combineToSelf(double d10, double d11, RealVector realVector2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealVector copy() {
                return RealVector.this.copy();
            }

            @Override
            public double cosine(RealVector realVector2) throws DimensionMismatchException, MathArithmeticException {
                return RealVector.this.cosine(realVector2);
            }

            @Override
            public double dotProduct(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.dotProduct(realVector2);
            }

            @Override
            public RealVector ebeDivide(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.ebeDivide(realVector2);
            }

            @Override
            public RealVector ebeMultiply(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.ebeMultiply(realVector2);
            }

            @Override
            public int getDimension() {
                return RealVector.this.getDimension();
            }

            @Override
            public double getDistance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getDistance(realVector2);
            }

            @Override
            public double getEntry(int i10) throws OutOfRangeException {
                return RealVector.this.getEntry(i10);
            }

            @Override
            public double getL1Distance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getL1Distance(realVector2);
            }

            @Override
            public double getL1Norm() {
                return RealVector.this.getL1Norm();
            }

            @Override
            public double getLInfDistance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getLInfDistance(realVector2);
            }

            @Override
            public double getLInfNorm() {
                return RealVector.this.getLInfNorm();
            }

            @Override
            public double getNorm() {
                return RealVector.this.getNorm();
            }

            @Override
            public RealVector getSubVector(int i10, int i11) throws OutOfRangeException, NotPositiveException {
                return RealVector.this.getSubVector(i10, i11);
            }

            @Override
            public boolean isInfinite() {
                return RealVector.this.isInfinite();
            }

            @Override
            public boolean isNaN() {
                return RealVector.this.isNaN();
            }

            @Override
            public Iterator<Entry> iterator() {
                final Iterator<Entry> it = RealVector.this.iterator();
                return new Iterator<Entry>() {

                    private final UnmodifiableEntry f100206e;

                    {
                        this.f100206e = new UnmodifiableEntry();
                    }

                    @Override
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override
                    public void remove() throws MathUnsupportedOperationException {
                        throw new MathUnsupportedOperationException();
                    }

                    @Override
                    public Entry next() {
                        this.f100206e.setIndex(((Entry) it.next()).getIndex());
                        return this.f100206e;
                    }
                };
            }

            @Override
            public RealVector map(UnivariateFunction univariateFunction) {
                return RealVector.this.map(univariateFunction);
            }

            @Override
            public RealVector mapAdd(double d10) {
                return RealVector.this.mapAdd(d10);
            }

            @Override
            public RealVector mapAddToSelf(double d10) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealVector mapDivide(double d10) {
                return RealVector.this.mapDivide(d10);
            }

            @Override
            public RealVector mapDivideToSelf(double d10) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealVector mapMultiply(double d10) {
                return RealVector.this.mapMultiply(d10);
            }

            @Override
            public RealVector mapMultiplyToSelf(double d10) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealVector mapSubtract(double d10) {
                return RealVector.this.mapSubtract(d10);
            }

            @Override
            public RealVector mapSubtractToSelf(double d10) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealVector mapToSelf(UnivariateFunction univariateFunction) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealMatrix outerProduct(RealVector realVector2) {
                return RealVector.this.outerProduct(realVector2);
            }

            @Override
            public void set(double d10) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public void setEntry(int i10, double d10) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public void setSubVector(int i10, RealVector realVector2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public Iterator<Entry> sparseIterator() {
                final Iterator<Entry> sparseIterator = RealVector.this.sparseIterator();
                return new Iterator<Entry>() {

                    private final UnmodifiableEntry f100207e;

                    {
                        this.f100207e = new UnmodifiableEntry();
                    }

                    @Override
                    public boolean hasNext() {
                        return sparseIterator.hasNext();
                    }

                    @Override
                    public void remove() throws MathUnsupportedOperationException {
                        throw new MathUnsupportedOperationException();
                    }

                    @Override
                    public Entry next() {
                        this.f100207e.setIndex(((Entry) sparseIterator.next()).getIndex());
                        return this.f100207e;
                    }
                };
            }

            @Override
            public RealVector subtract(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.subtract(realVector2);
            }

            @Override
            public double[] toArray() {
                return RealVector.this.toArray();
            }

            @Override
            public RealVector unitVector() throws MathArithmeticException {
                return RealVector.this.unitVector();
            }

            @Override
            public void unitize() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public RealVector append(double d10) {
                return RealVector.this.append(d10);
            }
        };
    }

    public RealVector add(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector copy = realVector.copy();
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int index = next.getIndex();
            copy.setEntry(index, next.getValue() + copy.getEntry(index));
        }
        return copy;
    }

    public void addToEntry(int i10, double d10) throws OutOfRangeException {
        setEntry(i10, getEntry(i10) + d10);
    }

    public abstract RealVector append(double d10);

    public abstract RealVector append(RealVector realVector);

    public void checkIndex(int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= getDimension()) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i10), 0, Integer.valueOf(getDimension() - 1));
        }
    }

    public void checkIndices(int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        int dimension = getDimension();
        if (i10 < 0 || i10 >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i10), 0, Integer.valueOf(dimension - 1));
        }
        if (i11 < 0 || i11 >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i11), 0, Integer.valueOf(dimension - 1));
        }
        if (i11 < i10) {
            throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i11), Integer.valueOf(i10), false);
        }
    }

    public void checkVectorDimensions(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
    }

    public RealVector combine(double d10, double d11, RealVector realVector) throws DimensionMismatchException {
        return copy().combineToSelf(d10, d11, realVector);
    }

    public RealVector combineToSelf(double d10, double d11, RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        for (int i10 = 0; i10 < getDimension(); i10++) {
            setEntry(i10, (getEntry(i10) * d10) + (realVector.getEntry(i10) * d11));
        }
        return this;
    }

    public abstract RealVector copy();

    public double cosine(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        double norm = getNorm();
        double norm2 = realVector.getNorm();
        if (norm == 0.0d || norm2 == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        return dotProduct(realVector) / (norm * norm2);
    }

    public double dotProduct(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        int dimension = getDimension();
        double d10 = 0.0d;
        for (int i10 = 0; i10 < dimension; i10++) {
            d10 += getEntry(i10) * realVector.getEntry(i10);
        }
        return d10;
    }

    public abstract RealVector ebeDivide(RealVector realVector) throws DimensionMismatchException;

    public abstract RealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException;

    public boolean equals(Object obj) throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public abstract int getDimension();

    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it = iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            Entry next = it.next();
            double value = next.getValue() - realVector.getEntry(next.getIndex());
            d10 += value * value;
        }
        return FastMath.sqrt(d10);
    }

    public abstract double getEntry(int i10) throws OutOfRangeException;

    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it = iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            Entry next = it.next();
            d10 += FastMath.abs(next.getValue() - realVector.getEntry(next.getIndex()));
        }
        return d10;
    }

    public double getL1Norm() {
        Iterator<Entry> it = iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += FastMath.abs(it.next().getValue());
        }
        return d10;
    }

    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it = iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            Entry next = it.next();
            d10 = FastMath.max(FastMath.abs(next.getValue() - realVector.getEntry(next.getIndex())), d10);
        }
        return d10;
    }

    public double getLInfNorm() {
        Iterator<Entry> it = iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 = FastMath.max(d10, FastMath.abs(it.next().getValue()));
        }
        return d10;
    }

    public int getMaxIndex() {
        Iterator<Entry> it = iterator();
        int i10 = -1;
        double d10 = Double.NEGATIVE_INFINITY;
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.getValue() >= d10) {
                i10 = next.getIndex();
                d10 = next.getValue();
            }
        }
        return i10;
    }

    public double getMaxValue() {
        int maxIndex = getMaxIndex();
        if (maxIndex < 0) {
            return Double.NaN;
        }
        return getEntry(maxIndex);
    }

    public int getMinIndex() {
        Iterator<Entry> it = iterator();
        int i10 = -1;
        double d10 = Double.POSITIVE_INFINITY;
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.getValue() <= d10) {
                i10 = next.getIndex();
                d10 = next.getValue();
            }
        }
        return i10;
    }

    public double getMinValue() {
        int minIndex = getMinIndex();
        if (minIndex < 0) {
            return Double.NaN;
        }
        return getEntry(minIndex);
    }

    public double getNorm() {
        Iterator<Entry> it = iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            double value = it.next().getValue();
            d10 += value * value;
        }
        return FastMath.sqrt(d10);
    }

    public abstract RealVector getSubVector(int i10, int i11) throws NotPositiveException, OutOfRangeException;

    public int hashCode() throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public abstract boolean isInfinite();

    public abstract boolean isNaN();

    public Iterator<Entry> iterator() {
        final int dimension = getDimension();
        return new Iterator<Entry>() {

            private Entry f100204e;

            private int f100205i = 0;

            {
                this.f100204e = new Entry();
            }

            @Override
            public boolean hasNext() {
                return this.f100205i < dimension;
            }

            @Override
            public void remove() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override
            public Entry next() {
                int i10 = this.f100205i;
                if (i10 < dimension) {
                    Entry entry = this.f100204e;
                    this.f100205i = i10 + 1;
                    entry.setIndex(i10);
                    return this.f100204e;
                }
                throw new NoSuchElementException();
            }
        };
    }

    public RealVector map(UnivariateFunction univariateFunction) {
        return copy().mapToSelf(univariateFunction);
    }

    public RealVector mapAdd(double d10) {
        return copy().mapAddToSelf(d10);
    }

    public RealVector mapAddToSelf(double d10) {
        return d10 != 0.0d ? mapToSelf(FunctionUtils.fix2ndArgument(new Add(), d10)) : this;
    }

    public RealVector mapDivide(double d10) {
        return copy().mapDivideToSelf(d10);
    }

    public RealVector mapDivideToSelf(double d10) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Divide(), d10));
    }

    public RealVector mapMultiply(double d10) {
        return copy().mapMultiplyToSelf(d10);
    }

    public RealVector mapMultiplyToSelf(double d10) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Multiply(), d10));
    }

    public RealVector mapSubtract(double d10) {
        return copy().mapSubtractToSelf(d10);
    }

    public RealVector mapSubtractToSelf(double d10) {
        return mapAddToSelf(-d10);
    }

    public RealVector mapToSelf(UnivariateFunction univariateFunction) {
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            next.setValue(univariateFunction.value(next.getValue()));
        }
        return this;
    }

    public RealMatrix outerProduct(RealVector realVector) {
        int dimension = getDimension();
        int dimension2 = realVector.getDimension();
        RealMatrix openMapRealMatrix = ((realVector instanceof SparseRealVector) || (this instanceof SparseRealVector)) ? new OpenMapRealMatrix(dimension, dimension2) : new Array2DRowRealMatrix(dimension, dimension2);
        for (int i10 = 0; i10 < dimension; i10++) {
            for (int i11 = 0; i11 < dimension2; i11++) {
                openMapRealMatrix.setEntry(i10, i11, getEntry(i10) * realVector.getEntry(i11));
            }
        }
        return openMapRealMatrix;
    }

    public RealVector projection(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        if (realVector.dotProduct(realVector) != 0.0d) {
            return realVector.mapMultiply(dotProduct(realVector) / realVector.dotProduct(realVector));
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public void set(double d10) {
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            it.next().setValue(d10);
        }
    }

    public abstract void setEntry(int i10, double d10) throws OutOfRangeException;

    public abstract void setSubVector(int i10, RealVector realVector) throws OutOfRangeException;

    public Iterator<Entry> sparseIterator() {
        return new SparseEntryIterator();
    }

    public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector mapMultiply = realVector.mapMultiply(-1.0d);
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int index = next.getIndex();
            mapMultiply.setEntry(index, next.getValue() + mapMultiply.getEntry(index));
        }
        return mapMultiply;
    }

    public double[] toArray() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        for (int i10 = 0; i10 < dimension; i10++) {
            dArr[i10] = getEntry(i10);
        }
        return dArr;
    }

    public RealVector unitVector() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return mapDivide(norm);
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public void unitize() throws MathArithmeticException {
        if (getNorm() == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        mapDivideToSelf(getNorm());
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        int dimension = getDimension();
        realVectorPreservingVisitor.start(dimension, 0, dimension - 1);
        for (int i10 = 0; i10 < dimension; i10++) {
            realVectorPreservingVisitor.visit(i10, getEntry(i10));
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        return walkInDefaultOrder(realVectorPreservingVisitor);
    }

    public void checkVectorDimensions(int i10) throws DimensionMismatchException {
        int dimension = getDimension();
        if (dimension != i10) {
            throw new DimensionMismatchException(dimension, i10);
        }
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorPreservingVisitor, i10, i11);
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        return walkInDefaultOrder(realVectorChangingVisitor);
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorChangingVisitor, i10, i11);
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i10, i11);
        realVectorPreservingVisitor.start(getDimension(), i10, i11);
        while (i10 <= i11) {
            realVectorPreservingVisitor.visit(i10, getEntry(i10));
            i10++;
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        int dimension = getDimension();
        realVectorChangingVisitor.start(dimension, 0, dimension - 1);
        for (int i10 = 0; i10 < dimension; i10++) {
            setEntry(i10, realVectorChangingVisitor.visit(i10, getEntry(i10)));
        }
        return realVectorChangingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i10, i11);
        realVectorChangingVisitor.start(getDimension(), i10, i11);
        while (i10 <= i11) {
            setEntry(i10, realVectorChangingVisitor.visit(i10, getEntry(i10)));
            i10++;
        }
        return realVectorChangingVisitor.end();
    }
}
