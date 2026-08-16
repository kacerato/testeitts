package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/DoubleUnaryOperator.class
 */
@FunctionalInterface
public interface DoubleUnaryOperator {
    double applyAsDouble(double d10);

    default DoubleUnaryOperator compose(DoubleUnaryOperator before) {
        throw new RuntimeException("Stub!");
    }

    default DoubleUnaryOperator andThen(DoubleUnaryOperator after) {
        throw new RuntimeException("Stub!");
    }

    static DoubleUnaryOperator identity() {
        throw new RuntimeException("Stub!");
    }
}
