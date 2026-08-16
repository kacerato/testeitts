package android.icu.text;

import android.icu.util.ULocale;
import java.text.CharacterIterator;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/StringSearch.class
 */
public final class StringSearch extends SearchIterator {
    public StringSearch(String pattern, CharacterIterator target, RuleBasedCollator collator, BreakIterator breakiter) {
        super((CharacterIterator) null, (BreakIterator) null);
        throw new RuntimeException("Stub!");
    }

    public StringSearch(String pattern, CharacterIterator target, RuleBasedCollator collator) {
        super((CharacterIterator) null, (BreakIterator) null);
        throw new RuntimeException("Stub!");
    }

    public StringSearch(String pattern, CharacterIterator target, Locale locale) {
        super((CharacterIterator) null, (BreakIterator) null);
        throw new RuntimeException("Stub!");
    }

    public StringSearch(String pattern, CharacterIterator target, ULocale locale) {
        super((CharacterIterator) null, (BreakIterator) null);
        throw new RuntimeException("Stub!");
    }

    public StringSearch(String pattern, String target) {
        super((CharacterIterator) null, (BreakIterator) null);
        throw new RuntimeException("Stub!");
    }

    public RuleBasedCollator getCollator() {
        throw new RuntimeException("Stub!");
    }

    public void setCollator(RuleBasedCollator collator) {
        throw new RuntimeException("Stub!");
    }

    public String getPattern() {
        throw new RuntimeException("Stub!");
    }

    public void setPattern(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public boolean isCanonical() {
        throw new RuntimeException("Stub!");
    }

    public void setCanonical(boolean allowCanonical) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTarget(CharacterIterator text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getIndex() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setIndex(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void reset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int handleNext(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int handlePrevious(int position) {
        throw new RuntimeException("Stub!");
    }
}
