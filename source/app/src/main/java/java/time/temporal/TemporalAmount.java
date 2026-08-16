package java.time.temporal;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/TemporalAmount.class
 */
public interface TemporalAmount {
    long get(TemporalUnit temporalUnit);

    List<TemporalUnit> getUnits();

    Temporal addTo(Temporal temporal);

    Temporal subtractFrom(Temporal temporal);
}
