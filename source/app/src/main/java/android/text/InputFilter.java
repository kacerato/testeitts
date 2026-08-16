package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/InputFilter.class
 */
public interface InputFilter {
    CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/InputFilter$AllCaps.class
 */
    public static class AllCaps implements InputFilter {
        public AllCaps() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/InputFilter$LengthFilter.class
 */
    public static class LengthFilter implements InputFilter {
        public LengthFilter(int max) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            throw new RuntimeException("Stub!");
        }

        public int getMax() {
            throw new RuntimeException("Stub!");
        }
    }
}
