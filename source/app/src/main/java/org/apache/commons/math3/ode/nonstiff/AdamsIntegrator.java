package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.MultistepIntegrator;

public abstract class AdamsIntegrator extends MultistepIntegrator {
    private final AdamsNordsieckTransformer transformer;

    public AdamsIntegrator(String str, int i10, int i11, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(str, i10, i11, d10, d11, d12, d13);
        this.transformer = AdamsNordsieckTransformer.getInstance(i10);
    }

    @Override
    public Array2DRowRealMatrix initializeHighOrderDerivatives(double d10, double[] dArr, double[][] dArr2, double[][] dArr3) {
        return this.transformer.initializeHighOrderDerivatives(d10, dArr, dArr2, dArr3);
    }

    @Override
    public abstract void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    public Array2DRowRealMatrix updateHighOrderDerivativesPhase1(Array2DRowRealMatrix array2DRowRealMatrix) {
        return this.transformer.updateHighOrderDerivativesPhase1(array2DRowRealMatrix);
    }

    public void updateHighOrderDerivativesPhase2(double[] dArr, double[] dArr2, Array2DRowRealMatrix array2DRowRealMatrix) {
        this.transformer.updateHighOrderDerivativesPhase2(dArr, dArr2, array2DRowRealMatrix);
    }

    public AdamsIntegrator(String str, int i10, int i11, double d10, double d11, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(str, i10, i11, d10, d11, dArr, dArr2);
        this.transformer = AdamsNordsieckTransformer.getInstance(i10);
    }
}
