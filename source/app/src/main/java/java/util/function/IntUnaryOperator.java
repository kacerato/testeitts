package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/IntUnaryOperator.class
 */
@FunctionalInterface
public interface IntUnaryOperator {
    int applyAsInt(int i10);

    default IntUnaryOperator compose(IntUnaryOperator before) {
        throw new RuntimeException("Stub!");
    }

    default IntUnaryOperator andThen(IntUnaryOperator after) {
        throw new RuntimeException("Stub!");
    }

    static IntUnaryOperator identity() {
        throw new RuntimeException("Stub!");
    }
}
