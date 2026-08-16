package org.apache.commons.math3.analysis.polynomials;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;

public class PolynomialsUtils {
    private static final List<BigFraction> CHEBYSHEV_COEFFICIENTS;
    private static final List<BigFraction> HERMITE_COEFFICIENTS;
    private static final Map<JacobiKey, List<BigFraction>> JACOBI_COEFFICIENTS;
    private static final List<BigFraction> LAGUERRE_COEFFICIENTS;
    private static final List<BigFraction> LEGENDRE_COEFFICIENTS;

    public static class JacobiKey {

        private final int f100138v;

        private final int f100139w;

        public JacobiKey(int i10, int i11) {
            this.f100138v = i10;
            this.f100139w = i11;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof JacobiKey)) {
                return false;
            }
            JacobiKey jacobiKey = (JacobiKey) obj;
            return this.f100138v == jacobiKey.f100138v && this.f100139w == jacobiKey.f100139w;
        }

        public int hashCode() {
            return (this.f100138v << 16) ^ this.f100139w;
        }
    }

    public interface RecurrenceCoefficientsGenerator {
        BigFraction[] generate(int i10);
    }

    static {
        ArrayList arrayList = new ArrayList();
        CHEBYSHEV_COEFFICIENTS = arrayList;
        BigFraction bigFraction = BigFraction.ONE;
        arrayList.add(bigFraction);
        BigFraction bigFraction2 = BigFraction.ZERO;
        arrayList.add(bigFraction2);
        arrayList.add(bigFraction);
        ArrayList arrayList2 = new ArrayList();
        HERMITE_COEFFICIENTS = arrayList2;
        arrayList2.add(bigFraction);
        arrayList2.add(bigFraction2);
        arrayList2.add(BigFraction.TWO);
        ArrayList arrayList3 = new ArrayList();
        LAGUERRE_COEFFICIENTS = arrayList3;
        arrayList3.add(bigFraction);
        arrayList3.add(bigFraction);
        arrayList3.add(BigFraction.MINUS_ONE);
        ArrayList arrayList4 = new ArrayList();
        LEGENDRE_COEFFICIENTS = arrayList4;
        arrayList4.add(bigFraction);
        arrayList4.add(bigFraction2);
        arrayList4.add(bigFraction);
        JACOBI_COEFFICIENTS = new HashMap();
    }

    private PolynomialsUtils() {
    }

    private static PolynomialFunction buildPolynomial(int i10, List<BigFraction> list, RecurrenceCoefficientsGenerator recurrenceCoefficientsGenerator) {
        synchronized (list) {
            try {
                int floor = ((int) FastMath.floor(FastMath.sqrt(list.size() * 2))) - 1;
                if (i10 > floor) {
                    computeUpToDegree(i10, floor, recurrenceCoefficientsGenerator, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int i11 = i10 + 1;
        int i12 = (i10 * i11) / 2;
        double[] dArr = new double[i11];
        for (int i13 = 0; i13 <= i10; i13++) {
            dArr[i13] = list.get(i12 + i13).doubleValue();
        }
        return new PolynomialFunction(dArr);
    }

    private static void computeUpToDegree(int i10, int i11, RecurrenceCoefficientsGenerator recurrenceCoefficientsGenerator, List<BigFraction> list) {
        int i12 = ((i11 - 1) * i11) / 2;
        while (i11 < i10) {
            int i13 = i12 + i11;
            BigFraction[] generate = recurrenceCoefficientsGenerator.generate(i11);
            BigFraction bigFraction = list.get(i13);
            list.add(bigFraction.multiply(generate[0]).subtract(list.get(i12).multiply(generate[2])));
            int i14 = 1;
            while (i14 < i11) {
                BigFraction bigFraction2 = list.get(i13 + i14);
                list.add(bigFraction2.multiply(generate[0]).add(bigFraction.multiply(generate[1])).subtract(list.get(i12 + i14).multiply(generate[2])));
                i14++;
                bigFraction = bigFraction2;
            }
            BigFraction bigFraction3 = list.get(i13 + i11);
            list.add(bigFraction3.multiply(generate[0]).add(bigFraction.multiply(generate[1])));
            list.add(bigFraction3.multiply(generate[1]));
            i11++;
            i12 = i13;
        }
    }

    public static PolynomialFunction createChebyshevPolynomial(int i10) {
        return buildPolynomial(i10, CHEBYSHEV_COEFFICIENTS, new RecurrenceCoefficientsGenerator() {
            private final BigFraction[] coeffs = {BigFraction.ZERO, BigFraction.TWO, BigFraction.ONE};

            @Override
            public BigFraction[] generate(int i11) {
                return this.coeffs;
            }
        });
    }

    public static PolynomialFunction createHermitePolynomial(int i10) {
        return buildPolynomial(i10, HERMITE_COEFFICIENTS, new RecurrenceCoefficientsGenerator() {
            @Override
            public BigFraction[] generate(int i11) {
                return new BigFraction[]{BigFraction.ZERO, BigFraction.TWO, new BigFraction(i11 * 2)};
            }
        });
    }

    public static PolynomialFunction createJacobiPolynomial(int i10, final int i11, final int i12) {
        JacobiKey jacobiKey = new JacobiKey(i11, i12);
        Map<JacobiKey, List<BigFraction>> map = JACOBI_COEFFICIENTS;
        if (!map.containsKey(jacobiKey)) {
            ArrayList arrayList = new ArrayList();
            map.put(jacobiKey, arrayList);
            arrayList.add(BigFraction.ONE);
            arrayList.add(new BigFraction(i11 - i12, 2));
            arrayList.add(new BigFraction(i11 + 2 + i12, 2));
        }
        return buildPolynomial(i10, map.get(jacobiKey), new RecurrenceCoefficientsGenerator() {
            @Override
            public BigFraction[] generate(int i13) {
                int i14 = i13 + 1;
                int i15 = i11 + i14 + i12;
                int i16 = i15 + i14;
                int i17 = i16 - 1;
                int i18 = i16 - 2;
                int i19 = i14 * 2 * i15 * i18;
                int i20 = i11;
                int i21 = i12;
                return new BigFraction[]{new BigFraction(((i20 * i20) - (i21 * i21)) * i17, i19), new BigFraction(i17 * i16 * i18, i19), new BigFraction(((i11 + i14) - 1) * 2 * ((i14 + i12) - 1) * i16, i19)};
            }
        });
    }

    public static PolynomialFunction createLaguerrePolynomial(int i10) {
        return buildPolynomial(i10, LAGUERRE_COEFFICIENTS, new RecurrenceCoefficientsGenerator() {
            @Override
            public BigFraction[] generate(int i11) {
                int i12 = i11 + 1;
                return new BigFraction[]{new BigFraction((i11 * 2) + 1, i12), new BigFraction(-1, i12), new BigFraction(i11, i12)};
            }
        });
    }

    public static PolynomialFunction createLegendrePolynomial(int i10) {
        return buildPolynomial(i10, LEGENDRE_COEFFICIENTS, new RecurrenceCoefficientsGenerator() {
            @Override
            public BigFraction[] generate(int i11) {
                int i12 = i11 + 1;
                return new BigFraction[]{BigFraction.ZERO, new BigFraction(i11 + i12, i12), new BigFraction(i11, i12)};
            }
        });
    }

    public static double[] shift(double[] dArr, double d10) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, length, length);
        for (int i10 = 0; i10 < length; i10++) {
            for (int i11 = 0; i11 <= i10; i11++) {
                iArr[i10][i11] = (int) CombinatoricsUtils.binomialCoefficient(i10, i11);
            }
        }
        for (int i12 = 0; i12 < length; i12++) {
            dArr2[0] = dArr2[0] + (dArr[i12] * FastMath.pow(d10, i12));
        }
        int i13 = length - 1;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i14;
            while (i15 < i13) {
                int i16 = i14 + 1;
                int i17 = i15 + 1;
                dArr2[i16] = dArr2[i16] + (iArr[i17][r3] * dArr[i17] * FastMath.pow(d10, i15 - i14));
                i15 = i17;
            }
        }
        return dArr2;
    }
}
