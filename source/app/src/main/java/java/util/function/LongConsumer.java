package java.util.function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/LongConsumer.class
 */
@FunctionalInterface
public interface LongConsumer {
    void accept(long j10);

    default LongConsumer andThen(LongConsumer after) {
        throw new RuntimeException("Stub!");
    }
}
