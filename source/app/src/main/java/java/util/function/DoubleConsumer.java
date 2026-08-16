package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/DoubleConsumer.class
 */
@FunctionalInterface
public interface DoubleConsumer {
    void accept(double d10);

    default DoubleConsumer andThen(DoubleConsumer after) {
        throw new RuntimeException("Stub!");
    }
}
