package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/Predicate.class
 */
@FunctionalInterface
public interface Predicate<T> {
    boolean test(T t10);

    default Predicate<T> and(Predicate<? super T> other) {
        throw new RuntimeException("Stub!");
    }

    default Predicate<T> negate() {
        throw new RuntimeException("Stub!");
    }

    default Predicate<T> or(Predicate<? super T> other) {
        throw new RuntimeException("Stub!");
    }

    static <T> Predicate<T> isEqual(Object targetRef) {
        throw new RuntimeException("Stub!");
    }
}
