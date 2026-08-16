package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/LongPredicate.class
 */
@FunctionalInterface
public interface LongPredicate {
    boolean test(long j10);

    default LongPredicate and(LongPredicate other) {
        throw new RuntimeException("Stub!");
    }

    default LongPredicate negate() {
        throw new RuntimeException("Stub!");
    }

    default LongPredicate or(LongPredicate other) {
        throw new RuntimeException("Stub!");
    }
}
