package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

public class SemiVariance extends AbstractUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = -2653430366886024994L;
    private boolean biasCorrected;
    private Direction varianceDirection;
    public static final Direction UPSIDE_VARIANCE = Direction.UPSIDE;
    public static final Direction DOWNSIDE_VARIANCE = Direction.DOWNSIDE;

    public enum Direction {
        UPSIDE(true),
        DOWNSIDE(false);

        private boolean direction;

        Direction(boolean z10) {
            this.direction = z10;
        }

        public boolean getDirection() {
            return this.direction;
        }
    }

    public SemiVariance() {
        this.biasCorrected = true;
        this.varianceDirection = Direction.DOWNSIDE;
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return evaluate(dArr, new Mean().evaluate(dArr, i10, i11), this.varianceDirection, this.biasCorrected, 0, dArr.length);
    }

    public Direction getVarianceDirection() {
        return this.varianceDirection;
    }

    public boolean isBiasCorrected() {
        return this.biasCorrected;
    }

    public void setBiasCorrected(boolean z10) {
        this.biasCorrected = z10;
    }

    public void setVarianceDirection(Direction direction) {
        this.varianceDirection = direction;
    }

    @Override
    public SemiVariance copy() {
        SemiVariance semiVariance = new SemiVariance();
        copy(this, semiVariance);
        return semiVariance;
    }

    public double evaluate(double[] dArr, Direction direction) throws MathIllegalArgumentException {
        return evaluate(dArr, new Mean().evaluate(dArr), direction, this.biasCorrected, 0, dArr.length);
    }

    public SemiVariance(boolean z10) {
        this.biasCorrected = true;
        this.varianceDirection = Direction.DOWNSIDE;
        this.biasCorrected = z10;
    }

    public static void copy(SemiVariance semiVariance, SemiVariance semiVariance2) throws NullArgumentException {
        MathUtils.checkNotNull(semiVariance);
        MathUtils.checkNotNull(semiVariance2);
        semiVariance2.setData(semiVariance.getDataRef());
        semiVariance2.biasCorrected = semiVariance.biasCorrected;
        semiVariance2.varianceDirection = semiVariance.varianceDirection;
    }

    public double evaluate(double[] dArr, double d10) throws MathIllegalArgumentException {
        return evaluate(dArr, d10, this.varianceDirection, this.biasCorrected, 0, dArr.length);
    }

    public double evaluate(double[] dArr, double d10, Direction direction) throws MathIllegalArgumentException {
        return evaluate(dArr, d10, direction, this.biasCorrected, 0, dArr.length);
    }

    public double evaluate(double[] dArr, double d10, Direction direction, boolean z10, int i10, int i11) throws MathIllegalArgumentException {
        test(dArr, i10, i11);
        if (dArr.length == 0) {
            return Double.NaN;
        }
        double d11 = 0.0d;
        if (dArr.length == 1) {
            return 0.0d;
        }
        boolean direction2 = direction.getDirection();
        while (i10 < i11) {
            double d12 = dArr[i10];
            if ((d12 > d10) == direction2) {
                double d13 = d12 - d10;
                d11 += d13 * d13;
            }
            i10++;
        }
        return d11 / (z10 ? i11 - 1.0d : i11);
    }

    public SemiVariance(Direction direction) {
        this.biasCorrected = true;
        Direction direction2 = Direction.DOWNSIDE;
        this.varianceDirection = direction;
    }

    public SemiVariance(boolean z10, Direction direction) {
        this.biasCorrected = true;
        Direction direction2 = Direction.DOWNSIDE;
        this.biasCorrected = z10;
        this.varianceDirection = direction;
    }

    public SemiVariance(SemiVariance semiVariance) throws NullArgumentException {
        this.biasCorrected = true;
        this.varianceDirection = Direction.DOWNSIDE;
        copy(semiVariance, this);
    }
}
