package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

class ParameterizedWrapper implements ParameterizedODE {
    private final FirstOrderDifferentialEquations fode;

    public ParameterizedWrapper(FirstOrderDifferentialEquations firstOrderDifferentialEquations) {
        this.fode = firstOrderDifferentialEquations;
    }

    public void computeDerivatives(double d10, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException {
        this.fode.computeDerivatives(d10, dArr, dArr2);
    }

    public int getDimension() {
        return this.fode.getDimension();
    }

    @Override
    public double getParameter(String str) throws UnknownParameterException {
        if (isSupported(str)) {
            return Double.NaN;
        }
        throw new UnknownParameterException(str);
    }

    @Override
    public Collection<String> getParametersNames() {
        return new ArrayList();
    }

    @Override
    public boolean isSupported(String str) {
        return false;
    }

    @Override
    public void setParameter(String str, double d10) {
    }
}
