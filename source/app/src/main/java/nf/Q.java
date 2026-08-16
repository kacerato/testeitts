package nf;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;

public class Q {
    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal a(BigDecimal bigDecimal) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        BigDecimal subtract = bigDecimal.subtract(BigDecimal.ONE);
        kotlin.jvm.internal.M.o(subtract, "subtract(...)");
        return subtract;
    }

    @Ef.f
    public static final BigDecimal b(BigDecimal bigDecimal, BigDecimal other) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigDecimal divide = bigDecimal.divide(other, RoundingMode.HALF_EVEN);
        kotlin.jvm.internal.M.o(divide, "divide(...)");
        return divide;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal c(BigDecimal bigDecimal) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        BigDecimal add = bigDecimal.add(BigDecimal.ONE);
        kotlin.jvm.internal.M.o(add, "add(...)");
        return add;
    }

    @Ef.f
    public static final BigDecimal d(BigDecimal bigDecimal, BigDecimal other) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigDecimal subtract = bigDecimal.subtract(other);
        kotlin.jvm.internal.M.o(subtract, "subtract(...)");
        return subtract;
    }

    @Ef.f
    public static final BigDecimal e(BigDecimal bigDecimal, BigDecimal other) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigDecimal add = bigDecimal.add(other);
        kotlin.jvm.internal.M.o(add, "add(...)");
        return add;
    }

    @Ef.f
    public static final BigDecimal f(BigDecimal bigDecimal, BigDecimal other) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigDecimal remainder = bigDecimal.remainder(other);
        kotlin.jvm.internal.M.o(remainder, "remainder(...)");
        return remainder;
    }

    @Ef.f
    public static final BigDecimal g(BigDecimal bigDecimal, BigDecimal other) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigDecimal multiply = bigDecimal.multiply(other);
        kotlin.jvm.internal.M.o(multiply, "multiply(...)");
        return multiply;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal h(double d10) {
        return new BigDecimal(String.valueOf(d10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal i(double d10, MathContext mathContext) {
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        return new BigDecimal(String.valueOf(d10), mathContext);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal j(float f10) {
        return new BigDecimal(String.valueOf(f10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal k(float f10, MathContext mathContext) {
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        return new BigDecimal(String.valueOf(f10), mathContext);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal l(int i10) {
        BigDecimal valueOf = BigDecimal.valueOf(i10);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        return valueOf;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal m(int i10, MathContext mathContext) {
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        return new BigDecimal(i10, mathContext);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal n(long j10) {
        BigDecimal valueOf = BigDecimal.valueOf(j10);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        return valueOf;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal o(long j10, MathContext mathContext) {
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        return new BigDecimal(j10, mathContext);
    }

    @Ef.f
    public static final BigDecimal p(BigDecimal bigDecimal) {
        kotlin.jvm.internal.M.p(bigDecimal, "<this>");
        BigDecimal negate = bigDecimal.negate();
        kotlin.jvm.internal.M.o(negate, "negate(...)");
        return negate;
    }
}
