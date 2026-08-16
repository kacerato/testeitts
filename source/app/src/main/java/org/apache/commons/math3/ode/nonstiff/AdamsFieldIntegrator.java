package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.MultistepFieldIntegrator;

public abstract class AdamsFieldIntegrator<T extends RealFieldElement<T>> extends MultistepFieldIntegrator<T> {
    private final AdamsNordsieckFieldTransformer<T> transformer;

    public AdamsFieldIntegrator(Field<T> field, String str, int i10, int i11, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(field, str, i10, i11, d10, d11, d12, d13);
        this.transformer = AdamsNordsieckFieldTransformer.getInstance(field, i10);
    }

    @Override
    public Array2DRowFieldMatrix<T> initializeHighOrderDerivatives(T t10, T[] tArr, T[][] tArr2, T[][] tArr3) {
        return this.transformer.initializeHighOrderDerivatives(t10, tArr, tArr2, tArr3);
    }

    @Override
    public abstract FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    public Array2DRowFieldMatrix<T> updateHighOrderDerivativesPhase1(Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        return this.transformer.updateHighOrderDerivativesPhase1(array2DRowFieldMatrix);
    }

    public void updateHighOrderDerivativesPhase2(T[] tArr, T[] tArr2, Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        this.transformer.updateHighOrderDerivativesPhase2(tArr, tArr2, array2DRowFieldMatrix);
    }

    public AdamsFieldIntegrator(Field<T> field, String str, int i10, int i11, double d10, double d11, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, str, i10, i11, d10, d11, dArr, dArr2);
        this.transformer = AdamsNordsieckFieldTransformer.getInstance(field, i10);
    }
}
