package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class MicrosphereInterpolatingFunction implements MultivariateFunction {
    private final double brightnessExponent;
    private final int dimension;
    private final List<MicrosphereSurfaceElement> microsphere;
    private final Map<RealVector, Double> samples;

    public static class MicrosphereSurfaceElement {
        private double brightestIllumination;
        private Map.Entry<RealVector, Double> brightestSample;
        private final RealVector normal;

        public MicrosphereSurfaceElement(double[] dArr) {
            this.normal = new ArrayRealVector(dArr);
        }

        public double illumination() {
            return this.brightestIllumination;
        }

        public RealVector normal() {
            return this.normal;
        }

        public void reset() {
            this.brightestIllumination = 0.0d;
            this.brightestSample = null;
        }

        public Map.Entry<RealVector, Double> sample() {
            return this.brightestSample;
        }

        public void store(double d10, Map.Entry<RealVector, Double> entry) {
            if (d10 > this.brightestIllumination) {
                this.brightestIllumination = d10;
                this.brightestSample = entry;
            }
        }
    }

    public MicrosphereInterpolatingFunction(double[][] dArr, double[] dArr2, int i10, int i11, UnitSphereRandomVectorGenerator unitSphereRandomVectorGenerator) throws DimensionMismatchException, NoDataException, NullArgumentException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        double[] dArr3 = dArr[0];
        if (dArr3 == null) {
            throw new NullArgumentException();
        }
        this.dimension = dArr3.length;
        this.brightnessExponent = i10;
        this.samples = new HashMap(dArr2.length);
        for (int i12 = 0; i12 < dArr.length; i12++) {
            double[] dArr4 = dArr[i12];
            if (dArr4 == null) {
                throw new NullArgumentException();
            }
            if (dArr4.length != this.dimension) {
                throw new DimensionMismatchException(dArr4.length, this.dimension);
            }
            this.samples.put(new ArrayRealVector(dArr4), Double.valueOf(dArr2[i12]));
        }
        this.microsphere = new ArrayList(i11);
        for (int i13 = 0; i13 < i11; i13++) {
            this.microsphere.add(new MicrosphereSurfaceElement(unitSphereRandomVectorGenerator.nextVector()));
        }
    }

    private double cosAngle(RealVector realVector, RealVector realVector2) {
        return realVector.dotProduct(realVector2) / (realVector.getNorm() * realVector2.getNorm());
    }

    @Override
    public double value(double[] dArr) throws DimensionMismatchException {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr);
        Iterator<MicrosphereSurfaceElement> it = this.microsphere.iterator();
        while (it.hasNext()) {
            it.next().reset();
        }
        for (Map.Entry<RealVector, Double> entry : this.samples.entrySet()) {
            RealVector subtract = entry.getKey().subtract(arrayRealVector);
            double norm = subtract.getNorm();
            if (FastMath.abs(norm) < FastMath.ulp(1.0d)) {
                return entry.getValue().doubleValue();
            }
            for (MicrosphereSurfaceElement microsphereSurfaceElement : this.microsphere) {
                microsphereSurfaceElement.store(cosAngle(subtract, microsphereSurfaceElement.normal()) * FastMath.pow(norm, -this.brightnessExponent), entry);
            }
        }
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (MicrosphereSurfaceElement microsphereSurfaceElement2 : this.microsphere) {
            double illumination = microsphereSurfaceElement2.illumination();
            Map.Entry<RealVector, Double> sample = microsphereSurfaceElement2.sample();
            if (sample != null) {
                d10 += sample.getValue().doubleValue() * illumination;
                d11 += illumination;
            }
        }
        return d10 / d11;
    }
}
