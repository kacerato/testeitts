package org.apache.commons.math3.stat.descriptive.summary;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.WeightedEvaluation;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class Product extends AbstractStorelessUnivariateStatistic implements Serializable, WeightedEvaluation {
    private static final long serialVersionUID = 2824226005990582538L;

    private long f100350n;
    private double value;

    public Product() {
        this.f100350n = 0L;
        this.value = 1.0d;
    }

    @Override
    public void clear() {
        this.value = 1.0d;
        this.f100350n = 0L;
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, i10, i11, true)) {
            return Double.NaN;
        }
        double d10 = 1.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d10 *= dArr[i12];
        }
        return d10;
    }

    @Override
    public long getN() {
        return this.f100350n;
    }

    @Override
    public double getResult() {
        return this.value;
    }

    @Override
    public void increment(double d10) {
        this.value *= d10;
        this.f100350n++;
    }

    @Override
    public Product copy() {
        Product product = new Product();
        copy(this, product);
        return product;
    }

    @Override
    public double evaluate(double[] dArr, double[] dArr2, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, dArr2, i10, i11, true)) {
            return Double.NaN;
        }
        double d10 = 1.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d10 *= FastMath.pow(dArr[i12], dArr2[i12]);
        }
        return d10;
    }

    public Product(Product product) throws NullArgumentException {
        copy(product, this);
    }

    public static void copy(Product product, Product product2) throws NullArgumentException {
        MathUtils.checkNotNull(product);
        MathUtils.checkNotNull(product2);
        product2.setData(product.getDataRef());
        product2.f100350n = product.f100350n;
        product2.value = product.value;
    }

    @Override
    public double evaluate(double[] dArr, double[] dArr2) throws MathIllegalArgumentException {
        return evaluate(dArr, dArr2, 0, dArr.length);
    }
}
