package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class InterpolatingMicrosphere {
    private final double background;
    private final double darkThreshold;
    private final int dimension;
    private final double maxDarkFraction;
    private final List<Facet> microsphere;
    private final List<FacetData> microsphereData;
    private final int size;

    public static class Facet {
        private final double[] normal;

        public Facet(double[] dArr) {
            this.normal = dArr;
        }

        public double[] getNormal() {
            return this.normal;
        }
    }

    public static class FacetData {
        private final double illumination;
        private final double sample;

        public FacetData(double d10, double d11) {
            this.illumination = d10;
            this.sample = d11;
        }

        public double illumination() {
            return this.illumination;
        }

        public double sample() {
            return this.sample;
        }
    }

    public InterpolatingMicrosphere(int i10, int i11, double d10, double d11, double d12) {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        if (i11 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i11));
        }
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (d11 >= 0.0d) {
            this.dimension = i10;
            this.size = i11;
            this.maxDarkFraction = d10;
            this.darkThreshold = d11;
            this.background = d12;
            this.microsphere = new ArrayList(i11);
            this.microsphereData = new ArrayList(i11);
            return;
        }
        throw new NotPositiveException(Double.valueOf(d11));
    }

    private void clear() {
        for (int i10 = 0; i10 < this.size; i10++) {
            this.microsphereData.set(i10, new FacetData(0.0d, 0.0d));
        }
    }

    private void illuminate(double[] dArr, double d10, double d11) {
        for (int i10 = 0; i10 < this.size; i10++) {
            double cosAngle = MathArrays.cosAngle(this.microsphere.get(i10).getNormal(), dArr);
            if (cosAngle > 0.0d) {
                double d12 = cosAngle * d11;
                if (d12 > this.darkThreshold && d12 > this.microsphereData.get(i10).illumination()) {
                    this.microsphereData.set(i10, new FacetData(d12, d10));
                }
            }
        }
    }

    private double interpolate() {
        int i10 = 0;
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (FacetData facetData : this.microsphereData) {
            double illumination = facetData.illumination();
            if (illumination != 0.0d) {
                d10 += facetData.sample() * illumination;
                d11 += illumination;
            } else {
                i10++;
            }
        }
        return ((double) i10) / ((double) this.size) <= this.maxDarkFraction ? d10 / d11 : this.background;
    }

    public void add(double[] dArr, boolean z10) {
        if (this.microsphere.size() >= this.size) {
            throw new MaxCountExceededException(Integer.valueOf(this.size));
        }
        if (dArr.length > this.dimension) {
            throw new DimensionMismatchException(dArr.length, this.dimension);
        }
        List<Facet> list = this.microsphere;
        if (z10) {
            dArr = (double[]) dArr.clone();
        }
        list.add(new Facet(dArr));
        this.microsphereData.add(new FacetData(0.0d, 0.0d));
    }

    public InterpolatingMicrosphere copy() {
        return new InterpolatingMicrosphere(this);
    }

    public int getDimension() {
        return this.dimension;
    }

    public int getSize() {
        return this.size;
    }

    public double value(double[] dArr, double[][] dArr2, double[] dArr3, double d10, double d11) {
        if (d10 < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d10));
        }
        clear();
        int length = dArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            double[] ebeSubtract = MathArrays.ebeSubtract(dArr2[i10], dArr);
            double safeNorm = MathArrays.safeNorm(ebeSubtract);
            if (FastMath.abs(safeNorm) < d11) {
                return dArr3[i10];
            }
            illuminate(ebeSubtract, dArr3[i10], FastMath.pow(safeNorm, -d10));
        }
        return interpolate();
    }

    public InterpolatingMicrosphere(int i10, int i11, double d10, double d11, double d12, UnitSphereRandomVectorGenerator unitSphereRandomVectorGenerator) {
        this(i10, i11, d10, d11, d12);
        for (int i12 = 0; i12 < i11; i12++) {
            add(unitSphereRandomVectorGenerator.nextVector(), false);
        }
    }

    public InterpolatingMicrosphere(InterpolatingMicrosphere interpolatingMicrosphere) {
        this.dimension = interpolatingMicrosphere.dimension;
        int i10 = interpolatingMicrosphere.size;
        this.size = i10;
        this.maxDarkFraction = interpolatingMicrosphere.maxDarkFraction;
        this.darkThreshold = interpolatingMicrosphere.darkThreshold;
        this.background = interpolatingMicrosphere.background;
        this.microsphere = interpolatingMicrosphere.microsphere;
        this.microsphereData = new ArrayList(i10);
        for (FacetData facetData : interpolatingMicrosphere.microsphereData) {
            this.microsphereData.add(new FacetData(facetData.illumination(), facetData.sample()));
        }
    }
}
