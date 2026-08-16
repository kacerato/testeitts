package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/Spannable.class
 */
public interface Spannable extends Spanned {
    void setSpan(Object obj, int i10, int i11, int i12);

    void removeSpan(Object obj);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/Spannable$Factory.class
 */
    public static class Factory {
        public Factory() {
            throw new RuntimeException("Stub!");
        }

        public static Factory getInstance() {
            throw new RuntimeException("Stub!");
        }

        public Spannable newSpannable(CharSequence source) {
            throw new RuntimeException("Stub!");
        }
    }
}
