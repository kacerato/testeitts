package android.text;

import android.text.Layout;
import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/StaticLayout.class
 */
public class StaticLayout extends Layout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/StaticLayout$Builder.class
 */
    public static final class Builder {
        Builder() {
            throw new RuntimeException("Stub!");
        }

        public static Builder obtain(CharSequence source, int start, int end, TextPaint paint, int width) {
            throw new RuntimeException("Stub!");
        }

        public Builder setText(CharSequence source) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAlignment(Layout.Alignment alignment) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTextDirection(TextDirectionHeuristic textDir) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLineSpacing(float spacingAdd, float spacingMult) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIncludePad(boolean includePad) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEllipsizedWidth(int ellipsizedWidth) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEllipsize(TextUtils.TruncateAt ellipsize) {
            throw new RuntimeException("Stub!");
        }

        public Builder setMaxLines(int maxLines) {
            throw new RuntimeException("Stub!");
        }

        public Builder setBreakStrategy(int breakStrategy) {
            throw new RuntimeException("Stub!");
        }

        public Builder setHyphenationFrequency(int hyphenationFrequency) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIndents(int[] leftIndents, int[] rightIndents) {
            throw new RuntimeException("Stub!");
        }

        public Builder setJustificationMode(int justificationMode) {
            throw new RuntimeException("Stub!");
        }

        public StaticLayout build() {
            throw new RuntimeException("Stub!");
        }

        protected void finalize() throws Throwable {
            throw new RuntimeException("Stub!");
        }
    }

    public StaticLayout(CharSequence source, TextPaint paint, int width, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    public StaticLayout(CharSequence source, int bufstart, int bufend, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    public StaticLayout(CharSequence source, int bufstart, int bufend, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineForVertical(int vertical) {
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
    public int getParagraphDirection(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getLineContainsTab(int line) {
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
    public int getEllipsisCount(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsisStart(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsizedWidth() {
        throw new RuntimeException("Stub!");
    }
}
