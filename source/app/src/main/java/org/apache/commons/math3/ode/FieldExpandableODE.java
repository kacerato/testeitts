package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.MathArrays;

public class FieldExpandableODE<T extends RealFieldElement<T>> {
    private List<FieldSecondaryEquations<T>> components = new ArrayList();
    private FieldEquationsMapper<T> mapper;
    private final FirstOrderFieldDifferentialEquations<T> primary;

    public FieldExpandableODE(FirstOrderFieldDifferentialEquations<T> firstOrderFieldDifferentialEquations) {
        this.primary = firstOrderFieldDifferentialEquations;
        this.mapper = new FieldEquationsMapper<>(null, firstOrderFieldDifferentialEquations.getDimension());
    }

    public int addSecondaryEquations(FieldSecondaryEquations<T> fieldSecondaryEquations) {
        this.components.add(fieldSecondaryEquations);
        this.mapper = new FieldEquationsMapper<>(this.mapper, fieldSecondaryEquations.getDimension());
        return this.components.size();
    }

    public T[] computeDerivatives(T t10, T[] tArr) throws MaxCountExceededException, DimensionMismatchException {
        T[] tArr2 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(t10.getField(), this.mapper.getTotalDimension()));
        int i10 = 0;
        T[] extractEquationData = this.mapper.extractEquationData(0, tArr);
        T[] computeDerivatives = this.primary.computeDerivatives(t10, extractEquationData);
        this.mapper.insertEquationData(0, computeDerivatives, tArr2);
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= this.mapper.getNumberOfEquations()) {
                return tArr2;
            }
            this.mapper.insertEquationData(i11, this.components.get(i10).computeDerivatives(t10, extractEquationData, computeDerivatives, this.mapper.extractEquationData(i11, tArr)), tArr2);
            i10 = i11;
        }
    }

    public FieldEquationsMapper<T> getMapper() {
        return this.mapper;
    }

    public void init(T t10, T[] tArr, T t11) {
        int i10 = 0;
        T[] extractEquationData = this.mapper.extractEquationData(0, tArr);
        this.primary.init(t10, extractEquationData, t11);
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= this.mapper.getNumberOfEquations()) {
                return;
            }
            this.components.get(i10).init(t10, extractEquationData, this.mapper.extractEquationData(i11, tArr), t11);
            i10 = i11;
        }
    }
}
