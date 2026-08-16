package android.text;

import android.graphics.Paint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/SpannableStringBuilder.class
 */
public class SpannableStringBuilder implements CharSequence, GetChars, Spannable, Editable, Appendable {
    public SpannableStringBuilder() {
        throw new RuntimeException("Stub!");
    }

    public SpannableStringBuilder(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public SpannableStringBuilder(CharSequence text, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public static SpannableStringBuilder valueOf(CharSequence source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public char charAt(int where) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int length() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder insert(int where, CharSequence tb2, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder insert(int where, CharSequence tb2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder delete(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clearSpans() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder append(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public SpannableStringBuilder append(CharSequence text, Object what, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder append(CharSequence text, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder append(char text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder replace(int start, int end, CharSequence tb2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SpannableStringBuilder replace(int start, int end, CharSequence tb2, int tbstart, int tbend) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSpan(Object what, int start, int end, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeSpan(Object what) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanStart(Object what) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanEnd(Object what) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanFlags(Object what) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> T[] getSpans(int queryStart, int queryEnd, Class<T> kind) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int nextSpanTransition(int start, int limit, Class kind) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence subSequence(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getChars(int start, int end, char[] dest, int destoff) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public int getTextWatcherDepth() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int getTextRunCursor(int contextStart, int contextEnd, int dir, int offset, int cursorOpt, Paint p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setFilters(InputFilter[] filters) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputFilter[] getFilters() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
