package org.apache.commons.math3.util;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.math.RoundingMode;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class BigReal implements FieldElement<BigReal>, Comparable<BigReal>, Serializable {
    private static final long serialVersionUID = 4984534880991310382L;

    private final BigDecimal f100358d;
    private RoundingMode roundingMode = RoundingMode.HALF_UP;
    private int scale = 64;
    public static final BigReal ZERO = new BigReal(BigDecimal.ZERO);
    public static final BigReal ONE = new BigReal(BigDecimal.ONE);

    public BigReal(BigDecimal bigDecimal) {
        this.f100358d = bigDecimal;
    }

    public BigDecimal bigDecimalValue() {
        return this.f100358d;
    }

    public double doubleValue() {
        return this.f100358d.doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BigReal) {
            return this.f100358d.equals(((BigReal) obj).f100358d);
        }
        return false;
    }

    @Override
    public Field<BigReal> getField() {
        return BigRealField.getInstance();
    }

    public RoundingMode getRoundingMode() {
        return this.roundingMode;
    }

    public int getScale() {
        return this.scale;
    }

    public int hashCode() {
        return this.f100358d.hashCode();
    }

    public void setRoundingMode(RoundingMode roundingMode) {
        this.roundingMode = roundingMode;
    }

    public void setScale(int i10) {
        this.scale = i10;
    }

    @Override
    public BigReal add(BigReal bigReal) {
        return new BigReal(this.f100358d.add(bigReal.f100358d));
    }

    @Override
    public int compareTo(BigReal bigReal) {
        return this.f100358d.compareTo(bigReal.f100358d);
    }

    @Override
    public BigReal divide(BigReal bigReal) throws MathArithmeticException {
        try {
            return new BigReal(this.f100358d.divide(bigReal.f100358d, this.scale, this.roundingMode));
        } catch (ArithmeticException unused) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NOT_ALLOWED, new Object[0]);
        }
    }

    @Override
    public BigReal negate() {
        return new BigReal(this.f100358d.negate());
    }

    @Override
    public BigReal reciprocal() throws MathArithmeticException {
        try {
            return new BigReal(BigDecimal.ONE.divide(this.f100358d, this.scale, this.roundingMode));
        } catch (ArithmeticException unused) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NOT_ALLOWED, new Object[0]);
        }
    }

    @Override
    public BigReal subtract(BigReal bigReal) {
        return new BigReal(this.f100358d.subtract(bigReal.f100358d));
    }

    @Override
    public BigReal multiply(BigReal bigReal) {
        return new BigReal(this.f100358d.multiply(bigReal.f100358d));
    }

    @Override
    public BigReal multiply(int i10) {
        return new BigReal(this.f100358d.multiply(new BigDecimal(i10)));
    }

    public BigReal(BigInteger bigInteger) {
        this.f100358d = new BigDecimal(bigInteger);
    }

    public BigReal(BigInteger bigInteger, int i10) {
        this.f100358d = new BigDecimal(bigInteger, i10);
    }

    public BigReal(BigInteger bigInteger, int i10, MathContext mathContext) {
        this.f100358d = new BigDecimal(bigInteger, i10, mathContext);
    }

    public BigReal(BigInteger bigInteger, MathContext mathContext) {
        this.f100358d = new BigDecimal(bigInteger, mathContext);
    }

    public BigReal(char[] cArr) {
        this.f100358d = new BigDecimal(cArr);
    }

    public BigReal(char[] cArr, int i10, int i11) {
        this.f100358d = new BigDecimal(cArr, i10, i11);
    }

    public BigReal(char[] cArr, int i10, int i11, MathContext mathContext) {
        this.f100358d = new BigDecimal(cArr, i10, i11, mathContext);
    }

    public BigReal(char[] cArr, MathContext mathContext) {
        this.f100358d = new BigDecimal(cArr, mathContext);
    }

    public BigReal(double d10) {
        this.f100358d = new BigDecimal(d10);
    }

    public BigReal(double d10, MathContext mathContext) {
        this.f100358d = new BigDecimal(d10, mathContext);
    }

    public BigReal(int i10) {
        this.f100358d = new BigDecimal(i10);
    }

    public BigReal(int i10, MathContext mathContext) {
        this.f100358d = new BigDecimal(i10, mathContext);
    }

    public BigReal(long j10) {
        this.f100358d = new BigDecimal(j10);
    }

    public BigReal(long j10, MathContext mathContext) {
        this.f100358d = new BigDecimal(j10, mathContext);
    }

    public BigReal(String str) {
        this.f100358d = new BigDecimal(str);
    }

    public BigReal(String str, MathContext mathContext) {
        this.f100358d = new BigDecimal(str, mathContext);
    }
}
