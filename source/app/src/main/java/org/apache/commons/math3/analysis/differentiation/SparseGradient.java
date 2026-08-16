package org.apache.commons.math3.analysis.differentiation;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class SparseGradient implements RealFieldElement<SparseGradient>, Serializable {
    private static final long serialVersionUID = 20131025;
    private final Map<Integer, Double> derivatives;
    private double value;

    private SparseGradient(double d10, Map<Integer, Double> map) {
        this.value = d10;
        HashMap hashMap = new HashMap();
        this.derivatives = hashMap;
        if (map != null) {
            hashMap.putAll(map);
        }
    }

    public static SparseGradient createConstant(double d10) {
        return new SparseGradient(d10, Collections.emptyMap());
    }

    public static SparseGradient createVariable(int i10, double d10) {
        return new SparseGradient(d10, Collections.singletonMap(Integer.valueOf(i10), Double.valueOf(1.0d)));
    }

    public void addInPlace(SparseGradient sparseGradient) {
        this.value += sparseGradient.value;
        for (Map.Entry<Integer, Double> entry : sparseGradient.derivatives.entrySet()) {
            Integer key = entry.getKey();
            key.intValue();
            Double d10 = this.derivatives.get(key);
            if (d10 == null) {
                this.derivatives.put(key, entry.getValue());
            } else {
                this.derivatives.put(key, Double.valueOf(d10.doubleValue() + entry.getValue().doubleValue()));
            }
        }
    }

    public SparseGradient compose(double d10, double d11) {
        return new SparseGradient(d10, d11, this.derivatives);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SparseGradient)) {
            return false;
        }
        SparseGradient sparseGradient = (SparseGradient) obj;
        if (!Precision.equals(this.value, sparseGradient.value, 1) || this.derivatives.size() != sparseGradient.derivatives.size()) {
            return false;
        }
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            if (!sparseGradient.derivatives.containsKey(entry.getKey()) || !Precision.equals(entry.getValue().doubleValue(), sparseGradient.derivatives.get(entry.getKey()).doubleValue(), 1)) {
                return false;
            }
        }
        return true;
    }

    public double getDerivative(int i10) {
        Double d10 = this.derivatives.get(Integer.valueOf(i10));
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    @Override
    public Field<SparseGradient> getField() {
        return new Field<SparseGradient>() {
            @Override
            public Class<? extends FieldElement<SparseGradient>> getRuntimeClass() {
                return SparseGradient.class;
            }

            @Override
            public SparseGradient getOne() {
                return SparseGradient.createConstant(1.0d);
            }

            @Override
            public SparseGradient getZero() {
                return SparseGradient.createConstant(0.0d);
            }
        };
    }

    @Override
    public double getReal() {
        return this.value;
    }

    public double getValue() {
        return this.value;
    }

    public int hashCode() {
        return (MathUtils.hash(this.value) * 809) + 743 + (this.derivatives.hashCode() * 167);
    }

    public SparseGradient log10() {
        return new SparseGradient(FastMath.log10(this.value), 1.0d / (FastMath.log(10.0d) * this.value), this.derivatives);
    }

    public void multiplyInPlace(SparseGradient sparseGradient) {
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            this.derivatives.put(entry.getKey(), Double.valueOf(sparseGradient.value * entry.getValue().doubleValue()));
        }
        for (Map.Entry<Integer, Double> entry2 : sparseGradient.derivatives.entrySet()) {
            Integer key = entry2.getKey();
            key.intValue();
            Double d10 = this.derivatives.get(key);
            if (d10 == null) {
                this.derivatives.put(key, Double.valueOf(this.value * entry2.getValue().doubleValue()));
            } else {
                this.derivatives.put(key, Double.valueOf(d10.doubleValue() + (this.value * entry2.getValue().doubleValue())));
            }
        }
        this.value *= sparseGradient.value;
    }

    public int numVars() {
        return this.derivatives.size();
    }

    @Override
    public long round() {
        return FastMath.round(this.value);
    }

    public double taylor(double... dArr) {
        double d10 = this.value;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            d10 += dArr[i10] * getDerivative(i10);
        }
        return d10;
    }

    public SparseGradient toDegrees() {
        return new SparseGradient(FastMath.toDegrees(this.value), FastMath.toDegrees(1.0d), this.derivatives);
    }

    public SparseGradient toRadians() {
        return new SparseGradient(FastMath.toRadians(this.value), FastMath.toRadians(1.0d), this.derivatives);
    }

    @Override
    public SparseGradient abs() {
        return Double.doubleToLongBits(this.value) < 0 ? negate() : this;
    }

    @Override
    public SparseGradient acos() {
        double acos = FastMath.acos(this.value);
        double d10 = this.value;
        return new SparseGradient(acos, (-1.0d) / FastMath.sqrt(1.0d - (d10 * d10)), this.derivatives);
    }

    @Override
    public SparseGradient acosh() {
        double acosh = FastMath.acosh(this.value);
        double d10 = this.value;
        return new SparseGradient(acosh, 1.0d / FastMath.sqrt((d10 * d10) - 1.0d), this.derivatives);
    }

    @Override
    public SparseGradient asin() {
        double asin = FastMath.asin(this.value);
        double d10 = this.value;
        return new SparseGradient(asin, 1.0d / FastMath.sqrt(1.0d - (d10 * d10)), this.derivatives);
    }

    @Override
    public SparseGradient asinh() {
        double asinh = FastMath.asinh(this.value);
        double d10 = this.value;
        return new SparseGradient(asinh, 1.0d / FastMath.sqrt((d10 * d10) + 1.0d), this.derivatives);
    }

    @Override
    public SparseGradient atan() {
        double atan = FastMath.atan(this.value);
        double d10 = this.value;
        return new SparseGradient(atan, 1.0d / ((d10 * d10) + 1.0d), this.derivatives);
    }

    @Override
    public SparseGradient atan2(SparseGradient sparseGradient) {
        SparseGradient add;
        SparseGradient sqrt = multiply(this).add(sparseGradient.multiply(sparseGradient)).sqrt();
        if (sparseGradient.value >= 0.0d) {
            add = divide(sqrt.add(sparseGradient)).atan().multiply(2);
        } else {
            SparseGradient multiply = divide(sqrt.subtract(sparseGradient)).atan().multiply(-2);
            add = multiply.add(multiply.value <= 0.0d ? -3.141592653589793d : 3.141592653589793d);
        }
        add.value = FastMath.atan2(this.value, sparseGradient.value);
        return add;
    }

    @Override
    public SparseGradient atanh() {
        double atanh = FastMath.atanh(this.value);
        double d10 = this.value;
        return new SparseGradient(atanh, 1.0d / (1.0d - (d10 * d10)), this.derivatives);
    }

    @Override
    public SparseGradient cbrt() {
        double cbrt = FastMath.cbrt(this.value);
        return new SparseGradient(cbrt, 1.0d / ((3.0d * cbrt) * cbrt), this.derivatives);
    }

    @Override
    public SparseGradient ceil() {
        return createConstant(FastMath.ceil(this.value));
    }

    @Override
    public SparseGradient cos() {
        return new SparseGradient(FastMath.cos(this.value), -FastMath.sin(this.value), this.derivatives);
    }

    @Override
    public SparseGradient cosh() {
        return new SparseGradient(FastMath.cosh(this.value), FastMath.sinh(this.value), this.derivatives);
    }

    @Override
    public SparseGradient exp() {
        double exp = FastMath.exp(this.value);
        return new SparseGradient(exp, exp, this.derivatives);
    }

    @Override
    public SparseGradient expm1() {
        return new SparseGradient(FastMath.expm1(this.value), FastMath.exp(this.value), this.derivatives);
    }

    @Override
    public SparseGradient floor() {
        return createConstant(FastMath.floor(this.value));
    }

    @Override
    public SparseGradient hypot(SparseGradient sparseGradient) {
        if (!Double.isInfinite(this.value) && !Double.isInfinite(sparseGradient.value)) {
            if (!Double.isNaN(this.value) && !Double.isNaN(sparseGradient.value)) {
                int exponent = FastMath.getExponent(this.value);
                int exponent2 = FastMath.getExponent(sparseGradient.value);
                if (exponent > exponent2 + 27) {
                    return abs();
                }
                if (exponent2 > exponent + 27) {
                    return sparseGradient.abs();
                }
                int i10 = (exponent + exponent2) / 2;
                int i11 = -i10;
                SparseGradient scalb = scalb(i11);
                SparseGradient scalb2 = sparseGradient.scalb(i11);
                return scalb.multiply(scalb).add(scalb2.multiply(scalb2)).sqrt().scalb(i10);
            }
            return createConstant(Double.NaN);
        }
        return createConstant(Double.POSITIVE_INFINITY);
    }

    @Override
    public SparseGradient log() {
        return new SparseGradient(FastMath.log(this.value), 1.0d / this.value, this.derivatives);
    }

    @Override
    public SparseGradient log1p() {
        return new SparseGradient(FastMath.log1p(this.value), 1.0d / (this.value + 1.0d), this.derivatives);
    }

    @Override
    public SparseGradient negate() {
        return new SparseGradient(-this.value, -1.0d, this.derivatives);
    }

    @Override
    public SparseGradient reciprocal() {
        double d10 = this.value;
        return new SparseGradient(1.0d / d10, (-1.0d) / (d10 * d10), this.derivatives);
    }

    @Override
    public SparseGradient rint() {
        return createConstant(FastMath.rint(this.value));
    }

    @Override
    public SparseGradient rootN(int i10) {
        if (i10 == 2) {
            return sqrt();
        }
        if (i10 == 3) {
            return cbrt();
        }
        double d10 = i10;
        double pow = FastMath.pow(this.value, 1.0d / d10);
        return new SparseGradient(pow, 1.0d / (d10 * FastMath.pow(pow, i10 - 1)), this.derivatives);
    }

    @Override
    public SparseGradient scalb(int i10) {
        SparseGradient sparseGradient = new SparseGradient(FastMath.scalb(this.value, i10), Collections.emptyMap());
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            sparseGradient.derivatives.put(entry.getKey(), Double.valueOf(FastMath.scalb(entry.getValue().doubleValue(), i10)));
        }
        return sparseGradient;
    }

    @Override
    public SparseGradient signum() {
        return createConstant(FastMath.signum(this.value));
    }

    @Override
    public SparseGradient sin() {
        return new SparseGradient(FastMath.sin(this.value), FastMath.cos(this.value), this.derivatives);
    }

    @Override
    public SparseGradient sinh() {
        return new SparseGradient(FastMath.sinh(this.value), FastMath.cosh(this.value), this.derivatives);
    }

    @Override
    public SparseGradient sqrt() {
        double sqrt = FastMath.sqrt(this.value);
        return new SparseGradient(sqrt, 0.5d / sqrt, this.derivatives);
    }

    @Override
    public SparseGradient tan() {
        double tan = FastMath.tan(this.value);
        return new SparseGradient(tan, (tan * tan) + 1.0d, this.derivatives);
    }

    @Override
    public SparseGradient tanh() {
        double tanh = FastMath.tanh(this.value);
        return new SparseGradient(tanh, 1.0d - (tanh * tanh), this.derivatives);
    }

    @Override
    public SparseGradient add(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value + sparseGradient.value, this.derivatives);
        for (Map.Entry<Integer, Double> entry : sparseGradient.derivatives.entrySet()) {
            Integer key = entry.getKey();
            key.intValue();
            Double d10 = sparseGradient2.derivatives.get(key);
            if (d10 == null) {
                sparseGradient2.derivatives.put(key, entry.getValue());
            } else {
                sparseGradient2.derivatives.put(key, Double.valueOf(d10.doubleValue() + entry.getValue().doubleValue()));
            }
        }
        return sparseGradient2;
    }

    @Override
    public SparseGradient copySign(SparseGradient sparseGradient) {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        long doubleToLongBits2 = Double.doubleToLongBits(sparseGradient.value);
        return ((doubleToLongBits < 0 || doubleToLongBits2 < 0) && (doubleToLongBits >= 0 || doubleToLongBits2 >= 0)) ? negate() : this;
    }

    @Override
    public SparseGradient divide(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value / sparseGradient.value, Collections.emptyMap());
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            sparseGradient2.derivatives.put(entry.getKey(), Double.valueOf(entry.getValue().doubleValue() / sparseGradient.value));
        }
        for (Map.Entry<Integer, Double> entry2 : sparseGradient.derivatives.entrySet()) {
            Integer key = entry2.getKey();
            key.intValue();
            Double d10 = sparseGradient2.derivatives.get(key);
            if (d10 == null) {
                sparseGradient2.derivatives.put(key, Double.valueOf(((-sparseGradient2.value) / sparseGradient.value) * entry2.getValue().doubleValue()));
            } else {
                sparseGradient2.derivatives.put(key, Double.valueOf(d10.doubleValue() - ((sparseGradient2.value / sparseGradient.value) * entry2.getValue().doubleValue())));
            }
        }
        return sparseGradient2;
    }

    @Override
    public SparseGradient remainder(double d10) {
        return new SparseGradient(FastMath.IEEEremainder(this.value, d10), this.derivatives);
    }

    @Override
    public SparseGradient subtract(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value - sparseGradient.value, this.derivatives);
        for (Map.Entry<Integer, Double> entry : sparseGradient.derivatives.entrySet()) {
            Integer key = entry.getKey();
            key.intValue();
            Double d10 = sparseGradient2.derivatives.get(key);
            if (d10 == null) {
                sparseGradient2.derivatives.put(key, Double.valueOf(-entry.getValue().doubleValue()));
            } else {
                sparseGradient2.derivatives.put(key, Double.valueOf(d10.doubleValue() - entry.getValue().doubleValue()));
            }
        }
        return sparseGradient2;
    }

    @Override
    public SparseGradient multiply(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value * sparseGradient.value, Collections.emptyMap());
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            sparseGradient2.derivatives.put(entry.getKey(), Double.valueOf(sparseGradient.value * entry.getValue().doubleValue()));
        }
        for (Map.Entry<Integer, Double> entry2 : sparseGradient.derivatives.entrySet()) {
            Integer key = entry2.getKey();
            key.intValue();
            Double d10 = sparseGradient2.derivatives.get(key);
            if (d10 == null) {
                sparseGradient2.derivatives.put(key, Double.valueOf(this.value * entry2.getValue().doubleValue()));
            } else {
                sparseGradient2.derivatives.put(key, Double.valueOf(d10.doubleValue() + (this.value * entry2.getValue().doubleValue())));
            }
        }
        return sparseGradient2;
    }

    @Override
    public SparseGradient pow(double d10) {
        return new SparseGradient(FastMath.pow(this.value, d10), FastMath.pow(this.value, d10 - 1.0d) * d10, this.derivatives);
    }

    @Override
    public SparseGradient remainder(SparseGradient sparseGradient) {
        return subtract(sparseGradient.multiply(FastMath.rint((this.value - FastMath.IEEEremainder(this.value, sparseGradient.value)) / sparseGradient.value)));
    }

    private SparseGradient(double d10, double d11, Map<Integer, Double> map) {
        this.value = d10;
        this.derivatives = new HashMap();
        if (map != null) {
            for (Map.Entry<Integer, Double> entry : map.entrySet()) {
                this.derivatives.put(entry.getKey(), Double.valueOf(entry.getValue().doubleValue() * d11));
            }
        }
    }

    @Override
    public SparseGradient pow(int i10) {
        if (i10 == 0) {
            return getField().getOne();
        }
        double pow = FastMath.pow(this.value, i10 - 1);
        return new SparseGradient(this.value * pow, i10 * pow, this.derivatives);
    }

    @Override
    public SparseGradient copySign(double d10) {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        long doubleToLongBits2 = Double.doubleToLongBits(d10);
        return ((doubleToLongBits < 0 || doubleToLongBits2 < 0) && (doubleToLongBits >= 0 || doubleToLongBits2 >= 0)) ? negate() : this;
    }

    public static SparseGradient atan2(SparseGradient sparseGradient, SparseGradient sparseGradient2) {
        return sparseGradient.atan2(sparseGradient2);
    }

    @Override
    public SparseGradient pow(SparseGradient sparseGradient) {
        return log().multiply(sparseGradient).exp();
    }

    public static SparseGradient pow(double d10, SparseGradient sparseGradient) {
        if (d10 == 0.0d) {
            double d11 = sparseGradient.value;
            if (d11 == 0.0d) {
                return sparseGradient.compose(1.0d, Double.NEGATIVE_INFINITY);
            }
            if (d11 < 0.0d) {
                return sparseGradient.compose(Double.NaN, Double.NaN);
            }
            return sparseGradient.getField().getZero();
        }
        double pow = FastMath.pow(d10, sparseGradient.value);
        return new SparseGradient(pow, pow * FastMath.log(d10), sparseGradient.derivatives);
    }

    @Override
    public SparseGradient add(double d10) {
        return new SparseGradient(this.value + d10, this.derivatives);
    }

    @Override
    public SparseGradient linearCombination(SparseGradient[] sparseGradientArr, SparseGradient[] sparseGradientArr2) throws DimensionMismatchException {
        SparseGradient zero = sparseGradientArr[0].getField().getZero();
        for (int i10 = 0; i10 < sparseGradientArr.length; i10++) {
            zero = zero.add(sparseGradientArr[i10].multiply(sparseGradientArr2[i10]));
        }
        double[] dArr = new double[sparseGradientArr.length];
        for (int i11 = 0; i11 < sparseGradientArr.length; i11++) {
            dArr[i11] = sparseGradientArr[i11].getValue();
        }
        double[] dArr2 = new double[sparseGradientArr2.length];
        for (int i12 = 0; i12 < sparseGradientArr2.length; i12++) {
            dArr2[i12] = sparseGradientArr2[i12].getValue();
        }
        zero.value = MathArrays.linearCombination(dArr, dArr2);
        return zero;
    }

    @Override
    public SparseGradient subtract(double d10) {
        return new SparseGradient(this.value - d10, this.derivatives);
    }

    @Override
    public SparseGradient divide(double d10) {
        return new SparseGradient(this.value / d10, 1.0d / d10, this.derivatives);
    }

    @Override
    public SparseGradient multiply(double d10) {
        return new SparseGradient(this.value * d10, d10, this.derivatives);
    }

    @Override
    public SparseGradient multiply(int i10) {
        double d10 = i10;
        return new SparseGradient(this.value * d10, d10, this.derivatives);
    }

    public static SparseGradient hypot(SparseGradient sparseGradient, SparseGradient sparseGradient2) {
        return sparseGradient.hypot(sparseGradient2);
    }

    @Override
    public SparseGradient linearCombination(double[] dArr, SparseGradient[] sparseGradientArr) {
        SparseGradient zero = sparseGradientArr[0].getField().getZero();
        for (int i10 = 0; i10 < dArr.length; i10++) {
            zero = zero.add(sparseGradientArr[i10].multiply(dArr[i10]));
        }
        double[] dArr2 = new double[sparseGradientArr.length];
        for (int i11 = 0; i11 < sparseGradientArr.length; i11++) {
            dArr2[i11] = sparseGradientArr[i11].getValue();
        }
        zero.value = MathArrays.linearCombination(dArr, dArr2);
        return zero;
    }

    @Override
    public SparseGradient linearCombination(SparseGradient sparseGradient, SparseGradient sparseGradient2, SparseGradient sparseGradient3, SparseGradient sparseGradient4) {
        SparseGradient add = sparseGradient.multiply(sparseGradient2).add(sparseGradient3.multiply(sparseGradient4));
        add.value = MathArrays.linearCombination(sparseGradient.value, sparseGradient2.value, sparseGradient3.value, sparseGradient4.value);
        return add;
    }

    @Override
    public SparseGradient linearCombination(double d10, SparseGradient sparseGradient, double d11, SparseGradient sparseGradient2) {
        SparseGradient add = sparseGradient.multiply(d10).add(sparseGradient2.multiply(d11));
        add.value = MathArrays.linearCombination(d10, sparseGradient.value, d11, sparseGradient2.value);
        return add;
    }

    @Override
    public SparseGradient linearCombination(SparseGradient sparseGradient, SparseGradient sparseGradient2, SparseGradient sparseGradient3, SparseGradient sparseGradient4, SparseGradient sparseGradient5, SparseGradient sparseGradient6) {
        SparseGradient add = sparseGradient.multiply(sparseGradient2).add(sparseGradient3.multiply(sparseGradient4)).add(sparseGradient5.multiply(sparseGradient6));
        add.value = MathArrays.linearCombination(sparseGradient.value, sparseGradient2.value, sparseGradient3.value, sparseGradient4.value, sparseGradient5.value, sparseGradient6.value);
        return add;
    }

    @Override
    public SparseGradient linearCombination(double d10, SparseGradient sparseGradient, double d11, SparseGradient sparseGradient2, double d12, SparseGradient sparseGradient3) {
        SparseGradient add = sparseGradient.multiply(d10).add(sparseGradient2.multiply(d11)).add(sparseGradient3.multiply(d12));
        add.value = MathArrays.linearCombination(d10, sparseGradient.value, d11, sparseGradient2.value, d12, sparseGradient3.value);
        return add;
    }

    @Override
    public SparseGradient linearCombination(SparseGradient sparseGradient, SparseGradient sparseGradient2, SparseGradient sparseGradient3, SparseGradient sparseGradient4, SparseGradient sparseGradient5, SparseGradient sparseGradient6, SparseGradient sparseGradient7, SparseGradient sparseGradient8) {
        SparseGradient add = sparseGradient.multiply(sparseGradient2).add(sparseGradient3.multiply(sparseGradient4)).add(sparseGradient5.multiply(sparseGradient6)).add(sparseGradient7.multiply(sparseGradient8));
        add.value = MathArrays.linearCombination(sparseGradient.value, sparseGradient2.value, sparseGradient3.value, sparseGradient4.value, sparseGradient5.value, sparseGradient6.value, sparseGradient7.value, sparseGradient8.value);
        return add;
    }

    @Override
    public SparseGradient linearCombination(double d10, SparseGradient sparseGradient, double d11, SparseGradient sparseGradient2, double d12, SparseGradient sparseGradient3, double d13, SparseGradient sparseGradient4) {
        SparseGradient add = sparseGradient.multiply(d10).add(sparseGradient2.multiply(d11)).add(sparseGradient3.multiply(d12)).add(sparseGradient4.multiply(d13));
        add.value = MathArrays.linearCombination(d10, sparseGradient.value, d11, sparseGradient2.value, d12, sparseGradient3.value, d13, sparseGradient4.value);
        return add;
    }
}
