package org.blacksquircle.ui.language.base.span;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class SyntaxHighlightSpan extends CharacterStyle implements Comparable<SyntaxHighlightSpan> {
    private int end;

    @NotNull
    private final StyleSpan span;
    private int start;

    public SyntaxHighlightSpan(@NotNull StyleSpan span, int i10, int i11) {
        M.p(span, "span");
        this.span = span;
        this.start = i10;
        this.end = i11;
    }

    private final StyleSpan component1() {
        return this.span;
    }

    public static SyntaxHighlightSpan copy$default(SyntaxHighlightSpan syntaxHighlightSpan, StyleSpan styleSpan, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            styleSpan = syntaxHighlightSpan.span;
        }
        if ((i12 & 2) != 0) {
            i10 = syntaxHighlightSpan.start;
        }
        if ((i12 & 4) != 0) {
            i11 = syntaxHighlightSpan.end;
        }
        return syntaxHighlightSpan.copy(styleSpan, i10, i11);
    }

    public final int component2() {
        return this.start;
    }

    public final int component3() {
        return this.end;
    }

    @NotNull
    public final SyntaxHighlightSpan copy(@NotNull StyleSpan span, int i10, int i11) {
        M.p(span, "span");
        return new SyntaxHighlightSpan(span, i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SyntaxHighlightSpan)) {
            return false;
        }
        SyntaxHighlightSpan syntaxHighlightSpan = (SyntaxHighlightSpan) obj;
        return M.g(this.span, syntaxHighlightSpan.span) && this.start == syntaxHighlightSpan.start && this.end == syntaxHighlightSpan.end;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getStart() {
        return this.start;
    }

    public int hashCode() {
        return (((this.span.hashCode() * 31) + Integer.hashCode(this.start)) * 31) + Integer.hashCode(this.end);
    }

    public final void setEnd(int i10) {
        this.end = i10;
    }

    public final void setStart(int i10) {
        this.start = i10;
    }

    @NotNull
    public String toString() {
        return "SyntaxHighlightSpan(span=" + ((Object) this.span) + ", start=" + this.start + ", end=" + this.end + ')';
    }

    @Override
    public void updateDrawState(@Nullable TextPaint textPaint) {
        if (textPaint != null) {
            textPaint.setColor(this.span.getColor());
        }
        if (textPaint != null) {
            textPaint.setFakeBoldText(this.span.getBold());
        }
        if (textPaint != null) {
            textPaint.setUnderlineText(this.span.getUnderline());
        }
        if (this.span.getItalic() && textPaint != null) {
            textPaint.setTextSkewX(-0.1f);
        }
        if (!this.span.getStrikethrough() || textPaint == null) {
            return;
        }
        textPaint.setFlags(16);
    }

    @Override
    public int compareTo(@NotNull SyntaxHighlightSpan other) {
        M.p(other, "other");
        return this.start - other.start;
    }
}
