package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class HighamHall54FieldIntegrator<T extends RealFieldElement<T>> extends EmbeddedRungeKuttaFieldIntegrator<T> {
    private static final String METHOD_NAME = "Higham-Hall 5(4)";

    private final T[] f100273e;

    public HighamHall54FieldIntegrator(Field<T> field, double d10, double d11, double d12, double d13) {
        super(field, METHOD_NAME, -1, d10, d11, d12, d13);
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(field, 7));
        this.f100273e = tArr;
        tArr[0] = fraction(-1, 20);
        tArr[1] = field.getZero();
        tArr[2] = fraction(81, 160);
        tArr[3] = fraction(-6, 5);
        tArr[4] = fraction(25, 32);
        tArr[5] = fraction(1, 16);
        tArr[6] = fraction(-1, 10);
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
            RealFieldElement realFieldElement = (RealFieldElement) tArr[0][i10].multiply(this.f100273e[0]);
            int i12 = 1;
            while (true) {
                T[] tArr4 = this.f100273e;
                if (i12 >= tArr4.length) {
                    break;
                }
                realFieldElement = (RealFieldElement) realFieldElement.add((RealFieldElement) tArr[i12][i10].multiply(tArr4[i12]));
                i12++;
            }
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
        tArr[0][0] = fraction(2, 9);
        tArr[1][0] = fraction(1, 12);
        tArr[1][1] = fraction(1, 4);
        tArr[2][0] = fraction(1, 8);
        tArr[2][1] = getField().getZero();
        tArr[2][2] = fraction(3, 8);
        tArr[3][0] = fraction(91, 500);
        tArr[3][1] = fraction(-27, 100);
        tArr[3][2] = fraction(78, 125);
        tArr[3][3] = fraction(8, 125);
        tArr[4][0] = fraction(-11, 20);
        tArr[4][1] = fraction(27, 20);
        tArr[4][2] = fraction(12, 5);
        tArr[4][3] = fraction(-36, 5);
        tArr[4][4] = fraction(5, 1);
        tArr[5][0] = fraction(1, 12);
        tArr[5][1] = getField().getZero();
        tArr[5][2] = fraction(27, 32);
        tArr[5][3] = fraction(-4, 3);
        tArr[5][4] = fraction(125, 96);
        tArr[5][5] = fraction(5, 48);
        return tArr;
    }

    @Override
    public T[] getB() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 7));
        tArr[0] = fraction(1, 12);
        tArr[1] = getField().getZero();
        tArr[2] = fraction(27, 32);
        tArr[3] = fraction(-4, 3);
        tArr[4] = fraction(125, 96);
        tArr[5] = fraction(5, 48);
        tArr[6] = getField().getZero();
        return tArr;
    }

    @Override
    public T[] getC() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 6));
        tArr[0] = fraction(2, 9);
        tArr[1] = fraction(1, 3);
        tArr[2] = fraction(1, 2);
        tArr[3] = fraction(3, 5);
        tArr[4] = getField().getOne();
        tArr[5] = getField().getOne();
        return tArr;
    }

    @Override
    public int getOrder() {
        return 5;
    }

    @Override
    public HighamHall54FieldStepInterpolator<T> createInterpolator(boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new HighamHall54FieldStepInterpolator<>(getField(), z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }

    public HighamHall54FieldIntegrator(Field<T> field, double d10, double d11, double[] dArr, double[] dArr2) {
        super(field, METHOD_NAME, -1, d10, d11, dArr, dArr2);
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(field, 7));
        this.f100273e = tArr;
        tArr[0] = fraction(-1, 20);
        tArr[1] = field.getZero();
        tArr[2] = fraction(81, 160);
        tArr[3] = fraction(-6, 5);
        tArr[4] = fraction(25, 32);
        tArr[5] = fraction(1, 16);
        tArr[6] = fraction(-1, 10);
    }
}
