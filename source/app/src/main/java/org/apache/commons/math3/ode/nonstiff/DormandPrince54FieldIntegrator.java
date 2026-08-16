package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class DormandPrince54FieldIntegrator<T extends RealFieldElement<T>> extends EmbeddedRungeKuttaFieldIntegrator<T> {
    private static final String METHOD_NAME = "Dormand-Prince 5(4)";

    private final T f100235e1;

    private final T f100236e3;

    private final T f100237e4;

    private final T f100238e5;

    private final T f100239e6;

    private final T f100240e7;

    public DormandPrince54FieldIntegrator(Field<T> field, double d10, double d11, double d12, double d13) {
        super(field, METHOD_NAME, 6, d10, d11, d12, d13);
        this.f100235e1 = fraction(71, 57600);
        this.f100236e3 = fraction(-71, 16695);
        this.f100237e4 = fraction(71, 1920);
        this.f100238e5 = fraction(-17253, 339200);
        this.f100239e6 = fraction(22, 525);
        this.f100240e7 = fraction(-1, 40);
    }

    @Override
    public T estimateError(T[][] tArr, T[] tArr2, T[] tArr3, T t10) {
        T zero = getField().getZero();
        int i10 = 0;
        while (true) {
            int i11 = this.mainSetDimension;
            if (i10 >= i11) {
                return (T) ((RealFieldElement) zero.divide(i11)).sqrt();
            }
            RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][i10].multiply(this.f100235e1)).add((RealFieldElement) tArr[2][i10].multiply(this.f100236e3))).add((RealFieldElement) tArr[3][i10].multiply(this.f100237e4))).add((RealFieldElement) tArr[4][i10].multiply(this.f100238e5))).add((RealFieldElement) tArr[5][i10].multiply(this.f100239e6))).add((RealFieldElement) tArr[6][i10].multiply(this.f100240e7));
            RealFieldElement max = MathUtils.max((RealFieldElement) tArr2[i10].abs(), (RealFieldElement) tArr3[i10].abs());
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) t10.multiply(realFieldElement)).divide((RealFieldElement) (this.vecAbsoluteTolerance == null ? ((RealFieldElement) max.multiply(this.scalRelativeTolerance)).add(this.scalAbsoluteTolerance) : ((RealFieldElement) max.multiply(this.vecRelativeTolerance[i10])).add(this.vecAbsoluteTolerance[i10])));
            zero = (T) zero.add(realFieldElement2.multiply(realFieldElement2));
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[][] getA() {
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(getField(), 6, -1));
        int i10 = 0;
        while (i10 < tArr.length) {
            int i11 = i10 + 1;
            tArr[i10] = (RealFieldElement[]) MathArrays.buildArray(getField(), i11);
            i10 = i11;
        }
        tArr[0][0] = fraction(1, 5);
        tArr[1][0] = fraction(3, 40);
        tArr[1][1] = fraction(9, 40);
        tArr[2][0] = fraction(44, 45);
        tArr[2][1] = fraction(-56, 15);
        tArr[2][2] = fraction(32, 9);
        tArr[3][0] = fraction(19372, 6561);
        tArr[3][1] = fraction(-25360, 2187);
        tArr[3][2] = fraction(64448, 6561);
        tArr[3][3] = fraction(-212, 729);
        tArr[4][0] = fraction(9017, 3168);
        tArr[4][1] = fraction(-355, 33);
        tArr[4][2] = fraction(46732, 5247);
        tArr[4][3] = fraction(49, 176);
        tArr[4][4] = fraction(-5103, 18656);
        tArr[5][0] = fraction(35, 384);
        tArr[5][1] = getField().getZero();
        tArr[5][2] = fraction(500, 1113);
        tArr[5][3] = fraction(125, 192);
        tArr[5][4] = fraction(-2187, 6784);
        tArr[5][5] = fraction(11, 84);
        return tArr;
    }

    @Override
    public T[] getB() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 7));
        tArr[0] = fraction(35, 384);
        tArr[1] = getField().getZero();
        tArr[2] = fraction(500, 1113);
        tArr[3] = fraction(125, 192);
        tArr[4] = fraction(-2187, 6784);
        tArr[5] = fraction(11, 84);
        tArr[6] = getField().getZero();
        return tArr;
    }

    @Override
    public T[] getC() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 6));
        tArr[0] = fraction(1, 5);
        tArr[1] = fraction(3, 10);
        tArr[2] = fraction(4, 5);
        tArr[3] = fraction(8, 9);
        tArr[4] = getField().getOne();
        tArr[5] = getField().getOne();
        return tArr;
    }

    @Override
    public int getOrder() {
        return 5;
    }

    @Override
    public DormandPrince54FieldStepInterpolator<T> createInterpolator(boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new DormandPrince54FieldStepInterpolator<>(getField(), z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }

    public DormandPrince54FieldIntegrator(Field<T> field, double d10, double d11, double[] dArr, double[] dArr2) {
        super(field, METHOD_NAME, 6, d10, d11, dArr, dArr2);
        this.f100235e1 = fraction(71, 57600);
        this.f100236e3 = fraction(-71, 16695);
        this.f100237e4 = fraction(71, 1920);
        this.f100238e5 = fraction(-17253, 339200);
        this.f100239e6 = fraction(22, 525);
        this.f100240e7 = fraction(-1, 40);
    }
}
