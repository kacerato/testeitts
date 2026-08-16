package android.icu.text;

import java.text.CharacterIterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/UCharacterIterator.class
 */
public abstract class UCharacterIterator implements Cloneable {
    public static final int DONE = -1;

    public abstract int current();

    public abstract int getLength();

    public abstract int getIndex();

    public abstract int next();

    public abstract int previous();

    public abstract void setIndex(int i10);

    public abstract int getText(char[] cArr, int i10);

    protected UCharacterIterator() {
        throw new RuntimeException("Stub!");
    }

    public static final UCharacterIterator getInstance(Replaceable source) {
        throw new RuntimeException("Stub!");
    }

    public static final UCharacterIterator getInstance(String source) {
        throw new RuntimeException("Stub!");
    }

    public static final UCharacterIterator getInstance(char[] source) {
        throw new RuntimeException("Stub!");
    }

    public static final UCharacterIterator getInstance(char[] source, int start, int limit) {
        throw new RuntimeException("Stub!");
    }

    public static final UCharacterIterator getInstance(StringBuffer source) {
        throw new RuntimeException("Stub!");
    }

    public static final UCharacterIterator getInstance(CharacterIterator source) {
        throw new RuntimeException("Stub!");
    }

    public CharacterIterator getCharacterIterator() {
        throw new RuntimeException("Stub!");
    }

    public int currentCodePoint() {
        throw new RuntimeException("Stub!");
    }

    public int nextCodePoint() {
        throw new RuntimeException("Stub!");
    }

    public int previousCodePoint() {
        throw new RuntimeException("Stub!");
    }

    public void setToLimit() {
        throw new RuntimeException("Stub!");
    }

    public void setToStart() {
        throw new RuntimeException("Stub!");
    }

    public final int getText(char[] fillIn) {
        throw new RuntimeException("Stub!");
    }

    public String getText() {
        throw new RuntimeException("Stub!");
    }

    public int moveIndex(int delta) {
        throw new RuntimeException("Stub!");
    }

    public int moveCodePointIndex(int delta) {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
