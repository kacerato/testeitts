package org.apache.commons.math3.fitting;

import java.util.Collection;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.fitting.AbstractCurveFitter;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresBuilder;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.DiagonalMatrix;

public class PolynomialCurveFitter extends AbstractCurveFitter {
    private static final PolynomialFunction.Parametric FUNCTION = new PolynomialFunction.Parametric();
    private final double[] initialGuess;
    private final int maxIter;

    private PolynomialCurveFitter(double[] dArr, int i10) {
        this.initialGuess = dArr;
        this.maxIter = i10;
    }

    public static PolynomialCurveFitter create(int i10) {
        return new PolynomialCurveFitter(new double[i10 + 1], Integer.MAX_VALUE);
    }

    @Override
    public LeastSquaresProblem getProblem(Collection<WeightedObservedPoint> collection) {
        int size = collection.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i10 = 0;
        for (WeightedObservedPoint weightedObservedPoint : collection) {
            dArr[i10] = weightedObservedPoint.getY();
            dArr2[i10] = weightedObservedPoint.getWeight();
            i10++;
        }
        AbstractCurveFitter.TheoreticalValuesFunction theoreticalValuesFunction = new AbstractCurveFitter.TheoreticalValuesFunction(FUNCTION, collection);
        if (this.initialGuess != null) {
            return new LeastSquaresBuilder().maxEvaluations(Integer.MAX_VALUE).maxIterations(this.maxIter).start(this.initialGuess).target(dArr).weight(new DiagonalMatrix(dArr2)).model(theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian()).build();
        }
        throw new MathInternalError();
    }

    public PolynomialCurveFitter withMaxIterations(int i10) {
        return new PolynomialCurveFitter(this.initialGuess, i10);
    }

    public PolynomialCurveFitter withStartPoint(double[] dArr) {
        return new PolynomialCurveFitter((double[]) dArr.clone(), this.maxIter);
    }
}
