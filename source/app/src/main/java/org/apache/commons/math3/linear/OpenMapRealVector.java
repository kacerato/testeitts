package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.util.Iterator;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.OpenIntToDoubleHashMap;

public class OpenMapRealVector extends SparseRealVector implements Serializable {
    public static final double DEFAULT_ZERO_TOLERANCE = 1.0E-12d;
    private static final long serialVersionUID = 8772222695580707260L;
    private final OpenIntToDoubleHashMap entries;
    private final double epsilon;
    private final int virtualSize;

    public class OpenMapEntry extends RealVector.Entry {
        private final OpenIntToDoubleHashMap.Iterator iter;

        public OpenMapEntry(OpenIntToDoubleHashMap.Iterator iterator) {
            super();
            this.iter = iterator;
        }

        @Override
        public int getIndex() {
            return this.iter.key();
        }

        @Override
        public double getValue() {
            return this.iter.value();
        }

        @Override
        public void setValue(double d10) {
            OpenMapRealVector.this.entries.put(this.iter.key(), d10);
        }
    }

    public class OpenMapSparseIterator implements Iterator<RealVector.Entry> {
        private final RealVector.Entry current;
        private final OpenIntToDoubleHashMap.Iterator iter;

        public OpenMapSparseIterator() {
            OpenIntToDoubleHashMap.Iterator it = OpenMapRealVector.this.entries.iterator();
            this.iter = it;
            this.current = new OpenMapEntry(it);
        }

        @Override
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Not supported");
        }

