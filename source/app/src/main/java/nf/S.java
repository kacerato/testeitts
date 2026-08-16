package nf;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;

public class S extends Q {
    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger A(BigInteger bigInteger, int i10) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        BigInteger shiftRight = bigInteger.shiftRight(i10);
        kotlin.jvm.internal.M.o(shiftRight, "shiftRight(...)");
        return shiftRight;
    }

    @Ef.f
    public static final BigInteger B(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger multiply = bigInteger.multiply(other);
        kotlin.jvm.internal.M.o(multiply, "multiply(...)");
        return multiply;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal C(BigInteger bigInteger) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        return new BigDecimal(bigInteger);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal D(BigInteger bigInteger, int i10, MathContext mathContext) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        return new BigDecimal(bigInteger, i10, mathContext);
    }

    public static BigDecimal E(BigInteger bigInteger, int i10, MathContext mathContext, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            mathContext = MathContext.UNLIMITED;
            kotlin.jvm.internal.M.o(mathContext, "UNLIMITED");
        }
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        return new BigDecimal(bigInteger, i10, mathContext);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger F(int i10) {
        BigInteger valueOf = BigInteger.valueOf(i10);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        return valueOf;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger G(long j10) {
        BigInteger valueOf = BigInteger.valueOf(j10);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        return valueOf;
    }

    @Ef.f
    public static final BigInteger H(BigInteger bigInteger) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        BigInteger negate = bigInteger.negate();
        kotlin.jvm.internal.M.o(negate, "negate(...)");
        return negate;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger I(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger xor = bigInteger.xor(other);
        kotlin.jvm.internal.M.o(xor, "xor(...)");
        return xor;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger q(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger and = bigInteger.and(other);
        kotlin.jvm.internal.M.o(and, "and(...)");
        return and;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger r(BigInteger bigInteger) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        BigInteger subtract = bigInteger.subtract(BigInteger.ONE);
        kotlin.jvm.internal.M.o(subtract, "subtract(...)");
        return subtract;
    }

    @Ef.f
    public static final BigInteger s(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger divide = bigInteger.divide(other);
        kotlin.jvm.internal.M.o(divide, "divide(...)");
        return divide;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger t(BigInteger bigInteger) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        BigInteger add = bigInteger.add(BigInteger.ONE);
        kotlin.jvm.internal.M.o(add, "add(...)");
        return add;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger u(BigInteger bigInteger) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        BigInteger not = bigInteger.not();
        kotlin.jvm.internal.M.o(not, "not(...)");
        return not;
    }

    @Ef.f
    public static final BigInteger v(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger subtract = bigInteger.subtract(other);
        kotlin.jvm.internal.M.o(subtract, "subtract(...)");
        return subtract;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger w(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger or = bigInteger.or(other);
        kotlin.jvm.internal.M.o(or, "or(...)");
        return or;
    }

    @Ef.f
    public static final BigInteger x(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger add = bigInteger.add(other);
        kotlin.jvm.internal.M.o(add, "add(...)");
        return add;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final BigInteger y(BigInteger bigInteger, BigInteger other) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        BigInteger remainder = bigInteger.remainder(other);
        kotlin.jvm.internal.M.o(remainder, "remainder(...)");
        return remainder;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger z(BigInteger bigInteger, int i10) {
        kotlin.jvm.internal.M.p(bigInteger, "<this>");
        BigInteger shiftLeft = bigInteger.shiftLeft(i10);
        kotlin.jvm.internal.M.o(shiftLeft, "shiftLeft(...)");
        return shiftLeft;
    }
}
