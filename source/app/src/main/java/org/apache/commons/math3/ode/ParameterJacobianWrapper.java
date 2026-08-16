package org.apache.commons.math3.ode;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

class ParameterJacobianWrapper implements ParameterJacobianProvider {
    private final FirstOrderDifferentialEquations fode;
    private final Map<String, Double> hParam = new HashMap();
    private final ParameterizedODE pode;

    public ParameterJacobianWrapper(FirstOrderDifferentialEquations firstOrderDifferentialEquations, ParameterizedODE parameterizedODE, ParameterConfiguration[] parameterConfigurationArr) {
        this.fode = firstOrderDifferentialEquations;
        this.pode = parameterizedODE;
        for (ParameterConfiguration parameterConfiguration : parameterConfigurationArr) {
            String parameterName = parameterConfiguration.getParameterName();
            if (parameterizedODE.isSupported(parameterName)) {
                this.hParam.put(parameterName, Double.valueOf(parameterConfiguration.getHP()));
            }
        }
    }

    @Override
    public void computeParameterJacobian(double d10, double[] dArr, double[] dArr2, String str, double[] dArr3) throws DimensionMismatchException, MaxCountExceededException {
        int dimension = this.fode.getDimension();
        if (!this.pode.isSupported(str)) {
            Arrays.fill(dArr3, 0, dimension, 0.0d);
            return;
        }
        double[] dArr4 = new double[dimension];
        double parameter = this.pode.getParameter(str);
        double doubleValue = this.hParam.get(str).doubleValue();
        this.pode.setParameter(str, parameter + doubleValue);
        this.fode.computeDerivatives(d10, dArr, dArr4);
        for (int i10 = 0; i10 < dimension; i10++) {
            dArr3[i10] = (dArr4[i10] - dArr2[i10]) / doubleValue;
        }
        this.pode.setParameter(str, parameter);
    }

    @Override
    public Collection<String> getParametersNames() {
        return this.pode.getParametersNames();
    }

    @Override
    public boolean isSupported(String str) {
        return this.pode.isSupported(str);
    }
}
