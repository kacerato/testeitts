package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/BiFunction.class
 */
@FunctionalInterface
public interface BiFunction<T, U, R> {
    R apply(T t10, U u10);

    default <V> BiFunction<T, U, V> andThen(Function<? super R, ? extends V> after) {
        throw new RuntimeException("Stub!");
    }
}
