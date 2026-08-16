package java.text;

import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/BreakIterator.class
 */
public abstract class BreakIterator implements Cloneable {
    public static final int DONE = -1;

    public abstract int first();

    public abstract int last();

    public abstract int next(int i10);

    public abstract int next();

    public abstract int previous();

    public abstract int following(int i10);

    public abstract int current();

    public abstract CharacterIterator getText();

    public abstract void setText(CharacterIterator characterIterator);

    protected BreakIterator() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    public int preceding(int offset) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBoundary(int offset) {
        throw new RuntimeException("Stub!");
    }

    public void setText(String newText) {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getWordInstance() {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getWordInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getLineInstance() {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getLineInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getCharacterInstance() {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getCharacterInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getSentenceInstance() {
        throw new RuntimeException("Stub!");
    }

    public static BreakIterator getSentenceInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized Locale[] getAvailableLocales() {
        throw new RuntimeException("Stub!");
    }
}
