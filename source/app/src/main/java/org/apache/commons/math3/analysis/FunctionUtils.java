package org.apache.commons.math3.analysis;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.analysis.function.Identity;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class FunctionUtils {
    private FunctionUtils() {
    }

    public static UnivariateFunction add(final UnivariateFunction... univariateFunctionArr) {
        return new UnivariateFunction() {
            @Override
            public double value(double d10) {
                double value = univariateFunctionArr[0].value(d10);
                int i10 = 1;
                while (true) {
                    UnivariateFunction[] univariateFunctionArr2 = univariateFunctionArr;
                    if (i10 >= univariateFunctionArr2.length) {
                        return value;
                    }
                    value += univariateFunctionArr2[i10].value(d10);
                    i10++;
                }
            }
        };
    }

    public static MultivariateFunction collector(final BivariateFunction bivariateFunction, final UnivariateFunction univariateFunction, final double d10) {
        return new MultivariateFunction() {
            @Override
            public double value(double[] dArr) {
                double value = BivariateFunction.this.value(d10, univariateFunction.value(dArr[0]));
                for (int i10 = 1; i10 < dArr.length; i10++) {
                    value = BivariateFunction.this.value(value, univariateFunction.value(dArr[i10]));
                }
                return value;
            }
        };
    }

    public static UnivariateFunction combine(final BivariateFunction bivariateFunction, final UnivariateFunction univariateFunction, final UnivariateFunction univariateFunction2) {
        return new UnivariateFunction() {
            @Override
            public double value(double d10) {
                return BivariateFunction.this.value(univariateFunction.value(d10), univariateFunction2.value(d10));
            }
        };
    }

    public static UnivariateFunction compose(final UnivariateFunction... univariateFunctionArr) {
        return new UnivariateFunction() {
            @Override
            public double value(double d10) {
                for (int length = univariateFunctionArr.length - 1; length >= 0; length--) {
                    d10 = univariateFunctionArr[length].value(d10);
                }
                return d10;
            }
        };
    }

    public static UnivariateFunction fix1stArgument(final BivariateFunction bivariateFunction, final double d10) {
        return new UnivariateFunction() {
            @Override
            public double value(double d11) {
                return BivariateFunction.this.value(d10, d11);
            }
        };
    }

    public static UnivariateFunction fix2ndArgument(final BivariateFunction bivariateFunction, final double d10) {
        return new UnivariateFunction() {
            @Override
            public double value(double d11) {
                return BivariateFunction.this.value(d11, d10);
            }
        };
    }

    public static UnivariateFunction multiply(final UnivariateFunction... univariateFunctionArr) {
        return new UnivariateFunction() {
            @Override
            public double value(double d10) {
                double value = univariateFunctionArr[0].value(d10);
                int i10 = 1;
                while (true) {
                    UnivariateFunction[] univariateFunctionArr2 = univariateFunctionArr;
                    if (i10 >= univariateFunctionArr2.length) {
                        return value;
                    }
                    value *= univariateFunctionArr2[i10].value(d10);
                    i10++;
                }
            }
        };
    }

    public static double[] sample(UnivariateFunction univariateFunction, double d10, double d11, int i10) throws NumberIsTooLargeException, NotStrictlyPositiveException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_NUMBER_OF_SAMPLES, Integer.valueOf(i10));
        }
        if (d10 >= d11) {
            throw new NumberIsTooLargeException(Double.valueOf(d10), Double.valueOf(d11), false);
        }
        double[] dArr = new double[i10];
        double d12 = (d11 - d10) / i10;
        for (int i11 = 0; i11 < i10; i11++) {
            dArr[i11] = univariateFunction.value((i11 * d12) + d10);
        }
        return dArr;
    }

    @Deprecated
    public static DifferentiableMultivariateFunction toDifferentiableMultivariateFunction(final MultivariateDifferentiableFunction multivariateDifferentiableFunction) {
        return new DifferentiableMultivariateFunction() {
            @Override
            public MultivariateVectorFunction gradient() {
                return new MultivariateVectorFunction() {
                    @Override
                    public double[] value(double[] dArr) {
                        int length = dArr.length;
                        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                        for (int i10 = 0; i10 < length; i10++) {
                            derivativeStructureArr[i10] = new DerivativeStructure(length, 1, i10, dArr[i10]);
                        }
                        DerivativeStructure value = MultivariateDifferentiableFunction.this.value(derivativeStructureArr);
                        double[] dArr2 = new double[length];
                        int[] iArr = new int[length];
                        for (int i11 = 0; i11 < length; i11++) {
                            iArr[i11] = 1;
                            dArr2[i11] = value.getPartialDerivative(iArr);
                            iArr[i11] = 0;
                        }
                        return dArr2;
                    }
                };
            }

            @Override
            public MultivariateFunction partialDerivative(final int i10) {
                return new MultivariateFunction() {
                    @Override
                    public double value(double[] dArr) {
                        int length = dArr.length;
                        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                        for (int i11 = 0; i11 < length; i11++) {
                            if (i11 == i10) {
                                derivativeStructureArr[i11] = new DerivativeStructure(1, 1, 0, dArr[i11]);
                            } else {
                                derivativeStructureArr[i11] = new DerivativeStructure(1, 1, dArr[i11]);
                            }
                        }
                        return MultivariateDifferentiableFunction.this.value(derivativeStructureArr).getPartialDerivative(1);
                    }
                };
            }

            @Override
            public double value(double[] dArr) {
                return MultivariateDifferentiableFunction.this.value(dArr);
            }
        };
    }

    @Deprecated
    public static DifferentiableMultivariateVectorFunction toDifferentiableMultivariateVectorFunction(final MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction) {
        return new DifferentiableMultivariateVectorFunction() {
            @Override
            public MultivariateMatrixFunction jacobian() {
                return new MultivariateMatrixFunction() {
                    @Override
                    public double[][] value(double[] dArr) {
                        int length = dArr.length;
                        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                        for (int i10 = 0; i10 < length; i10++) {
                            derivativeStructureArr[i10] = new DerivativeStructure(length, 1, i10, dArr[i10]);
                        }
                        DerivativeStructure[] value = MultivariateDifferentiableVectorFunction.this.value(derivativeStructureArr);
                        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, value.length, length);
                        int[] iArr = new int[length];
                        for (int i11 = 0; i11 < value.length; i11++) {
                            for (int i12 = 0; i12 < length; i12++) {
                                iArr[i12] = 1;
                                dArr2[i11][i12] = value[i11].getPartialDerivative(iArr);
                                iArr[i12] = 0;
                            }
                        }
                        return dArr2;
                    }
                };
            }

            @Override
            public double[] value(double[] dArr) {
                return MultivariateDifferentiableVectorFunction.this.value(dArr);
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction toDifferentiableUnivariateFunction(final UnivariateDifferentiableFunction univariateDifferentiableFunction) {
        return new DifferentiableUnivariateFunction() {
            @Override
            public UnivariateFunction derivative() {
                return new UnivariateFunction() {
                    @Override
                    public double value(double d10) {
                        return UnivariateDifferentiableFunction.this.value(new DerivativeStructure(1, 1, 0, d10)).getPartialDerivative(1);
                    }
                };
            }

            @Override
            public double value(double d10) {
                return UnivariateDifferentiableFunction.this.value(d10);
            }
        };
    }

    @Deprecated
    public static MultivariateDifferentiableFunction toMultivariateDifferentiableFunction(final DifferentiableMultivariateFunction differentiableMultivariateFunction) {
        return new MultivariateDifferentiableFunction() {
            @Override
            public double value(double[] dArr) {
                return DifferentiableMultivariateFunction.this.value(dArr);
            }

            @Override
            public DerivativeStructure value(DerivativeStructure[] derivativeStructureArr) throws DimensionMismatchException, NumberIsTooLargeException {
                int freeParameters = derivativeStructureArr[0].getFreeParameters();
                int order = derivativeStructureArr[0].getOrder();
                int length = derivativeStructureArr.length;
                int i10 = 1;
                if (order <= 1) {
                    for (int i11 = 0; i11 < length; i11++) {
                        if (derivativeStructureArr[i11].getFreeParameters() == freeParameters) {
                            if (derivativeStructureArr[i11].getOrder() != order) {
                                throw new DimensionMismatchException(derivativeStructureArr[i11].getOrder(), order);
                            }
                        } else {
                            throw new DimensionMismatchException(derivativeStructureArr[i11].getFreeParameters(), freeParameters);
                        }
                    }
                    double[] dArr = new double[length];
                    for (int i12 = 0; i12 < length; i12++) {
                        dArr[i12] = derivativeStructureArr[i12].getValue();
                    }
                    double value = DifferentiableMultivariateFunction.this.value(dArr);
                    double[] value2 = DifferentiableMultivariateFunction.this.gradient().value(dArr);
                    double[] dArr2 = new double[freeParameters + 1];
                    dArr2[0] = value;
                    int[] iArr = new int[freeParameters];
                    int i13 = 0;
                    while (i13 < freeParameters) {
                        iArr[i13] = i10;
                        for (int i14 = 0; i14 < length; i14++) {
                            int i15 = i13 + 1;
                            dArr2[i15] = dArr2[i15] + (value2[i14] * derivativeStructureArr[i14].getPartialDerivative(iArr));
                        }
                        iArr[i13] = 0;
                        i13++;
                        i10 = 1;
                    }
                    return new DerivativeStructure(freeParameters, order, dArr2);
                }
                throw new NumberIsTooLargeException(Integer.valueOf(order), 1, true);
            }
        };
    }

    @Deprecated
    public static MultivariateDifferentiableVectorFunction toMultivariateDifferentiableVectorFunction(final DifferentiableMultivariateVectorFunction differentiableMultivariateVectorFunction) {
        return new MultivariateDifferentiableVectorFunction() {
            @Override
            public double[] value(double[] dArr) {
                return DifferentiableMultivariateVectorFunction.this.value(dArr);
            }

            @Override
            public DerivativeStructure[] value(DerivativeStructure[] derivativeStructureArr) throws DimensionMismatchException, NumberIsTooLargeException {
                int freeParameters = derivativeStructureArr[0].getFreeParameters();
                int order = derivativeStructureArr[0].getOrder();
                int length = derivativeStructureArr.length;
                int i10 = 1;
                if (order <= 1) {
                    for (int i11 = 0; i11 < length; i11++) {
                        if (derivativeStructureArr[i11].getFreeParameters() == freeParameters) {
                            if (derivativeStructureArr[i11].getOrder() != order) {
                                throw new DimensionMismatchException(derivativeStructureArr[i11].getOrder(), order);
                            }
                        } else {
                            throw new DimensionMismatchException(derivativeStructureArr[i11].getFreeParameters(), freeParameters);
                        }
                    }
                    double[] dArr = new double[length];
                    for (int i12 = 0; i12 < length; i12++) {
                        dArr[i12] = derivativeStructureArr[i12].getValue();
                    }
                    double[] value = DifferentiableMultivariateVectorFunction.this.value(dArr);
                    double[][] value2 = DifferentiableMultivariateVectorFunction.this.jacobian().value(dArr);
                    int length2 = value.length;
                    DerivativeStructure[] derivativeStructureArr2 = new DerivativeStructure[length2];
                    int i13 = 0;
                    while (i13 < length2) {
                        double[] dArr2 = new double[freeParameters + 1];
                        dArr2[0] = value[i13];
                        int[] iArr = new int[freeParameters];
                        int i14 = 0;
                        while (i14 < freeParameters) {
                            iArr[i14] = i10;
                            for (int i15 = 0; i15 < length; i15++) {
                                int i16 = i14 + 1;
                                dArr2[i16] = dArr2[i16] + (value2[i13][i15] * derivativeStructureArr[i15].getPartialDerivative(iArr));
                            }
                            iArr[i14] = 0;
                            i14++;
                            i10 = 1;
                        }
                        derivativeStructureArr2[i13] = new DerivativeStructure(freeParameters, order, dArr2);
                        i13++;
                        i10 = 1;
                    }
                    return derivativeStructureArr2;
                }
                throw new NumberIsTooLargeException(Integer.valueOf(order), 1, true);
            }
        };
    }

    @Deprecated
    public static UnivariateDifferentiableFunction toUnivariateDifferential(final DifferentiableUnivariateFunction differentiableUnivariateFunction) {
        return new UnivariateDifferentiableFunction() {
            @Override
            public double value(double d10) {
                return DifferentiableUnivariateFunction.this.value(d10);
            }

            @Override
            public DerivativeStructure value(DerivativeStructure derivativeStructure) throws NumberIsTooLargeException {
                int order = derivativeStructure.getOrder();
                if (order == 0) {
                    return new DerivativeStructure(derivativeStructure.getFreeParameters(), 0, DifferentiableUnivariateFunction.this.value(derivativeStructure.getValue()));
                }
                if (order == 1) {
                    int freeParameters = derivativeStructure.getFreeParameters();
                    double[] dArr = new double[freeParameters + 1];
                    dArr[0] = DifferentiableUnivariateFunction.this.value(derivativeStructure.getValue());
                    double value = DifferentiableUnivariateFunction.this.derivative().value(derivativeStructure.getValue());
                    int[] iArr = new int[freeParameters];
                    int i10 = 0;
                    while (i10 < freeParameters) {
                        iArr[i10] = 1;
                        int i11 = i10 + 1;
                        dArr[i11] = derivativeStructure.getPartialDerivative(iArr) * value;
                        iArr[i10] = 0;
                        i10 = i11;
                    }
                    return new DerivativeStructure(freeParameters, 1, dArr);
                }
                throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), 1, true);
            }
        };
    }

    public static UnivariateDifferentiableFunction add(final UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new UnivariateDifferentiableFunction() {
            @Override
            public double value(double d10) {
                double value = univariateDifferentiableFunctionArr[0].value(d10);
                int i10 = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i10 >= univariateDifferentiableFunctionArr2.length) {
                        return value;
                    }
                    value += univariateDifferentiableFunctionArr2[i10].value(d10);
                    i10++;
                }
            }

            @Override
            public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
                DerivativeStructure value = univariateDifferentiableFunctionArr[0].value(derivativeStructure);
                int i10 = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i10 >= univariateDifferentiableFunctionArr2.length) {
                        return value;
                    }
                    value = value.add(univariateDifferentiableFunctionArr2[i10].value(derivativeStructure));
                    i10++;
                }
            }
        };
    }

    public static MultivariateFunction collector(BivariateFunction bivariateFunction, double d10) {
        return collector(bivariateFunction, new Identity(), d10);
    }

    public static UnivariateDifferentiableFunction compose(final UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new UnivariateDifferentiableFunction() {
            @Override
            public double value(double d10) {
                for (int length = univariateDifferentiableFunctionArr.length - 1; length >= 0; length--) {
                    d10 = univariateDifferentiableFunctionArr[length].value(d10);
                }
                return d10;
            }

            @Override
            public DerivativeStructure value(DerivativeStructure derivativeStructure) {
                for (int length = univariateDifferentiableFunctionArr.length - 1; length >= 0; length--) {
                    derivativeStructure = univariateDifferentiableFunctionArr[length].value(derivativeStructure);
                }
                return derivativeStructure;
            }
        };
    }

    public static UnivariateDifferentiableFunction multiply(final UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new UnivariateDifferentiableFunction() {
            @Override
            public double value(double d10) {
                double value = univariateDifferentiableFunctionArr[0].value(d10);
                int i10 = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i10 >= univariateDifferentiableFunctionArr2.length) {
                        return value;
                    }
                    value *= univariateDifferentiableFunctionArr2[i10].value(d10);
                    i10++;
                }
            }

            @Override
            public DerivativeStructure value(DerivativeStructure derivativeStructure) {
                DerivativeStructure value = univariateDifferentiableFunctionArr[0].value(derivativeStructure);
                int i10 = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i10 >= univariateDifferentiableFunctionArr2.length) {
                        return value;
                    }
                    value = value.multiply(univariateDifferentiableFunctionArr2[i10].value(derivativeStructure));
                    i10++;
                }
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction add(final DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new DifferentiableUnivariateFunction() {
            @Override
            public UnivariateFunction derivative() {
                return new UnivariateFunction() {
                    @Override
                    public double value(double d10) {
                        double value = differentiableUnivariateFunctionArr[0].derivative().value(d10);
                        int i10 = 1;
                        while (true) {
                            DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                            if (i10 >= differentiableUnivariateFunctionArr2.length) {
                                return value;
                            }
                            value += differentiableUnivariateFunctionArr2[i10].derivative().value(d10);
                            i10++;
                        }
                    }
                };
            }

            @Override
            public double value(double d10) {
                double value = differentiableUnivariateFunctionArr[0].value(d10);
                int i10 = 1;
                while (true) {
                    DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                    if (i10 >= differentiableUnivariateFunctionArr2.length) {
                        return value;
                    }
                    value += differentiableUnivariateFunctionArr2[i10].value(d10);
                    i10++;
                }
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction compose(final DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new DifferentiableUnivariateFunction() {
            @Override
            public UnivariateFunction derivative() {
                return new UnivariateFunction() {
                    @Override
                    public double value(double d10) {
                        double d11 = 1.0d;
                        for (int length = differentiableUnivariateFunctionArr.length - 1; length >= 0; length--) {
                            d11 *= differentiableUnivariateFunctionArr[length].derivative().value(d10);
                            d10 = differentiableUnivariateFunctionArr[length].value(d10);
                        }
                        return d11;
                    }
                };
            }

            @Override
            public double value(double d10) {
                for (int length = differentiableUnivariateFunctionArr.length - 1; length >= 0; length--) {
                    d10 = differentiableUnivariateFunctionArr[length].value(d10);
                }
                return d10;
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction multiply(final DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new DifferentiableUnivariateFunction() {
            @Override
            public UnivariateFunction derivative() {
                return new UnivariateFunction() {
                    @Override
                    public double value(double d10) {
                        double d11 = 0.0d;
                        int i10 = 0;
                        while (true) {
                            DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                            if (i10 >= differentiableUnivariateFunctionArr2.length) {
                                return d11;
                            }
                            double value = differentiableUnivariateFunctionArr2[i10].derivative().value(d10);
                            int i11 = 0;
                            while (true) {
                                DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr3 = differentiableUnivariateFunctionArr;
                                if (i11 < differentiableUnivariateFunctionArr3.length) {
                                    if (i10 != i11) {
                                        value *= differentiableUnivariateFunctionArr3[i11].value(d10);
                                    }
                                    i11++;
                                }
                            }
                            d11 += value;
                            i10++;
                        }
                    }
                };
            }

            @Override
            public double value(double d10) {
                double value = differentiableUnivariateFunctionArr[0].value(d10);
                int i10 = 1;
                while (true) {
                    DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                    if (i10 >= differentiableUnivariateFunctionArr2.length) {
                        return value;
                    }
                    value *= differentiableUnivariateFunctionArr2[i10].value(d10);
                    i10++;
                }
            }
        };
    }
}
