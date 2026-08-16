package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import androidx.core.text.PrecomputedTextCompat;
import java.util.stream.IntStream;

public class UnprecomputeTextOnModificationSpannable implements Spannable {
    private Spannable mDelegate;
    private boolean mSafeToWrite = false;

    public static class CharSequenceHelper_API24 {
        private CharSequenceHelper_API24() {
        }

        public static IntStream chars(CharSequence charSequence) {
            return charSequence.chars();
        }

        public static IntStream codePoints(CharSequence charSequence) {
            return charSequence.codePoints();
        }
    }

    public static class PrecomputedTextDetector {
        public boolean isPrecomputedText(CharSequence charSequence) {
            return charSequence instanceof PrecomputedTextCompat;
        }
    }

    public static class PrecomputedTextDetector_28 extends PrecomputedTextDetector {
        @Override
        public boolean isPrecomputedText(CharSequence charSequence) {
            return androidx.core.text.b.a(charSequence) || (charSequence instanceof PrecomputedTextCompat);
        }
    }

    public UnprecomputeTextOnModificationSpannable(Spannable spannable) {
        this.mDelegate = spannable;
    }

    private void ensureSafeWrites() {
        Spannable spannable = this.mDelegate;
        if (!this.mSafeToWrite && precomputedTextDetector().isPrecomputedText(spannable)) {
            this.mDelegate = new SpannableString(spannable);
        }
        this.mSafeToWrite = true;
    }

    public static PrecomputedTextDetector precomputedTextDetector() {
        return Build.VERSION.SDK_INT < 28 ? new PrecomputedTextDetector() : new PrecomputedTextDetector_28();
    }

    @Override
    public char charAt(int i10) {
        return this.mDelegate.charAt(i10);
    }

    @Override
    public IntStream chars() {
        return CharSequenceHelper_API24.chars(this.mDelegate);
    }

    @Override
    public IntStream codePoints() {
        return CharSequenceHelper_API24.codePoints(this.mDelegate);
    }

    @Override
    public int getSpanEnd(Object obj) {
        return this.mDelegate.getSpanEnd(obj);
    }

    @Override
    public int getSpanFlags(Object obj) {
        return this.mDelegate.getSpanFlags(obj);
    }

    @Override
    public int getSpanStart(Object obj) {
        return this.mDelegate.getSpanStart(obj);
    }

    @Override
    public <T> T[] getSpans(int i10, int i11, Class<T> cls) {
        return (T[]) this.mDelegate.getSpans(i10, i11, cls);
    }

    public Spannable getUnwrappedSpannable() {
        return this.mDelegate;
    }

    @Override
    public int length() {
        return this.mDelegate.length();
    }

    @Override
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.mDelegate.nextSpanTransition(i10, i11, cls);
    }

    @Override
    public void removeSpan(Object obj) {
        ensureSafeWrites();
        this.mDelegate.removeSpan(obj);
    }

    @Override
    public void setSpan(Object obj, int i10, int i11, int i12) {
        ensureSafeWrites();
        this.mDelegate.setSpan(obj, i10, i11, i12);
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        return this.mDelegate.subSequence(i10, i11);
    }

    @Override
    public String toString() {
        return this.mDelegate.toString();
    }

    public UnprecomputeTextOnModificationSpannable(Spanned spanned) {
        this.mDelegate = new SpannableString(spanned);
    }

    public UnprecomputeTextOnModificationSpannable(CharSequence charSequence) {
        this.mDelegate = new SpannableString(charSequence);
    }
}