        @Override
        public RealVector.Entry next() {
            this.iter.advance();
            return this.current;
        }
    }

    public OpenMapRealVector() {
        this(0, 1.0E-12d);
    }

    private OpenIntToDoubleHashMap getEntries() {
        return this.entries;
    }

    private double getLInfDistance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            it.advance();
            double abs = FastMath.abs(it.value() - openMapRealVector.getEntry(it.key()));
            if (abs > d10) {
                d10 = abs;
            }
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (!this.entries.containsKey(it2.key()) && it2.value() > d10) {
                d10 = it2.value();
            }
        }
        return d10;
    }

    @Override
    public RealVector add(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return add((OpenMapRealVector) realVector);
        }
        return super.add(realVector);
    }

    @Deprecated
    public double dotProduct(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        return dotProduct((RealVector) openMapRealVector);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OpenMapRealVector)) {
            return false;
        }
        OpenMapRealVector openMapRealVector = (OpenMapRealVector) obj;
        if (this.virtualSize != openMapRealVector.virtualSize || Double.doubleToLongBits(this.epsilon) != Double.doubleToLongBits(openMapRealVector.epsilon)) {
            return false;
        }
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            if (Double.doubleToLongBits(openMapRealVector.getEntry(it.key())) != Double.doubleToLongBits(it.value())) {
                return false;
            }
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (Double.doubleToLongBits(it2.value()) != Double.doubleToLongBits(getEntry(it2.key()))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int getDimension() {
        return this.virtualSize;
    }

    public double getDistance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            it.advance();
            double value = it.value() - openMapRealVector.getEntry(it.key());
            d10 += value * value;
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (!this.entries.containsKey(it2.key())) {
                double value2 = it2.value();
                d10 += value2 * value2;
            }
        }
        return FastMath.sqrt(d10);
    }

    @Override
    public double getEntry(int i10) throws OutOfRangeException {
        checkIndex(i10);
        return this.entries.get(i10);
    }

    public double getL1Distance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            it.advance();
            d10 += FastMath.abs(it.value() - openMapRealVector.getEntry(it.key()));
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (!this.entries.containsKey(it2.key())) {
                d10 += FastMath.abs(FastMath.abs(it2.value()));
            }
        }
        return d10;
    }

    public double getSparsity() {
        return this.entries.size() / getDimension();
    }

    @Override
    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.epsilon);
        int i10 = ((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31) * 31) + this.virtualSize;
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            long doubleToLongBits2 = Double.doubleToLongBits(it.value());
            i10 = (i10 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >> 32)));
        }
        return i10;
    }

    public boolean isDefaultValue(double d10) {
        return FastMath.abs(d10) < this.epsilon;
    }

    @Override
    public boolean isInfinite() {
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            it.advance();
            double value = it.value();
            if (Double.isNaN(value)) {
                return false;
            }
            if (Double.isInfinite(value)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean isNaN() {
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            if (Double.isNaN(it.value())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void set(double d10) {
        for (int i10 = 0; i10 < this.virtualSize; i10++) {
            setEntry(i10, d10);
        }
    }

    @Override
    public void setEntry(int i10, double d10) throws OutOfRangeException {
        checkIndex(i10);
        if (!isDefaultValue(d10)) {
            this.entries.put(i10, d10);
        } else if (this.entries.containsKey(i10)) {
            this.entries.remove(i10);
        }
    }

    @Override
    public void setSubVector(int i10, RealVector realVector) throws OutOfRangeException {
        checkIndex(i10);
        checkIndex((realVector.getDimension() + i10) - 1);
        for (int i11 = 0; i11 < realVector.getDimension(); i11++) {
            setEntry(i11 + i10, realVector.getEntry(i11));
        }
    }

    @Override
    public Iterator<RealVector.Entry> sparseIterator() {
        return new OpenMapSparseIterator();
    }

    public OpenMapRealVector subtract(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenMapRealVector copy = copy();
        OpenIntToDoubleHashMap.Iterator it = openMapRealVector.getEntries().iterator();
        while (it.hasNext()) {
            it.advance();
            int key = it.key();
            if (this.entries.containsKey(key)) {
                copy.setEntry(key, this.entries.get(key) - it.value());
            } else {
                copy.setEntry(key, -it.value());
            }
        }
        return copy;
    }

    @Override
    public double[] toArray() {
        double[] dArr = new double[this.virtualSize];
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            dArr[it.key()] = it.value();
        }
        return dArr;
    }

    @Override
    public void unitize() throws MathArithmeticException {
        double norm = getNorm();
        if (isDefaultValue(norm)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            this.entries.put(it.key(), it.value() / norm);
        }
    }

    public OpenMapRealVector(int i10) {
        this(i10, 1.0E-12d);
    }

    @Override
    public OpenMapRealVector copy() {
        return new OpenMapRealVector(this);
    }

    @Override
    public OpenMapRealVector ebeDivide(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this);
        int dimension = getDimension();
        for (int i10 = 0; i10 < dimension; i10++) {
            openMapRealVector.setEntry(i10, getEntry(i10) / realVector.getEntry(i10));
        }
        return openMapRealVector;
    }

    @Override
    public OpenMapRealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this);
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            openMapRealVector.setEntry(it.key(), it.value() * realVector.getEntry(it.key()));
        }
        return openMapRealVector;
    }

    @Override
    public OpenMapRealVector getSubVector(int i10, int i11) throws NotPositiveException, OutOfRangeException {
        checkIndex(i10);
        if (i11 >= 0) {
            int i12 = i10 + i11;
            checkIndex(i12 - 1);
            OpenMapRealVector openMapRealVector = new OpenMapRealVector(i11);
            OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
            while (it.hasNext()) {
                it.advance();
                int key = it.key();
                if (key >= i10 && key < i12) {
                    openMapRealVector.setEntry(key - i10, it.value());
                }
            }
            return openMapRealVector;
        }
        throw new NotPositiveException(LocalizedFormats.NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE, Integer.valueOf(i11));
    }

    @Override
    public OpenMapRealVector mapAdd(double d10) {
        return copy().mapAddToSelf(d10);
    }

    @Override
    public OpenMapRealVector mapAddToSelf(double d10) {
        for (int i10 = 0; i10 < this.virtualSize; i10++) {
            setEntry(i10, getEntry(i10) + d10);
        }
        return this;
    }

    @Override
    public OpenMapRealVector unitVector() throws MathArithmeticException {
        OpenMapRealVector copy = copy();
        copy.unitize();
        return copy;
    }

    public OpenMapRealVector(int i10, double d10) {
        this.virtualSize = i10;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d10;
    }

    public OpenMapRealVector append(OpenMapRealVector openMapRealVector) {
        OpenMapRealVector openMapRealVector2 = new OpenMapRealVector(this, openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = openMapRealVector.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            openMapRealVector2.setEntry(it.key() + this.virtualSize, it.value());
        }
        return openMapRealVector2;
    }

    public OpenMapRealVector add(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        boolean z10 = this.entries.size() > openMapRealVector.entries.size();
        OpenMapRealVector copy = z10 ? copy() : openMapRealVector.copy();
        OpenIntToDoubleHashMap.Iterator it = (z10 ? openMapRealVector.entries : this.entries).iterator();
        OpenIntToDoubleHashMap openIntToDoubleHashMap = z10 ? this.entries : openMapRealVector.entries;
        while (it.hasNext()) {
            it.advance();
            int key = it.key();
            if (openIntToDoubleHashMap.containsKey(key)) {
                copy.setEntry(key, openIntToDoubleHashMap.get(key) + it.value());
            } else {
                copy.setEntry(key, it.value());
            }
        }
        return copy;
    }

    public OpenMapRealVector(OpenMapRealVector openMapRealVector, int i10) {
        this.virtualSize = openMapRealVector.getDimension() + i10;
        this.entries = new OpenIntToDoubleHashMap(openMapRealVector.entries);
        this.epsilon = openMapRealVector.epsilon;
    }

    @Override
    public OpenMapRealVector append(RealVector realVector) {
        if (realVector instanceof OpenMapRealVector) {
            return append((OpenMapRealVector) realVector);
        }
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this, realVector.getDimension());
        for (int i10 = 0; i10 < realVector.getDimension(); i10++) {
            openMapRealVector.setEntry(this.virtualSize + i10, realVector.getEntry(i10));
        }
        return openMapRealVector;
    }

    @Override
    public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return subtract((OpenMapRealVector) realVector);
        }
        return super.subtract(realVector);
    }

    public OpenMapRealVector(int i10, int i11) {
        this(i10, i11, 1.0E-12d);
    }

    public OpenMapRealVector(int i10, int i11, double d10) {
        this.virtualSize = i10;
        this.entries = new OpenIntToDoubleHashMap(i11, 0.0d);
        this.epsilon = d10;
    }

    @Override
    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getLInfDistance((OpenMapRealVector) realVector);
        }
        return super.getLInfDistance(realVector);
    }

    @Override
    public OpenMapRealVector append(double d10) {
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this, 1);
        openMapRealVector.setEntry(this.virtualSize, d10);
        return openMapRealVector;
    }

    @Override
    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getL1Distance((OpenMapRealVector) realVector);
        }
        return super.getL1Distance(realVector);
    }

    @Override
    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getDistance((OpenMapRealVector) realVector);
        }
        return super.getDistance(realVector);
    }

    public OpenMapRealVector(double[] dArr) {
        this(dArr, 1.0E-12d);
    }

    public OpenMapRealVector(double[] dArr, double d10) {
        this.virtualSize = dArr.length;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d10;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d11 = dArr[i10];
            if (!isDefaultValue(d11)) {
                this.entries.put(i10, d11);
            }
        }
    }

    public OpenMapRealVector(Double[] dArr) {
        this(dArr, 1.0E-12d);
    }

    public OpenMapRealVector(Double[] dArr, double d10) {
        this.virtualSize = dArr.length;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d10;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double doubleValue = dArr[i10].doubleValue();
            if (!isDefaultValue(doubleValue)) {
                this.entries.put(i10, doubleValue);
            }
        }
    }

    public OpenMapRealVector(OpenMapRealVector openMapRealVector) {
        this.virtualSize = openMapRealVector.getDimension();
        this.entries = new OpenIntToDoubleHashMap(openMapRealVector.getEntries());
        this.epsilon = openMapRealVector.epsilon;
    }

    public OpenMapRealVector(RealVector realVector) {
        this.virtualSize = realVector.getDimension();
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = 1.0E-12d;
        for (int i10 = 0; i10 < this.virtualSize; i10++) {
            double entry = realVector.getEntry(i10);
            if (!isDefaultValue(entry)) {
                this.entries.put(i10, entry);
            }
        }
    }
}
