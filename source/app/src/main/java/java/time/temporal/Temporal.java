package java.time.temporal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/Temporal.class
 */
public interface Temporal extends TemporalAccessor {
    boolean isSupported(TemporalUnit temporalUnit);

    Temporal with(TemporalField temporalField, long j10);

    Temporal plus(long j10, TemporalUnit temporalUnit);

    long until(Temporal temporal, TemporalUnit temporalUnit);

    default Temporal with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    default Temporal plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    default Temporal minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    default Temporal minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }
}
