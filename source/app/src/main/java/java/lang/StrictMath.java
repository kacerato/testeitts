package java.lang;

import E2.d;
import java.lang.FdLibm;
import java.util.Random;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/StrictMath.class
 */
public final class StrictMath {

    public static final double f92797E = 2.718281828459045d;
    public static final double PI = 3.141592653589793d;
    public static final double TAU = 6.283185307179586d;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !StrictMath.class.desiredAssertionStatus();
    }

    private StrictMath() {
    }

    public static double sin(double a10) {
        return FdLibm.Sin.compute(a10);
    }

    public static double cos(double a10) {
        return FdLibm.Cos.compute(a10);
    }

    public static double tan(double a10) {
        return FdLibm.Tan.compute(a10);
    }

    public static double asin(double a10) {
        return FdLibm.Asin.compute(a10);
    }

    public static double acos(double a10) {
        return FdLibm.Acos.compute(a10);
    }

    public static double atan(double a10) {
        return FdLibm.Atan.compute(a10);
    }

    public static double toRadians(double angdeg) {
        return Math.toRadians(angdeg);
    }

    public static double toDegrees(double angrad) {
        return Math.toDegrees(angrad);
    }

    public static double exp(double a10) {
        return FdLibm.Exp.compute(a10);
    }

    public static double log(double a10) {
        return FdLibm.Log.compute(a10);
    }

    public static double log10(double a10) {
        return FdLibm.Log10.compute(a10);
    }

    @IntrinsicCandidate
    public static double sqrt(double a10) {
        return FdLibm.Sqrt.compute(a10);
    }

    public static double cbrt(double a10) {
        return FdLibm.Cbrt.compute(a10);
    }

    public static double IEEEremainder(double f12, double f22) {
        return FdLibm.IEEEremainder.compute(f12, f22);
    }

    public static double ceil(double a10) {
        return floorOrCeil(a10, -0.0d, 1.0d, 1.0d);
    }

    public static double floor(double a10) {
        return floorOrCeil(a10, -1.0d, 0.0d, -1.0d);
    }

    private static double floorOrCeil(double a10, double negativeBoundary, double positiveBoundary, double sign) {
        int exponent = Math.getExponent(a10);
        if (exponent < 0) {
            return a10 == 0.0d ? a10 : a10 < 0.0d ? negativeBoundary : positiveBoundary;
        }
        if (exponent >= 52) {
            return a10;
        }
        if (!$assertionsDisabled && (exponent < 0 || exponent > 51)) {
            throw new AssertionError();
        }
        long doppel = Double.doubleToRawLongBits(a10);
        long mask = d.f5375a >> exponent;
        if ((mask & doppel) == 0) {
            return a10;
        }
        double result = Double.longBitsToDouble(doppel & (mask ^ (-1)));
        if (sign * a10 > 0.0d) {
            result += sign;
        }
        return result;
    }

    public static double rint(double a10) {
        double sign = Math.copySign(1.0d, a10);
        double a11 = Math.abs(a10);
        if (a11 < 4.503599627370496E15d) {
            a11 = (4.503599627370496E15d + a11) - 4.503599627370496E15d;
        }
        return sign * a11;
    }

    public static double atan2(double y10, double x10) {
        return FdLibm.Atan2.compute(y10, x10);
    }

    public static double pow(double a10, double b10) {
        return FdLibm.Pow.compute(a10, b10);
    }

    public static int round(float a10) {
        return Math.round(a10);
    }

    public static long round(double a10) {
        return Math.round(a10);
    }

    private static final class RandomNumberGeneratorHolder {
        static final Random randomNumberGenerator = new Random();

        private RandomNumberGeneratorHolder() {
        }
    }

    public static double random() {
        return RandomNumberGeneratorHolder.randomNumberGenerator.nextDouble();
    }

    public static int addExact(int x10, int y10) {
        return Math.addExact(x10, y10);
    }

    public static long addExact(long x10, long y10) {
        return Math.addExact(x10, y10);
    }

    public static int subtractExact(int x10, int y10) {
        return Math.subtractExact(x10, y10);
    }

    public static long subtractExact(long x10, long y10) {
        return Math.subtractExact(x10, y10);
    }

    public static int multiplyExact(int x10, int y10) {
        return Math.multiplyExact(x10, y10);
    }

    public static long multiplyExact(long x10, int y10) {
        return Math.multiplyExact(x10, y10);
    }

    public static long multiplyExact(long x10, long y10) {
        return Math.multiplyExact(x10, y10);
    }

    public static int divideExact(int x10, int y10) {
        return Math.divideExact(x10, y10);
    }

    public static long divideExact(long x10, long y10) {
        return Math.divideExact(x10, y10);
    }

    public static int floorDivExact(int x10, int y10) {
        return Math.floorDivExact(x10, y10);
    }

    public static long floorDivExact(long x10, long y10) {
        return Math.floorDivExact(x10, y10);
    }

    public static int ceilDivExact(int x10, int y10) {
        return Math.ceilDivExact(x10, y10);
    }

    public static long ceilDivExact(long x10, long y10) {
        return Math.ceilDivExact(x10, y10);
    }

    public static int incrementExact(int a10) {
        return Math.incrementExact(a10);
    }

    public static long incrementExact(long a10) {
        return Math.incrementExact(a10);
    }

    public static int decrementExact(int a10) {
        return Math.decrementExact(a10);
    }

    public static long decrementExact(long a10) {
        return Math.decrementExact(a10);
    }

    public static int negateExact(int a10) {
        return Math.negateExact(a10);
    }

    public static long negateExact(long a10) {
        return Math.negateExact(a10);
    }

    public static int toIntExact(long value) {
        return Math.toIntExact(value);
    }

    public static long multiplyFull(int x10, int y10) {
        return Math.multiplyFull(x10, y10);
    }

    public static long multiplyHigh(long x10, long y10) {
        return Math.multiplyHigh(x10, y10);
    }

    public static long unsignedMultiplyHigh(long x10, long y10) {
        return Math.unsignedMultiplyHigh(x10, y10);
    }

    public static int floorDiv(int x10, int y10) {
        return Math.floorDiv(x10, y10);
    }

    public static long floorDiv(long x10, int y10) {
        return Math.floorDiv(x10, y10);
    }

    public static long floorDiv(long x10, long y10) {
        return Math.floorDiv(x10, y10);
    }

    public static int floorMod(int x10, int y10) {
        return Math.floorMod(x10, y10);
    }

    public static int floorMod(long x10, int y10) {
        return Math.floorMod(x10, y10);
    }

    public static long floorMod(long x10, long y10) {
        return Math.floorMod(x10, y10);
    }

    public static int ceilDiv(int x10, int y10) {
        return Math.ceilDiv(x10, y10);
    }

    public static long ceilDiv(long x10, int y10) {
        return Math.ceilDiv(x10, y10);
    }

    public static long ceilDiv(long x10, long y10) {
        return Math.ceilDiv(x10, y10);
    }

    public static int ceilMod(int x10, int y10) {
        return Math.ceilMod(x10, y10);
    }

    public static int ceilMod(long x10, int y10) {
        return Math.ceilMod(x10, y10);
    }

    public static long ceilMod(long x10, long y10) {
        return Math.ceilMod(x10, y10);
    }

    public static int abs(int a10) {
        return Math.abs(a10);
    }

    public static int absExact(int a10) {
        return Math.absExact(a10);
    }

    public static long abs(long a10) {
        return Math.abs(a10);
    }

    public static long absExact(long a10) {
        return Math.absExact(a10);
    }

    public static float abs(float a10) {
        return Math.abs(a10);
    }

    public static double abs(double a10) {
        return Math.abs(a10);
    }

    @IntrinsicCandidate
    public static int max(int a10, int b10) {
        return Math.max(a10, b10);
    }

    public static long max(long a10, long b10) {
        return Math.max(a10, b10);
    }

    @IntrinsicCandidate
    public static float max(float a10, float b10) {
        return Math.max(a10, b10);
    }

    @IntrinsicCandidate
    public static double max(double a10, double b10) {
        return Math.max(a10, b10);
    }

    @IntrinsicCandidate
    public static int min(int a10, int b10) {
        return Math.min(a10, b10);
    }

    public static long min(long a10, long b10) {
        return Math.min(a10, b10);
    }

    @IntrinsicCandidate
    public static float min(float a10, float b10) {
        return Math.min(a10, b10);
    }

    @IntrinsicCandidate
    public static double min(double a10, double b10) {
        return Math.min(a10, b10);
    }

    public static int clamp(long value, int min, int max) {
        return Math.clamp(value, min, max);
    }

    public static long clamp(long value, long min, long max) {
        return Math.clamp(value, min, max);
    }

    public static double clamp(double value, double min, double max) {
        return Math.clamp(value, min, max);
    }

    public static float clamp(float value, float min, float max) {
        return Math.clamp(value, min, max);
    }

    public static double fma(double a10, double b10, double c10) {
        return Math.fma(a10, b10, c10);
    }

    public static float fma(float a10, float b10, float c10) {
        return Math.fma(a10, b10, c10);
    }

    public static double ulp(double d10) {
        return Math.ulp(d10);
    }

    public static float ulp(float f10) {
        return Math.ulp(f10);
    }

    public static double signum(double d10) {
        return Math.signum(d10);
    }

    public static float signum(float f10) {
        return Math.signum(f10);
    }

    public static double sinh(double x10) {
        return FdLibm.Sinh.compute(x10);
    }

    public static double cosh(double x10) {
        return FdLibm.Cosh.compute(x10);
    }

    public static double tanh(double x10) {
        return FdLibm.Tanh.compute(x10);
    }

    public static double hypot(double x10, double y10) {
        return FdLibm.Hypot.compute(x10, y10);
    }

    public static double expm1(double x10) {
        return FdLibm.Expm1.compute(x10);
    }

    public static double log1p(double x10) {
        return FdLibm.Log1p.compute(x10);
    }

    public static double copySign(double magnitude, double sign) {
        return Math.copySign(magnitude, Double.isNaN(sign) ? 1.0d : sign);
    }

    public static float copySign(float magnitude, float sign) {
        return Math.copySign(magnitude, Float.isNaN(sign) ? 1.0f : sign);
    }

    public static int getExponent(float f10) {
        return Math.getExponent(f10);
    }

    public static int getExponent(double d10) {
        return Math.getExponent(d10);
    }

    public static double nextAfter(double start, double direction) {
        return Math.nextAfter(start, direction);
    }

    public static float nextAfter(float start, double direction) {
        return Math.nextAfter(start, direction);
    }

    public static double nextUp(double d10) {
        return Math.nextUp(d10);
    }

    public static float nextUp(float f10) {
        return Math.nextUp(f10);
    }

    public static double nextDown(double d10) {
        return Math.nextDown(d10);
    }

    public static float nextDown(float f10) {
        return Math.nextDown(f10);
    }

    public static double scalb(double d10, int scaleFactor) {
        return Math.scalb(d10, scaleFactor);
    }

    public static float scalb(float f10, int scaleFactor) {
        return Math.scalb(f10, scaleFactor);
    }

    public static int unsignedMultiplyExact(int x10, int y10) {
        return Math.unsignedMultiplyExact(x10, y10);
    }

    public static long unsignedMultiplyExact(long x10, int y10) {
        return Math.unsignedMultiplyExact(x10, y10);
    }

    public static long unsignedMultiplyExact(long x10, long y10) {
        return Math.unsignedMultiplyExact(x10, y10);
    }

    public static int powExact(int x10, int n10) {
        return Math.powExact(x10, n10);
    }

    public static int unsignedPowExact(int x10, int n10) {
        return Math.unsignedPowExact(x10, n10);
    }

    public static long powExact(long x10, int n10) {
        return Math.powExact(x10, n10);
    }

    public static long unsignedPowExact(long x10, int n10) {
        return Math.unsignedPowExact(x10, n10);
    }
}
