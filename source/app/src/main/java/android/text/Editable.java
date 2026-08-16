package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/Editable.class
 */
public interface Editable extends CharSequence, GetChars, Spannable, Appendable {
    Editable replace(int i10, int i11, CharSequence charSequence, int i12, int i13);

    Editable replace(int i10, int i11, CharSequence charSequence);

    Editable insert(int i10, CharSequence charSequence, int i11, int i12);

    Editable insert(int i10, CharSequence charSequence);

    Editable delete(int i10, int i11);

    @Override
    Editable append(CharSequence charSequence);

    @Override
    Editable append(CharSequence charSequence, int i10, int i11);

    @Override
    Editable append(char c10);

    void clear();

    void clearSpans();

    void setFilters(InputFilter[] inputFilterArr);

    InputFilter[] getFilters();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/Editable$Factory.class
 */
    public static class Factory {
        public Factory() {
            throw new RuntimeException("Stub!");
        }

        public static Factory getInstance() {
            throw new RuntimeException("Stub!");
        }

        public Editable newEditable(CharSequence source) {
            throw new RuntimeException("Stub!");
        }
    }
}
