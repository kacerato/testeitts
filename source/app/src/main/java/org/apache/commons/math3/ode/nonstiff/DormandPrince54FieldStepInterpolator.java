package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

class DormandPrince54FieldStepInterpolator<T extends RealFieldElement<T>> extends RungeKuttaFieldStepInterpolator<T> {
    private final T a70;
    private final T a72;
    private final T a73;
    private final T a74;
    private final T a75;

    private final T f100241d0;

    private final T f100242d2;

    private final T f100243d3;

    private final T f100244d4;

    private final T f100245d5;

    private final T f100246d6;

    public DormandPrince54FieldStepInterpolator(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        T one = field.getOne();
        this.a70 = (T) ((RealFieldElement) one.multiply(35.0d)).divide(384.0d);
        this.a72 = (T) ((RealFieldElement) one.multiply(500.0d)).divide(1113.0d);
        this.a73 = (T) ((RealFieldElement) one.multiply(125.0d)).divide(192.0d);
        this.a74 = (T) ((RealFieldElement) one.multiply(-2187.0d)).divide(6784.0d);
        this.a75 = (T) ((RealFieldElement) one.multiply(11.0d)).divide(84.0d);
        this.f100241d0 = (T) ((RealFieldElement) one.multiply(-1.2715105075E10d)).divide(1.1282082432E10d);
        this.f100242d2 = (T) ((RealFieldElement) one.multiply(8.74874797E10d)).divide(3.2700410799E10d);
        this.f100243d3 = (T) ((RealFieldElement) one.multiply(-1.0690763975E10d)).divide(1.880347072E9d);
        this.f100244d4 = (T) ((RealFieldElement) one.multiply(7.01980252875E11d)).divide(1.99316789632E11d);
        this.f100245d5 = (T) ((RealFieldElement) one.multiply(-1.453857185E9d)).divide(8.22651844E8d);
        this.f100246d6 = (T) ((RealFieldElement) one.multiply(6.9997945E7d)).divide(2.9380423E7d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t10, T t11, T t12, T t13) {
        RealFieldElement[] currentStateLinearCombination;
        RealFieldElement[] derivativeLinearCombination;
        RealFieldElement realFieldElement = (RealFieldElement) t10.getField().getOne();
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.subtract(t11);
        RealFieldElement realFieldElement3 = (RealFieldElement) t11.multiply(2);
        RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElement.subtract(realFieldElement3);
        RealFieldElement realFieldElement5 = (RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(-3)).add(2.0d));
        RealFieldElement realFieldElement6 = (RealFieldElement) realFieldElement3.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(realFieldElement3.subtract(3.0d))).add(1.0d));
        if (getGlobalPreviousState() == null || t11.getReal() > 0.5d) {
            RealFieldElement realFieldElement7 = (RealFieldElement) t13.negate();
            RealFieldElement realFieldElement8 = (RealFieldElement) t13.multiply(t11);
            RealFieldElement realFieldElement9 = (RealFieldElement) realFieldElement8.multiply(t11);
            RealFieldElement realFieldElement10 = (RealFieldElement) realFieldElement9.multiply(realFieldElement2);
            RealFieldElement realFieldElement11 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.a70)).subtract((RealFieldElement) realFieldElement8.multiply((RealFieldElement) this.a70.subtract(1.0d)))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) this.a70.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement10.multiply(this.f100241d0));
            RealFieldElement realFieldElement12 = (RealFieldElement) t10.getField().getZero();
            RealFieldElement realFieldElement13 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.a72)).subtract((RealFieldElement) realFieldElement8.multiply(this.a72))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.a72.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f100242d2));
            RealFieldElement realFieldElement14 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.a73)).subtract((RealFieldElement) realFieldElement8.multiply(this.a73))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.a73.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f100243d3));
            RealFieldElement realFieldElement15 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.a74)).subtract((RealFieldElement) realFieldElement8.multiply(this.a74))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.a74.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f100244d4));
            RealFieldElement realFieldElement16 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.a75)).subtract((RealFieldElement) realFieldElement8.multiply(this.a75))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.a75.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f100245d5));
            RealFieldElement realFieldElement17 = (RealFieldElement) ((RealFieldElement) realFieldElement10.multiply(this.f100246d6)).subtract(realFieldElement9);
            T t14 = this.a70;
            RealFieldElement realFieldElement18 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t14.subtract(realFieldElement4.multiply((RealFieldElement) t14.subtract(1.0d)))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) ((RealFieldElement) this.a70.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement6.multiply(this.f100241d0));
            RealFieldElement realFieldElement19 = (RealFieldElement) t10.getField().getZero();
            T t15 = this.a72;
            RealFieldElement realFieldElement20 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t15.subtract(realFieldElement4.multiply(t15))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a72.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100242d2));
            T t16 = this.a73;
            RealFieldElement realFieldElement21 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t16.subtract(realFieldElement4.multiply(t16))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a73.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100243d3));
            T t17 = this.a74;
            RealFieldElement realFieldElement22 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t17.subtract(realFieldElement4.multiply(t17))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a74.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100244d4));
            T t18 = this.a75;
            RealFieldElement realFieldElement23 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t18.subtract(realFieldElement4.multiply(t18))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a75.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100245d5));
            RealFieldElement realFieldElement24 = (RealFieldElement) ((RealFieldElement) realFieldElement6.multiply(this.f100246d6)).subtract(realFieldElement5);
            currentStateLinearCombination = currentStateLinearCombination(realFieldElement11, realFieldElement12, realFieldElement13, realFieldElement14, realFieldElement15, realFieldElement16, realFieldElement17);
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement18, realFieldElement19, realFieldElement20, realFieldElement21, realFieldElement22, realFieldElement23, realFieldElement24);
        } else {
            RealFieldElement realFieldElement25 = (RealFieldElement) t12.multiply(realFieldElement2);
            RealFieldElement realFieldElement26 = (RealFieldElement) realFieldElement25.multiply(t11);
            RealFieldElement realFieldElement27 = (RealFieldElement) realFieldElement26.multiply(realFieldElement2);
            RealFieldElement realFieldElement28 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(this.a70)).subtract((RealFieldElement) realFieldElement25.multiply((RealFieldElement) this.a70.subtract(1.0d)))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) ((RealFieldElement) this.a70.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement27.multiply(this.f100241d0));
            RealFieldElement realFieldElement29 = (RealFieldElement) t10.getField().getZero();
            RealFieldElement realFieldElement30 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(this.a72)).subtract((RealFieldElement) realFieldElement25.multiply(this.a72))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.a72.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f100242d2));
            RealFieldElement realFieldElement31 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(this.a73)).subtract((RealFieldElement) realFieldElement25.multiply(this.a73))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.a73.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f100243d3));
            RealFieldElement realFieldElement32 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(this.a74)).subtract((RealFieldElement) realFieldElement25.multiply(this.a74))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.a74.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f100244d4));
            RealFieldElement realFieldElement33 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(this.a75)).subtract((RealFieldElement) realFieldElement25.multiply(this.a75))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.a75.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f100245d5));
            RealFieldElement realFieldElement34 = (RealFieldElement) ((RealFieldElement) realFieldElement27.multiply(this.f100246d6)).subtract(realFieldElement26);
            T t19 = this.a70;
            RealFieldElement realFieldElement35 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t19.subtract(realFieldElement4.multiply((RealFieldElement) t19.subtract(1.0d)))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) ((RealFieldElement) this.a70.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement6.multiply(this.f100241d0));
            RealFieldElement realFieldElement36 = (RealFieldElement) t10.getField().getZero();
            T t20 = this.a72;
            RealFieldElement realFieldElement37 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t20.subtract(realFieldElement4.multiply(t20))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a72.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100242d2));
            T t21 = this.a73;
            RealFieldElement realFieldElement38 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t21.subtract(realFieldElement4.multiply(t21))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a73.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100243d3));
            T t22 = this.a74;
            RealFieldElement realFieldElement39 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t22.subtract(realFieldElement4.multiply(t22))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a74.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100244d4));
            T t23 = this.a75;
            RealFieldElement realFieldElement40 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t23.subtract(realFieldElement4.multiply(t23))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.a75.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f100245d5));
            RealFieldElement realFieldElement41 = (RealFieldElement) ((RealFieldElement) realFieldElement6.multiply(this.f100246d6)).subtract(realFieldElement5);
            currentStateLinearCombination = previousStateLinearCombination(realFieldElement28, realFieldElement29, realFieldElement30, realFieldElement31, realFieldElement32, realFieldElement33, realFieldElement34);
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement35, realFieldElement36, realFieldElement37, realFieldElement38, realFieldElement39, realFieldElement40, realFieldElement41);
        }
        return new FieldODEStateAndDerivative<>(t10, currentStateLinearCombination, derivativeLinearCombination);
    }

    @Override
    public DormandPrince54FieldStepInterpolator<T> create(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new DormandPrince54FieldStepInterpolator<>(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
