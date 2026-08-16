package android.text;

import android.text.Layout;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/DynamicLayout.class
 */
public class DynamicLayout extends Layout {
    public DynamicLayout(CharSequence base, TextPaint paint, int width, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    public DynamicLayout(CharSequence base, CharSequence display, TextPaint paint, int width, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    public DynamicLayout(CharSequence base, CharSequence display, TextPaint paint, int width, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineTop(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineDescent(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineStart(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getLineContainsTab(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getParagraphDirection(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Layout.Directions getLineDirections(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getTopPadding() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBottomPadding() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsizedWidth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsisStart(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsisCount(int line) {
        throw new RuntimeException("Stub!");
    }

    public static final class Builder {
        Builder() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public static Builder obtain(@RecentlyNonNull CharSequence base, @RecentlyNonNull TextPaint paint, int width) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setDisplayText(@RecentlyNonNull CharSequence display) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setAlignment(@RecentlyNonNull Layout.Alignment alignment) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setTextDirection(@RecentlyNonNull TextDirectionHeuristic textDir) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setLineSpacing(float spacingAdd, float spacingMult) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setIncludePad(boolean includePad) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setUseLineSpacingFromFallbacks(boolean useLineSpacingFromFallbacks) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setEllipsizedWidth(int ellipsizedWidth) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEllipsize(@RecentlyNullable TextUtils.TruncateAt ellipsize) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setBreakStrategy(int breakStrategy) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setHyphenationFrequency(int hyphenationFrequency) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setJustificationMode(int justificationMode) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public DynamicLayout build() {
            throw new RuntimeException("Stub!");
        }
    }
}
