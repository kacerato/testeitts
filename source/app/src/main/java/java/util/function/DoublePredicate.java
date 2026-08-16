package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/DoublePredicate.class
 */
@FunctionalInterface
public interface DoublePredicate {
    boolean test(double d10);

    default DoublePredicate and(DoublePredicate other) {
        throw new RuntimeException("Stub!");
    }

    default DoublePredicate negate() {
        throw new RuntimeException("Stub!");
    }

    default DoublePredicate or(DoublePredicate other) {
        throw new RuntimeException("Stub!");
    }
}
