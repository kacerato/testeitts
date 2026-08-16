package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/BiConsumer.class
 */
@FunctionalInterface
public interface BiConsumer<T, U> {
    void accept(T t10, U u10);

    default BiConsumer<T, U> andThen(BiConsumer<? super T, ? super U> after) {
        throw new RuntimeException("Stub!");
    }
}
