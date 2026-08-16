package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/IntPredicate.class
 */
@FunctionalInterface
public interface IntPredicate {
    boolean test(int i10);

    default IntPredicate and(IntPredicate other) {
        throw new RuntimeException("Stub!");
    }

    default IntPredicate negate() {
        throw new RuntimeException("Stub!");
    }

    default IntPredicate or(IntPredicate other) {
        throw new RuntimeException("Stub!");
    }
}
