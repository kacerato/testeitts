package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/AndroidCharacter.class
 */
@Deprecated
public class AndroidCharacter {
    public static final int EAST_ASIAN_WIDTH_AMBIGUOUS = 1;
    public static final int EAST_ASIAN_WIDTH_FULL_WIDTH = 3;
    public static final int EAST_ASIAN_WIDTH_HALF_WIDTH = 2;
    public static final int EAST_ASIAN_WIDTH_NARROW = 4;
    public static final int EAST_ASIAN_WIDTH_NEUTRAL = 0;
    public static final int EAST_ASIAN_WIDTH_WIDE = 5;

    public static native void getDirectionalities(char[] cArr, byte[] bArr, int i10);

    public static native int getEastAsianWidth(char c10);

    public static native void getEastAsianWidths(char[] cArr, int i10, int i11, byte[] bArr);

    public static native boolean mirror(char[] cArr, int i10, int i11);

    public static native char getMirror(char c10);

    public AndroidCharacter() {
        throw new RuntimeException("Stub!");
    }
}
