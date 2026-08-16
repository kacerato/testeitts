package android.icu.text;

import android.icu.text.UnicodeSet;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/UnicodeSetSpanner.class
 */
public class UnicodeSetSpanner {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/UnicodeSetSpanner$CountMethod.class
 */
    public enum CountMethod {
        MIN_ELEMENTS,
        WHOLE_SPAN
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/UnicodeSetSpanner$TrimOption.class
 */
    public enum TrimOption {
        BOTH,
        LEADING,
        TRAILING
    }

    public UnicodeSetSpanner(UnicodeSet source) {
        throw new RuntimeException("Stub!");
    }

    public UnicodeSet getUnicodeSet() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object other) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public int countIn(CharSequence sequence) {
        throw new RuntimeException("Stub!");
    }

    public int countIn(CharSequence sequence, CountMethod countMethod) {
        throw new RuntimeException("Stub!");
    }

    public int countIn(CharSequence sequence, CountMethod countMethod, UnicodeSet.SpanCondition spanCondition) {
        throw new RuntimeException("Stub!");
    }

    public String deleteFrom(CharSequence sequence) {
        throw new RuntimeException("Stub!");
    }

    public String deleteFrom(CharSequence sequence, UnicodeSet.SpanCondition spanCondition) {
        throw new RuntimeException("Stub!");
    }

    public String replaceFrom(CharSequence sequence, CharSequence replacement) {
        throw new RuntimeException("Stub!");
    }

    public String replaceFrom(CharSequence sequence, CharSequence replacement, CountMethod countMethod) {
        throw new RuntimeException("Stub!");
    }

    public String replaceFrom(CharSequence sequence, CharSequence replacement, CountMethod countMethod, UnicodeSet.SpanCondition spanCondition) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence trim(CharSequence sequence) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence trim(CharSequence sequence, TrimOption trimOption) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence trim(CharSequence sequence, TrimOption trimOption, UnicodeSet.SpanCondition spanCondition) {
        throw new RuntimeException("Stub!");
    }
}
