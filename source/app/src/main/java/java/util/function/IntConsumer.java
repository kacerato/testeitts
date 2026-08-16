package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/IntConsumer.class
 */
@FunctionalInterface
public interface IntConsumer {
    void accept(int i10);

    default IntConsumer andThen(IntConsumer after) {
        throw new RuntimeException("Stub!");
    }
}
