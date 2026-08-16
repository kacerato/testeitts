package org.apache.commons.math3.optim;

import java.io.Serializable;
import org.apache.commons.math3.util.Pair;

public class PointVectorValuePair extends Pair<double[], double[]> implements Serializable {
    private static final long serialVersionUID = 20120513;

    public static class DataTransferObject implements Serializable {
        private static final long serialVersionUID = 20120513;
        private final double[] point;
        private final double[] value;

        public DataTransferObject(double[] dArr, double[] dArr2) {
            this.point = (double[]) dArr.clone();
            this.value = (double[]) dArr2.clone();
        }

        private Object readResolve() {
            return new PointVectorValuePair(this.point, this.value, false);
        }
    }

    public PointVectorValuePair(double[] dArr, double[] dArr2) {
        this(dArr, dArr2, true);
    }

    private Object writeReplace() {
        return new DataTransferObject(getKey(), getValue());
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

    public double[] getValueRef() {
        return (double[]) super.getValue();
    }

    public PointVectorValuePair(double[] dArr, double[] dArr2, boolean z10) {
        super(z10 ? dArr == null ? null : (double[]) dArr.clone() : dArr, z10 ? dArr2 == null ? null : (double[]) dArr2.clone() : dArr2);
    }

    @Override
    public double[] getValue() {
        double[] dArr = (double[]) super.getValue();
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }
}
