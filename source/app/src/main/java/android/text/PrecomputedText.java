package android.text;

import android.graphics.Rect;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public class PrecomputedText implements Spannable {
    PrecomputedText() {
        throw new RuntimeException("Stub!");
    }

    public static PrecomputedText create(@RecentlyNonNull CharSequence text, @RecentlyNonNull Params params) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public Params getParams() {
        throw new RuntimeException("Stub!");
    }

    public int getParagraphCount() {
        throw new RuntimeException("Stub!");
    }

    public int getParagraphStart(int paraIndex) {
        throw new RuntimeException("Stub!");
    }

    public int getParagraphEnd(int paraIndex) {
        throw new RuntimeException("Stub!");
    }

    public float getWidth(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public void getBounds(int start, int end, @RecentlyNonNull Rect bounds) {
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
    public <T> T[] getSpans(int start, int end, Class<T> type) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanStart(Object tag) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanEnd(Object tag) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanFlags(Object tag) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int nextSpanTransition(int start, int limit, Class type) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int length() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public char charAt(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence subSequence(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static final class Params {
        Params(@RecentlyNonNull TextPaint paint, @RecentlyNonNull TextDirectionHeuristic textDir, int strategy, int frequency) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public TextPaint getTextPaint() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public TextDirectionHeuristic getTextDirection() {
            throw new RuntimeException("Stub!");
        }

        public int getBreakStrategy() {
            throw new RuntimeException("Stub!");
        }

        public int getHyphenationFrequency() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(@RecentlyNullable Object o10) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        public static class Builder {
            public Builder(@RecentlyNonNull TextPaint paint) {
                throw new RuntimeException("Stub!");
            }

            public Builder setBreakStrategy(int strategy) {
                throw new RuntimeException("Stub!");
            }

            public Builder setHyphenationFrequency(int frequency) {
                throw new RuntimeException("Stub!");
            }

            public Builder setTextDirection(@RecentlyNonNull TextDirectionHeuristic textDir) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Params build() {
                throw new RuntimeException("Stub!");
            }
        }
    }
}
