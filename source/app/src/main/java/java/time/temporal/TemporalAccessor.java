package java.time.temporal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/TemporalAccessor.class
 */
public interface TemporalAccessor {
    boolean isSupported(TemporalField temporalField);

    long getLong(TemporalField temporalField);

    default ValueRange range(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    default int get(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    default <R> R query(TemporalQuery<R> query) {
        throw new RuntimeException("Stub!");
    }
}
