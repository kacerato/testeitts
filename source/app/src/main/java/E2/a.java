package E2;

import java.math.BigDecimal;
import java.math.RoundingMode;

@e
@v2.c
public class a {

    public static class C0100a extends p<BigDecimal> {

        public static final C0100a f5360a = new C0100a();

        @Override
        public BigDecimal a(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
            return bigDecimal.subtract(bigDecimal2);
        }

        @Override
        public double c(BigDecimal bigDecimal) {
            return bigDecimal.doubleValue();
        }

        @Override
        public int d(BigDecimal bigDecimal) {
            return bigDecimal.signum();
        }

        @Override
        public BigDecimal e(double d10, RoundingMode roundingMode) {
            return new BigDecimal(d10);
        }
    }

    public static double a(BigDecimal bigDecimal, RoundingMode roundingMode) {
        return C0100a.f5360a.b(bigDecimal, roundingMode);
    }
}
