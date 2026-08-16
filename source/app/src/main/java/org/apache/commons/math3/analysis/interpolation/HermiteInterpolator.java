package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableVectorFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.CombinatoricsUtils;

public class HermiteInterpolator implements UnivariateDifferentiableVectorFunction {
    private final List<Double> abscissae = new ArrayList();
    private final List<double[]> topDiagonal = new ArrayList();
    private final List<double[]> bottomDiagonal = new ArrayList();

    private void checkInterpolation() throws NoDataException {
        if (this.abscissae.isEmpty()) {
            throw new NoDataException(LocalizedFormats.EMPTY_INTERPOLATION_SAMPLE);
        }
    }

    private PolynomialFunction polynomial(double... dArr) {
        return new PolynomialFunction(dArr);
    }

    public void addSamplePoint(double d10, double[]... dArr) throws ZeroException, MathArithmeticException {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double[] dArr2 = (double[]) dArr[i10].clone();
            if (i10 > 1) {
                double factorial = 1.0d / CombinatoricsUtils.factorial(i10);
                for (int i11 = 0; i11 < dArr2.length; i11++) {
                    dArr2[i11] = dArr2[i11] * factorial;
                }
            }
            int size = this.abscissae.size();
            this.bottomDiagonal.add(size - i10, dArr2);
            int i12 = i10;
            double[] dArr3 = dArr2;
            while (i12 < size) {
                i12++;
                int i13 = size - i12;
                double[] dArr4 = this.bottomDiagonal.get(i13);
                double doubleValue = 1.0d / (d10 - this.abscissae.get(i13).doubleValue());
                if (Double.isInfinite(doubleValue)) {
                    throw new ZeroException(LocalizedFormats.DUPLICATED_ABSCISSA_DIVISION_BY_ZERO, Double.valueOf(d10));
                }
                for (int i14 = 0; i14 < dArr2.length; i14++) {
                    dArr4[i14] = (dArr3[i14] - dArr4[i14]) * doubleValue;
                }
                dArr3 = dArr4;
            }
            this.topDiagonal.add(dArr3.clone());
            this.abscissae.add(Double.valueOf(d10));
        }
    }

    public PolynomialFunction[] getPolynomials() throws NoDataException {
        checkInterpolation();
        PolynomialFunction polynomial = polynomial(0.0d);
        int length = this.topDiagonal.get(0).length;
        PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[length];
        for (int i10 = 0; i10 < length; i10++) {
            polynomialFunctionArr[i10] = polynomial;
        }
        PolynomialFunction polynomial2 = polynomial(1.0d);
        for (int i11 = 0; i11 < this.topDiagonal.size(); i11++) {
            double[] dArr = this.topDiagonal.get(i11);
            for (int i12 = 0; i12 < length; i12++) {
                polynomialFunctionArr[i12] = polynomialFunctionArr[i12].add(polynomial2.multiply(polynomial(dArr[i12])));
            }
            polynomial2 = polynomial2.multiply(polynomial(-this.abscissae.get(i11).doubleValue(), 1.0d));
        }
        return polynomialFunctionArr;
    }

    @Override
    public double[] value(double d10) throws NoDataException {
        checkInterpolation();
        int length = this.topDiagonal.get(0).length;
        double[] dArr = new double[length];
        double d11 = 1.0d;
        for (int i10 = 0; i10 < this.topDiagonal.size(); i10++) {
            double[] dArr2 = this.topDiagonal.get(i10);
            for (int i11 = 0; i11 < length; i11++) {
                dArr[i11] = dArr[i11] + (dArr2[i11] * d11);
            }
            d11 *= d10 - this.abscissae.get(i10).doubleValue();
        }
        return dArr;
    }

    @Override
    public DerivativeStructure[] value(DerivativeStructure derivativeStructure) throws NoDataException {
        checkInterpolation();
        int length = this.topDiagonal.get(0).length;
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
        Arrays.fill(derivativeStructureArr, derivativeStructure.getField().getZero());
        DerivativeStructure one = derivativeStructure.getField().getOne();
        for (int i10 = 0; i10 < this.topDiagonal.size(); i10++) {
            double[] dArr = this.topDiagonal.get(i10);
            for (int i11 = 0; i11 < length; i11++) {
                derivativeStructureArr[i11] = derivativeStructureArr[i11].add(one.multiply(dArr[i11]));
            }
            one = one.multiply(derivativeStructure.subtract(this.abscissae.get(i10).doubleValue()));
        }
        return derivativeStructureArr;
    }
}
