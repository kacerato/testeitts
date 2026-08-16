package org.apache.commons.math3.ode;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class JacobianMatrices {
    private boolean dirtyParameter;
    private ExpandableStatefulODE efode;
    private int index;
    private List<ParameterJacobianProvider> jacobianProviders;
    private MainStateJacobianProvider jode;
    private double[] matricesData;
    private int paramDim;
    private ParameterizedODE pode;
    private ParameterConfiguration[] selectedParameters;
    private int stateDim;

    public class JacobiansSecondaryEquations implements SecondaryEquations {
        private JacobiansSecondaryEquations() {
        }

        @Override
        public void computeDerivatives(double d10, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) throws MaxCountExceededException, DimensionMismatchException {
            int i10;
            int i11;
            int i12;
            ParameterConfiguration[] parameterConfigurationArr;
            if (JacobianMatrices.this.dirtyParameter && JacobianMatrices.this.paramDim != 0) {
                JacobianMatrices.this.jacobianProviders.add(new ParameterJacobianWrapper(JacobianMatrices.this.jode, JacobianMatrices.this.pode, JacobianMatrices.this.selectedParameters));
                JacobianMatrices.this.dirtyParameter = false;
            }
            double[][] dArr5 = (double[][]) Array.newInstance(Double.TYPE, JacobianMatrices.this.stateDim, JacobianMatrices.this.stateDim);
            JacobianMatrices.this.jode.computeMainStateJacobian(d10, dArr, dArr2, dArr5);
            for (int i13 = 0; i13 < JacobianMatrices.this.stateDim; i13++) {
                double[] dArr6 = dArr5[i13];
                for (int i14 = 0; i14 < JacobianMatrices.this.stateDim; i14++) {
                    double d11 = 0.0d;
                    int i15 = i14;
                    for (int i16 = 0; i16 < JacobianMatrices.this.stateDim; i16++) {
                        d11 += dArr6[i16] * dArr3[i15];
                        i15 += JacobianMatrices.this.stateDim;
                    }
                    dArr4[(JacobianMatrices.this.stateDim * i13) + i14] = d11;
                }
            }
            if (JacobianMatrices.this.paramDim != 0) {
                double[] dArr7 = new double[JacobianMatrices.this.stateDim];
                int i17 = JacobianMatrices.this.stateDim * JacobianMatrices.this.stateDim;
                ParameterConfiguration[] parameterConfigurationArr2 = JacobianMatrices.this.selectedParameters;
                int length = parameterConfigurationArr2.length;
                int i18 = 0;
                while (i18 < length) {
                    ParameterConfiguration parameterConfiguration = parameterConfigurationArr2[i18];
                    boolean z10 = false;
                    int i19 = 0;
                    while (!z10 && i19 < JacobianMatrices.this.jacobianProviders.size()) {
                        ParameterJacobianProvider parameterJacobianProvider = (ParameterJacobianProvider) JacobianMatrices.this.jacobianProviders.get(i19);
                        if (parameterJacobianProvider.isSupported(parameterConfiguration.getParameterName())) {
                            i10 = i19;
                            i11 = i18;
                            i12 = length;
                            parameterConfigurationArr = parameterConfigurationArr2;
                            parameterJacobianProvider.computeParameterJacobian(d10, dArr, dArr2, parameterConfiguration.getParameterName(), dArr7);
                            for (int i20 = 0; i20 < JacobianMatrices.this.stateDim; i20++) {
                                double[] dArr8 = dArr5[i20];
                                double d12 = dArr7[i20];
                                int i21 = i17;
                                for (int i22 = 0; i22 < JacobianMatrices.this.stateDim; i22++) {
                                    d12 += dArr8[i22] * dArr3[i21];
                                    i21++;
                                }
                                dArr4[i17 + i20] = d12;
                            }
                            z10 = true;
                        } else {
                            i10 = i19;
                            i11 = i18;
                            i12 = length;
                            parameterConfigurationArr = parameterConfigurationArr2;
                        }
                        i19 = i10 + 1;
                        parameterConfigurationArr2 = parameterConfigurationArr;
                        i18 = i11;
                        length = i12;
                    }
                    int i23 = i18;
                    int i24 = length;
                    ParameterConfiguration[] parameterConfigurationArr3 = parameterConfigurationArr2;
                    if (!z10) {
                        Arrays.fill(dArr4, i17, JacobianMatrices.this.stateDim + i17, 0.0d);
                    }
                    i17 += JacobianMatrices.this.stateDim;
                    i18 = i23 + 1;
                    parameterConfigurationArr2 = parameterConfigurationArr3;
                    length = i24;
                }
            }
        }

        @Override
        public int getDimension() {
            return JacobianMatrices.this.stateDim * (JacobianMatrices.this.stateDim + JacobianMatrices.this.paramDim);
        }
    }

    public static class MainStateJacobianWrapper implements MainStateJacobianProvider {
        private final double[] hY;
        private final FirstOrderDifferentialEquations ode;

        public MainStateJacobianWrapper(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double[] dArr) throws DimensionMismatchException {
            this.ode = firstOrderDifferentialEquations;
            this.hY = (double[]) dArr.clone();
            if (dArr.length != firstOrderDifferentialEquations.getDimension()) {
                throw new DimensionMismatchException(firstOrderDifferentialEquations.getDimension(), dArr.length);
            }
        }

        @Override
        public void computeDerivatives(double d10, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException {
            this.ode.computeDerivatives(d10, dArr, dArr2);
        }

        @Override
        public void computeMainStateJacobian(double d10, double[] dArr, double[] dArr2, double[][] dArr3) throws MaxCountExceededException, DimensionMismatchException {
            int dimension = this.ode.getDimension();
            double[] dArr4 = new double[dimension];
            for (int i10 = 0; i10 < dimension; i10++) {
                double d11 = dArr[i10];
                dArr[i10] = this.hY[i10] + d11;
                this.ode.computeDerivatives(d10, dArr, dArr4);
                for (int i11 = 0; i11 < dimension; i11++) {
                    dArr3[i11][i10] = (dArr4[i11] - dArr2[i11]) / this.hY[i10];
                }
                dArr[i10] = d11;
            }
        }

        @Override
        public int getDimension() {
            return this.ode.getDimension();
        }
    }

    public static class MismatchedEquations extends MathIllegalArgumentException {
        private static final long serialVersionUID = 20120902;

        public MismatchedEquations() {
            super(LocalizedFormats.UNMATCHED_ODE_IN_EXPANDED_SET, new Object[0]);
        }
    }

    public JacobianMatrices(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double[] dArr, String... strArr) throws DimensionMismatchException {
        this(new MainStateJacobianWrapper(firstOrderDifferentialEquations, dArr), strArr);
    }

    private void checkDimension(int i10, Object obj) throws DimensionMismatchException {
        int length = obj == null ? 0 : Array.getLength(obj);
        if (length != i10) {
            throw new DimensionMismatchException(length, i10);
        }
    }

    public void addParameterJacobianProvider(ParameterJacobianProvider parameterJacobianProvider) {
        this.jacobianProviders.add(parameterJacobianProvider);
    }

    public void getCurrentMainSetJacobian(double[][] dArr) {
        double[] secondaryState = this.efode.getSecondaryState(this.index);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.stateDim;
            if (i10 >= i12) {
                return;
            }
            System.arraycopy(secondaryState, i11, dArr[i10], 0, i12);
            i11 += this.stateDim;
            i10++;
        }
    }

    public void getCurrentParameterJacobian(String str, double[] dArr) {
        double[] secondaryState = this.efode.getSecondaryState(this.index);
        int i10 = this.stateDim;
        int i11 = i10 * i10;
        for (ParameterConfiguration parameterConfiguration : this.selectedParameters) {
            if (parameterConfiguration.getParameterName().equals(str)) {
                System.arraycopy(secondaryState, i11, dArr, 0, this.stateDim);
                return;
            }
            i11 += this.stateDim;
        }
    }

    public void registerVariationalEquations(ExpandableStatefulODE expandableStatefulODE) throws DimensionMismatchException, MismatchedEquations {
        FirstOrderDifferentialEquations firstOrderDifferentialEquations = this.jode;
        if (firstOrderDifferentialEquations instanceof MainStateJacobianWrapper) {
            firstOrderDifferentialEquations = ((MainStateJacobianWrapper) firstOrderDifferentialEquations).ode;
        }
        if (expandableStatefulODE.getPrimary() != firstOrderDifferentialEquations) {
            throw new MismatchedEquations();
        }
        this.efode = expandableStatefulODE;
        int addSecondaryEquations = expandableStatefulODE.addSecondaryEquations(new JacobiansSecondaryEquations());
        this.index = addSecondaryEquations;
        this.efode.setSecondaryState(addSecondaryEquations, this.matricesData);
    }

    public void setInitialMainStateJacobian(double[][] dArr) throws DimensionMismatchException {
        checkDimension(this.stateDim, dArr);
        checkDimension(this.stateDim, dArr[0]);
        int i10 = 0;
        for (double[] dArr2 : dArr) {
            System.arraycopy(dArr2, 0, this.matricesData, i10, this.stateDim);
            i10 += this.stateDim;
        }
        ExpandableStatefulODE expandableStatefulODE = this.efode;
        if (expandableStatefulODE != null) {
            expandableStatefulODE.setSecondaryState(this.index, this.matricesData);
        }
    }

    public void setInitialParameterJacobian(String str, double[] dArr) throws UnknownParameterException, DimensionMismatchException {
        checkDimension(this.stateDim, dArr);
        int i10 = this.stateDim;
        int i11 = i10 * i10;
        for (ParameterConfiguration parameterConfiguration : this.selectedParameters) {
            if (str.equals(parameterConfiguration.getParameterName())) {
                System.arraycopy(dArr, 0, this.matricesData, i11, this.stateDim);
                ExpandableStatefulODE expandableStatefulODE = this.efode;
                if (expandableStatefulODE != null) {
                    expandableStatefulODE.setSecondaryState(this.index, this.matricesData);
                    return;
                }
                return;
            }
            i11 += this.stateDim;
        }
        throw new UnknownParameterException(str);
    }

    public void setParameterStep(String str, double d10) throws UnknownParameterException {
        for (ParameterConfiguration parameterConfiguration : this.selectedParameters) {
            if (str.equals(parameterConfiguration.getParameterName())) {
                parameterConfiguration.setHP(d10);
                this.dirtyParameter = true;
                return;
            }
        }
        throw new UnknownParameterException(str);
    }

    public void setParameterizedODE(ParameterizedODE parameterizedODE) {
        this.pode = parameterizedODE;
        this.dirtyParameter = true;
    }

    public JacobianMatrices(MainStateJacobianProvider mainStateJacobianProvider, String... strArr) {
        this.efode = null;
        this.index = -1;
        this.jode = mainStateJacobianProvider;
        this.pode = null;
        this.stateDim = mainStateJacobianProvider.getDimension();
        int i10 = 0;
        if (strArr == null) {
            this.selectedParameters = null;
            this.paramDim = 0;
        } else {
            this.selectedParameters = new ParameterConfiguration[strArr.length];
            for (int i11 = 0; i11 < strArr.length; i11++) {
                this.selectedParameters[i11] = new ParameterConfiguration(strArr[i11], Double.NaN);
            }
            this.paramDim = strArr.length;
        }
        this.dirtyParameter = false;
        this.jacobianProviders = new ArrayList();
        int i12 = this.stateDim;
        this.matricesData = new double[(this.paramDim + i12) * i12];
        while (true) {
            int i13 = this.stateDim;
            if (i10 >= i13) {
                return;
            }
            this.matricesData[(i13 + 1) * i10] = 1.0d;
            i10++;
        }
    }
}
