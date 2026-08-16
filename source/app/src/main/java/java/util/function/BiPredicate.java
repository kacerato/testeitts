package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/BiPredicate.class
 */
@FunctionalInterface
public interface BiPredicate<T, U> {
    boolean test(T t10, U u10);

    default BiPredicate<T, U> and(BiPredicate<? super T, ? super U> other) {
        throw new RuntimeException("Stub!");
    }

    default BiPredicate<T, U> negate() {
        throw new RuntimeException("Stub!");
    }

    default BiPredicate<T, U> or(BiPredicate<? super T, ? super U> other) {
        throw new RuntimeException("Stub!");
    }
}
