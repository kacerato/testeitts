package java.util.concurrent.atomic;

import java.io.Serializable;
import java.util.function.DoubleBinaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/atomic/DoubleAccumulator.class
 */
public class DoubleAccumulator extends Striped64 implements Serializable {
    public DoubleAccumulator(DoubleBinaryOperator accumulatorFunction, double identity) {
        throw new RuntimeException("Stub!");
    }

    public void accumulate(double x10) {
        throw new RuntimeException("Stub!");
    }

    public double get() {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public double getThenReset() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public double doubleValue() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long longValue() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int intValue() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float floatValue() {
        throw new RuntimeException("Stub!");
    }
}
