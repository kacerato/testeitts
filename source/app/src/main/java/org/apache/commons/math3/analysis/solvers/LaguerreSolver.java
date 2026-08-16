package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.complex.ComplexUtils;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public class LaguerreSolver extends AbstractPolynomialSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private final ComplexSolver complexSolver;

    public class ComplexSolver {
        private ComplexSolver() {
        }

        public boolean isRoot(double d10, double d11, Complex complex) {
            if (LaguerreSolver.this.isSequence(d10, complex.getReal(), d11)) {
                return FastMath.abs(complex.getImaginary()) <= FastMath.max(LaguerreSolver.this.getRelativeAccuracy() * complex.abs(), LaguerreSolver.this.getAbsoluteAccuracy()) || complex.abs() <= LaguerreSolver.this.getFunctionValueAccuracy();
            }
            return false;
        }

        public Complex solve(Complex[] complexArr, Complex complex) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
            Complex subtract;
            Complex complex2;
            Complex[] complexArr2 = complexArr;
            if (complexArr2 == null) {
                throw new NullArgumentException();
            }
            int length = complexArr2.length;
            int i10 = length - 1;
            if (i10 == 0) {
                throw new NoDataException(LocalizedFormats.POLYNOMIAL);
            }
            double absoluteAccuracy = LaguerreSolver.this.getAbsoluteAccuracy();
            double relativeAccuracy = LaguerreSolver.this.getRelativeAccuracy();
            double functionValueAccuracy = LaguerreSolver.this.getFunctionValueAccuracy();
            Complex complex3 = new Complex(i10, 0.0d);
            int i11 = length - 2;
            Complex complex4 = new Complex(i11, 0.0d);
            Complex complex5 = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
            Complex complex6 = complex;
            while (true) {
                Complex complex7 = complexArr2[i10];
                int i12 = i11;
                Complex complex8 = Complex.ZERO;
                Complex complex9 = complex8;
                while (i12 >= 0) {
                    complex8 = complex9.add(complex6.multiply(complex8));
                    complex9 = complex7.add(complex6.multiply(complex9));
                    complex7 = complexArr2[i12].add(complex6.multiply(complex7));
                    i12--;
                    i11 = i11;
                }
                int i13 = i11;
                Complex complex10 = complex3;
                Complex complex11 = complex4;
                Complex multiply = complex8.multiply(new Complex(2.0d, 0.0d));
                if (complex6.subtract(complex5).abs() <= FastMath.max(complex6.abs() * relativeAccuracy, absoluteAccuracy) || complex7.abs() <= functionValueAccuracy) {
                    return complex6;
                }
                Complex divide = complex9.divide(complex7);
                Complex multiply2 = divide.multiply(divide);
                Complex sqrt = complex11.multiply(complex10.multiply(multiply2.subtract(multiply.divide(complex7))).subtract(multiply2)).sqrt();
                Complex add = divide.add(sqrt);
                Complex subtract2 = divide.subtract(sqrt);
                if (add.abs() <= subtract2.abs()) {
                    add = subtract2;
                }
                if (add.equals(new Complex(0.0d, 0.0d))) {
                    subtract = complex6.add(new Complex(absoluteAccuracy, absoluteAccuracy));
                    complex2 = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
                } else {
                    subtract = complex6.subtract(complex10.divide(add));
                    complex2 = complex6;
                }
                complex6 = subtract;
                LaguerreSolver.this.incrementEvaluationCount();
                complex4 = complex11;
                complex3 = complex10;
                i11 = i13;
                complex5 = complex2;
                complexArr2 = complexArr;
            }
        }

        public Complex[] solveAll(Complex[] complexArr, Complex complex) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
            if (complexArr == null) {
                throw new NullArgumentException();
            }
            int length = complexArr.length;
            int i10 = length - 1;
            if (i10 == 0) {
                throw new NoDataException(LocalizedFormats.POLYNOMIAL);
            }
            Complex[] complexArr2 = new Complex[length];
            for (int i11 = 0; i11 <= i10; i11++) {
                complexArr2[i11] = complexArr[i11];
            }
            Complex[] complexArr3 = new Complex[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                int i13 = i10 - i12;
                int i14 = i13 + 1;
                Complex[] complexArr4 = new Complex[i14];
                System.arraycopy(complexArr2, 0, complexArr4, 0, i14);
                complexArr3[i12] = solve(complexArr4, complex);
                Complex complex2 = complexArr2[i13];
                for (int i15 = i13 - 1; i15 >= 0; i15--) {
                    Complex complex3 = complexArr2[i15];
                    complexArr2[i15] = complex2;
                    complex2 = complex3.add(complex2.multiply(complexArr3[i12]));
                }
            }
            return complexArr3;
        }
    }

    public LaguerreSolver() {
        this(1.0E-6d);
    }

    @Override
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double computeObjectiveValue = computeObjectiveValue(startValue);
        if (FastMath.abs(computeObjectiveValue) <= functionValueAccuracy) {
            return startValue;
        }
        double computeObjectiveValue2 = computeObjectiveValue(min);
        if (FastMath.abs(computeObjectiveValue2) <= functionValueAccuracy) {
            return min;
        }
        if (computeObjectiveValue * computeObjectiveValue2 < 0.0d) {
            return laguerre(min, startValue, computeObjectiveValue2, computeObjectiveValue);
        }
        double computeObjectiveValue3 = computeObjectiveValue(max);
        if (FastMath.abs(computeObjectiveValue3) <= functionValueAccuracy) {
            return max;
        }
        if (computeObjectiveValue * computeObjectiveValue3 < 0.0d) {
            return laguerre(startValue, max, computeObjectiveValue, computeObjectiveValue3);
        }
        throw new NoBracketingException(min, max, computeObjectiveValue2, computeObjectiveValue3);
    }

    @Deprecated
    public double laguerre(double d10, double d11, double d12, double d13) {
        Complex[] convertToComplex = ComplexUtils.convertToComplex(getCoefficients());
        Complex complex = new Complex((d10 + d11) * 0.5d, 0.0d);
        Complex solve = this.complexSolver.solve(convertToComplex, complex);
        if (this.complexSolver.isRoot(d10, d11, solve)) {
            return solve.getReal();
        }
        Complex[] solveAll = this.complexSolver.solveAll(convertToComplex, complex);
        for (int i10 = 0; i10 < solveAll.length; i10++) {
            if (this.complexSolver.isRoot(d10, d11, solveAll[i10])) {
                return solveAll[i10].getReal();
            }
        }
        return Double.NaN;
    }

    public Complex[] solveAllComplex(double[] dArr, double d10) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        return solveAllComplex(dArr, d10, Integer.MAX_VALUE);
    }

    public Complex solveComplex(double[] dArr, double d10) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        return solveComplex(dArr, d10, Integer.MAX_VALUE);
    }

    public LaguerreSolver(double d10) {
        super(d10);
        this.complexSolver = new ComplexSolver();
    }

    public Complex[] solveAllComplex(double[] dArr, double d10, int i10) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        setup(i10, new PolynomialFunction(dArr), Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY, d10);
        return this.complexSolver.solveAll(ComplexUtils.convertToComplex(dArr), new Complex(d10, 0.0d));
    }

    public Complex solveComplex(double[] dArr, double d10, int i10) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        setup(i10, new PolynomialFunction(dArr), Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY, d10);
        return this.complexSolver.solve(ComplexUtils.convertToComplex(dArr), new Complex(d10, 0.0d));
    }

    public LaguerreSolver(double d10, double d11) {
        super(d10, d11);
        this.complexSolver = new ComplexSolver();
    }

    public LaguerreSolver(double d10, double d11, double d12) {
        super(d10, d11, d12);
        this.complexSolver = new ComplexSolver();
    }
}
