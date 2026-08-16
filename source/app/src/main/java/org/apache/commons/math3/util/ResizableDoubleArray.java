package org.apache.commons.math3.util;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public class ResizableDoubleArray implements DoubleArray, Serializable {

    @Deprecated
    public static final int ADDITIVE_MODE = 1;
    private static final double DEFAULT_CONTRACTION_DELTA = 0.5d;
    private static final double DEFAULT_EXPANSION_FACTOR = 2.0d;
    private static final int DEFAULT_INITIAL_CAPACITY = 16;

    @Deprecated
    public static final int MULTIPLICATIVE_MODE = 0;
    private static final long serialVersionUID = -3485529955529426875L;
    private double contractionCriterion;
    private double expansionFactor;
    private ExpansionMode expansionMode;
    private double[] internalArray;
    private int numElements;
    private int startIndex;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$util$ResizableDoubleArray$ExpansionMode;

        static {
            int[] iArr = new int[ExpansionMode.values().length];
            $SwitchMap$org$apache$commons$math3$util$ResizableDoubleArray$ExpansionMode = iArr;
            try {
                iArr[ExpansionMode.MULTIPLICATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$util$ResizableDoubleArray$ExpansionMode[ExpansionMode.ADDITIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum ExpansionMode {
        MULTIPLICATIVE,
        ADDITIVE
    }

    public ResizableDoubleArray() {
        this(16);
    }

    public static void copy(ResizableDoubleArray resizableDoubleArray, ResizableDoubleArray resizableDoubleArray2) throws NullArgumentException {
        MathUtils.checkNotNull(resizableDoubleArray);
        MathUtils.checkNotNull(resizableDoubleArray2);
        synchronized (resizableDoubleArray) {
            synchronized (resizableDoubleArray2) {
                resizableDoubleArray2.contractionCriterion = resizableDoubleArray.contractionCriterion;
                resizableDoubleArray2.expansionFactor = resizableDoubleArray.expansionFactor;
                resizableDoubleArray2.expansionMode = resizableDoubleArray.expansionMode;
                double[] dArr = new double[resizableDoubleArray.internalArray.length];
                resizableDoubleArray2.internalArray = dArr;
                System.arraycopy(resizableDoubleArray.internalArray, 0, dArr, 0, dArr.length);
                resizableDoubleArray2.numElements = resizableDoubleArray.numElements;
                resizableDoubleArray2.startIndex = resizableDoubleArray.startIndex;
            }
        }
    }

    private synchronized void discardExtremeElements(int i10, boolean z10) throws MathIllegalArgumentException {
        try {
            int i11 = this.numElements;
            if (i10 > i11) {
                throw new MathIllegalArgumentException(LocalizedFormats.TOO_MANY_ELEMENTS_TO_DISCARD_FROM_ARRAY, Integer.valueOf(i10), Integer.valueOf(this.numElements));
            }
            if (i10 < 0) {
                throw new MathIllegalArgumentException(LocalizedFormats.CANNOT_DISCARD_NEGATIVE_NUMBER_OF_ELEMENTS, Integer.valueOf(i10));
            }
            this.numElements = i11 - i10;
            if (z10) {
                this.startIndex += i10;
            }
            if (shouldContract()) {
                contract();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void expandTo(int i10) {
        double[] dArr = new double[i10];
        double[] dArr2 = this.internalArray;
        System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        this.internalArray = dArr;
    }

    private synchronized boolean shouldContract() {
        if (this.expansionMode == ExpansionMode.MULTIPLICATIVE) {
            return ((double) (((float) this.internalArray.length) / ((float) this.numElements))) > this.contractionCriterion;
        }
        return ((double) (this.internalArray.length - this.numElements)) > this.contractionCriterion;
    }

    @Override
    public synchronized void addElement(double d10) {
        try {
            if (this.internalArray.length <= this.startIndex + this.numElements) {
                expand();
            }
            double[] dArr = this.internalArray;
            int i10 = this.startIndex;
            int i11 = this.numElements;
            this.numElements = i11 + 1;
            dArr[i10 + i11] = d10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized double addElementRolling(double d10) {
        double d11;
        try {
            double[] dArr = this.internalArray;
            int i10 = this.startIndex;
            d11 = dArr[i10];
            if (i10 + this.numElements + 1 > dArr.length) {
                expand();
            }
            int i11 = this.startIndex + 1;
            this.startIndex = i11;
            this.internalArray[i11 + (this.numElements - 1)] = d10;
            if (shouldContract()) {
                contract();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return d11;
    }

    @Override
    public synchronized void addElements(double[] dArr) {
        int i10 = this.numElements;
        double[] dArr2 = new double[dArr.length + i10 + 1];
        System.arraycopy(this.internalArray, this.startIndex, dArr2, 0, i10);
        System.arraycopy(dArr, 0, dArr2, this.numElements, dArr.length);
        this.internalArray = dArr2;
        this.startIndex = 0;
        this.numElements += dArr.length;
    }

    @Deprecated
    public void checkContractExpand(float f10, float f11) throws MathIllegalArgumentException {
        checkContractExpand(f10, f11);
    }

    @Override
    public synchronized void clear() {
        this.numElements = 0;
        this.startIndex = 0;
    }

    public double compute(MathArrays.Function function) {
        double[] dArr;
        int i10;
        int i11;
        synchronized (this) {
            dArr = this.internalArray;
            i10 = this.startIndex;
            i11 = this.numElements;
        }
        return function.evaluate(dArr, i10, i11);
    }

    public synchronized void contract() {
        int i10 = this.numElements;
        double[] dArr = new double[i10 + 1];
        System.arraycopy(this.internalArray, this.startIndex, dArr, 0, i10);
        this.internalArray = dArr;
        this.startIndex = 0;
    }

    public synchronized void discardFrontElements(int i10) throws MathIllegalArgumentException {
        discardExtremeElements(i10, true);
    }

    public synchronized void discardMostRecentElements(int i10) throws MathIllegalArgumentException {
        discardExtremeElements(i10, false);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResizableDoubleArray)) {
            return false;
        }
        synchronized (this) {
            synchronized (obj) {
                ResizableDoubleArray resizableDoubleArray = (ResizableDoubleArray) obj;
                if (resizableDoubleArray.contractionCriterion != this.contractionCriterion || resizableDoubleArray.expansionFactor != this.expansionFactor || resizableDoubleArray.expansionMode != this.expansionMode || resizableDoubleArray.numElements != this.numElements || resizableDoubleArray.startIndex != this.startIndex) {
                    return false;
                }
                return Arrays.equals(this.internalArray, resizableDoubleArray.internalArray);
            }
        }
    }

    public synchronized void expand() {
        try {
            double[] dArr = new double[this.expansionMode == ExpansionMode.MULTIPLICATIVE ? (int) FastMath.ceil(this.internalArray.length * this.expansionFactor) : (int) (this.internalArray.length + FastMath.round(this.expansionFactor))];
            double[] dArr2 = this.internalArray;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
            this.internalArray = dArr;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public double[] getArrayRef() {
        return this.internalArray;
    }

    public int getCapacity() {
        return this.internalArray.length;
    }

    @Deprecated
    public float getContractionCriteria() {
        return (float) getContractionCriterion();
    }

    public double getContractionCriterion() {
        return this.contractionCriterion;
    }

    @Override
    public synchronized double getElement(int i10) {
        if (i10 >= this.numElements) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        return this.internalArray[this.startIndex + i10];
    }

    @Override
    public synchronized double[] getElements() {
        double[] dArr;
        int i10 = this.numElements;
        dArr = new double[i10];
        System.arraycopy(this.internalArray, this.startIndex, dArr, 0, i10);
        return dArr;
    }

    @Deprecated
    public float getExpansionFactor() {
        return (float) this.expansionFactor;
    }

    @Deprecated
    public int getExpansionMode() {
        synchronized (this) {
            try {
                int i10 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$util$ResizableDoubleArray$ExpansionMode[this.expansionMode.ordinal()];
                if (i10 == 1) {
                    return 0;
                }
                if (i10 == 2) {
                    return 1;
                }
                throw new MathInternalError();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Deprecated
    public synchronized int getInternalLength() {
        return this.internalArray.length;
    }

    @Deprecated
    public synchronized double[] getInternalValues() {
        return this.internalArray;
    }

    @Override
    public synchronized int getNumElements() {
        return this.numElements;
    }

    public int getStartIndex() {
        return this.startIndex;
    }

    public synchronized int hashCode() {
        return Arrays.hashCode(new int[]{Double.valueOf(this.expansionFactor).hashCode(), Double.valueOf(this.contractionCriterion).hashCode(), this.expansionMode.hashCode(), Arrays.hashCode(this.internalArray), this.numElements, this.startIndex});
    }

    @Deprecated
    public void setContractionCriteria(float f10) throws MathIllegalArgumentException {
        checkContractExpand(f10, getExpansionFactor());
        synchronized (this) {
            this.contractionCriterion = f10;
        }
    }

    @Override
    public synchronized void setElement(int i10, double d10) {
        try {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException(i10);
            }
            int i11 = i10 + 1;
            if (i11 > this.numElements) {
                this.numElements = i11;
            }
            int i12 = this.startIndex;
            if (i12 + i10 >= this.internalArray.length) {
                expandTo(i12 + i11);
            }
            this.internalArray[this.startIndex + i10] = d10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Deprecated
    public void setExpansionFactor(float f10) throws MathIllegalArgumentException {
        double d10 = f10;
        checkContractExpand(getContractionCriterion(), d10);
        synchronized (this) {
            this.expansionFactor = d10;
        }
    }

    @Deprecated
    public void setExpansionMode(int i10) throws MathIllegalArgumentException {
        if (i10 != 0 && i10 != 1) {
            throw new MathIllegalArgumentException(LocalizedFormats.UNSUPPORTED_EXPANSION_MODE, Integer.valueOf(i10), 0, "MULTIPLICATIVE_MODE", 1, "ADDITIVE_MODE");
        }
        synchronized (this) {
            try {
                if (i10 == 0) {
                    setExpansionMode(ExpansionMode.MULTIPLICATIVE);
                } else if (i10 == 1) {
                    setExpansionMode(ExpansionMode.ADDITIVE);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Deprecated
    public void setInitialCapacity(int i10) throws MathIllegalArgumentException {
    }

    public synchronized void setNumElements(int i10) throws MathIllegalArgumentException {
        try {
            if (i10 < 0) {
                throw new MathIllegalArgumentException(LocalizedFormats.INDEX_NOT_POSITIVE, Integer.valueOf(i10));
            }
            int i11 = this.startIndex + i10;
            if (i11 > this.internalArray.length) {
                expandTo(i11);
            }
            this.numElements = i10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Deprecated
    public synchronized int start() {
        return this.startIndex;
    }

    public synchronized double substituteMostRecentElement(double d10) throws MathIllegalStateException {
        double d11;
        int i10 = this.numElements;
        if (i10 < 1) {
            throw new MathIllegalStateException(LocalizedFormats.CANNOT_SUBSTITUTE_ELEMENT_FROM_EMPTY_ARRAY, new Object[0]);
        }
        int i11 = this.startIndex + (i10 - 1);
        double[] dArr = this.internalArray;
        d11 = dArr[i11];
        dArr[i11] = d10;
        return d11;
    }

    public ResizableDoubleArray(int i10) throws MathIllegalArgumentException {
        this(i10, DEFAULT_EXPANSION_FACTOR);
    }

    public void checkContractExpand(double d10, double d11) throws NumberIsTooSmallException {
        if (d10 < d11) {
            NumberIsTooSmallException numberIsTooSmallException = new NumberIsTooSmallException(Double.valueOf(d10), 1, true);
            numberIsTooSmallException.getContext().addMessage(LocalizedFormats.CONTRACTION_CRITERIA_SMALLER_THAN_EXPANSION_FACTOR, Double.valueOf(d10), Double.valueOf(d11));
            throw numberIsTooSmallException;
        }
        if (d10 <= 1.0d) {
            NumberIsTooSmallException numberIsTooSmallException2 = new NumberIsTooSmallException(Double.valueOf(d10), 1, false);
            numberIsTooSmallException2.getContext().addMessage(LocalizedFormats.CONTRACTION_CRITERIA_SMALLER_THAN_ONE, Double.valueOf(d10));
            throw numberIsTooSmallException2;
        }
        if (d11 > 1.0d) {
            return;
        }
        NumberIsTooSmallException numberIsTooSmallException3 = new NumberIsTooSmallException(Double.valueOf(d10), 1, false);
        numberIsTooSmallException3.getContext().addMessage(LocalizedFormats.EXPANSION_FACTOR_SMALLER_THAN_ONE, Double.valueOf(d11));
        throw numberIsTooSmallException3;
    }

    public ResizableDoubleArray(double[] dArr) {
        this(16, DEFAULT_EXPANSION_FACTOR, 2.5d, ExpansionMode.MULTIPLICATIVE, dArr);
    }

    @Deprecated
    public ResizableDoubleArray(int i10, float f10) throws MathIllegalArgumentException {
        this(i10, f10);
    }

    public ResizableDoubleArray(int i10, double d10) throws MathIllegalArgumentException {
        this(i10, d10, d10 + 0.5d);
    }

    @Deprecated
    public ResizableDoubleArray(int i10, float f10, float f11) throws MathIllegalArgumentException {
        this(i10, f10, f11);
    }

    @Deprecated
    public void setExpansionMode(ExpansionMode expansionMode) {
        synchronized (this) {
            this.expansionMode = expansionMode;
        }
    }

    public ResizableDoubleArray(int i10, double d10, double d11) throws MathIllegalArgumentException {
        this(i10, d10, d11, ExpansionMode.MULTIPLICATIVE, null);
    }

    @Deprecated
    public ResizableDoubleArray(int i10, float f10, float f11, int i11) throws MathIllegalArgumentException {
        this(i10, f10, f11, i11 == 1 ? ExpansionMode.ADDITIVE : ExpansionMode.MULTIPLICATIVE, null);
        setExpansionMode(i11);
    }

    public ResizableDoubleArray(int i10, double d10, double d11, ExpansionMode expansionMode, double... dArr) throws MathIllegalArgumentException {
        this.contractionCriterion = 2.5d;
        this.expansionFactor = DEFAULT_EXPANSION_FACTOR;
        this.expansionMode = ExpansionMode.MULTIPLICATIVE;
        this.numElements = 0;
        this.startIndex = 0;
        if (i10 > 0) {
            checkContractExpand(d11, d10);
            this.expansionFactor = d10;
            this.contractionCriterion = d11;
            this.expansionMode = expansionMode;
            this.internalArray = new double[i10];
            this.numElements = 0;
            this.startIndex = 0;
            if (dArr == null || dArr.length <= 0) {
                return;
            }
            addElements(dArr);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.INITIAL_CAPACITY_NOT_POSITIVE, Integer.valueOf(i10));
    }

    public synchronized ResizableDoubleArray copy() {
        ResizableDoubleArray resizableDoubleArray;
        resizableDoubleArray = new ResizableDoubleArray();
        copy(this, resizableDoubleArray);
        return resizableDoubleArray;
    }

    public ResizableDoubleArray(ResizableDoubleArray resizableDoubleArray) throws NullArgumentException {
        this.contractionCriterion = 2.5d;
        this.expansionFactor = DEFAULT_EXPANSION_FACTOR;
        this.expansionMode = ExpansionMode.MULTIPLICATIVE;
        this.numElements = 0;
        this.startIndex = 0;
        MathUtils.checkNotNull(resizableDoubleArray);
        copy(resizableDoubleArray, this);
    }
}
