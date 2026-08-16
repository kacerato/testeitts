package android.icu.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/ValueIterator.class
 */
public interface ValueIterator {
    boolean next(Element element);

    void reset();

    void setRange(int i10, int i11);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/ValueIterator$Element.class
 */
    public static final class Element {
        public int integer;
        public Object value;

        public Element() {
            throw new RuntimeException("Stub!");
        }
    }
}
