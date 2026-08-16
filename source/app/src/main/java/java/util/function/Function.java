package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/Function.class
 */
@FunctionalInterface
public interface Function<T, R> {
    R apply(T t10);

    default <V> Function<V, R> compose(Function<? super V, ? extends T> before) {
        throw new RuntimeException("Stub!");
    }

    default <V> Function<T, V> andThen(Function<? super R, ? extends V> after) {
        throw new RuntimeException("Stub!");
    }

    static <T> Function<T, T> identity() {
        throw new RuntimeException("Stub!");
    }
}
