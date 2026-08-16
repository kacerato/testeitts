package android.icu.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/RangeValueIterator.class
 */
public interface RangeValueIterator {
    boolean next(Element element);

    void reset();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/RangeValueIterator$Element.class
 */
    public static class Element {
        public int limit;
        public int start;
        public int value;

        public Element() {
            throw new RuntimeException("Stub!");
        }
    }
}
