package android.test;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/PerformanceTestCase.class
 */
@Deprecated
public interface PerformanceTestCase {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/PerformanceTestCase$Intermediates.class
 */
    public interface Intermediates {
        void setInternalIterations(int i10);

        void startTiming(boolean z10);

        void addIntermediate(String str);

        void addIntermediate(String str, long j10);

        void finishTiming(boolean z10);
    }

    int startPerformance(Intermediates intermediates);

    boolean isPerformanceOnly();
}
