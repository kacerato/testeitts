package android.icu.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/Replaceable.class
 */
public interface Replaceable {
    int length();

    char charAt(int i10);

    int char32At(int i10);

    void getChars(int i10, int i11, char[] cArr, int i12);

    void replace(int i10, int i11, String str);

    void replace(int i10, int i11, char[] cArr, int i12, int i13);

    void copy(int i10, int i11, int i12);

    boolean hasMetaData();
}
