package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/LongUnaryOperator.class
 */
@FunctionalInterface
public interface LongUnaryOperator {
    long applyAsLong(long j10);

    default LongUnaryOperator compose(LongUnaryOperator before) {
        throw new RuntimeException("Stub!");
    }

    default LongUnaryOperator andThen(LongUnaryOperator after) {
        throw new RuntimeException("Stub!");
    }

    static LongUnaryOperator identity() {
        throw new RuntimeException("Stub!");
    }
}
