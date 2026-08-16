package java.time.temporal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/TemporalQuery.class
 */
@FunctionalInterface
public interface TemporalQuery<R> {
    R queryFrom(TemporalAccessor temporalAccessor);
}
