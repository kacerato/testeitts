package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/TextWatcher.class
 */
public interface TextWatcher extends NoCopySpan {
    void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12);

    void onTextChanged(CharSequence charSequence, int i10, int i11, int i12);

    void afterTextChanged(Editable editable);
}
