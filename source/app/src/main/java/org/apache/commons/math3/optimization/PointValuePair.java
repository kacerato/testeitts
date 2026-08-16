package org.apache.commons.math3.optimization;

import java.io.Serializable;
import org.apache.commons.math3.util.Pair;

@Deprecated
public class PointValuePair extends Pair<double[], Double> implements Serializable {
    private static final long serialVersionUID = 20120513;

    public static class DataTransferObject implements Serializable {
        private static final long serialVersionUID = 20120513;
        private final double[] point;
        private final double value;

        public DataTransferObject(double[] dArr, double d10) {
            this.point = (double[]) dArr.clone();
            this.value = d10;
        }

        private Object readResolve() {
            return new PointValuePair(this.point, this.value, false);
        }
    }

    public PointValuePair(double[] dArr, double d10) {
        this(dArr, d10, true);
    }

    private Object writeReplace() {
        return new DataTransferObject(getKey(), getValue().doubleValue());
    }

    public double[] getPoint() {
        double[] key = getKey();
        if (key == null) {
            return null;
        }
        return (double[]) key.clone();
    }

    public double[] getPointRef() {
        return getKey();
    }

    public PointValuePair(double[] dArr, double d10, boolean z10) {
        super(z10 ? dArr == null ? null : (double[]) dArr.clone() : dArr, Double.valueOf(d10));
    }
}
