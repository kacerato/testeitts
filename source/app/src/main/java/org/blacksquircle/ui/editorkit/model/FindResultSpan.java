package org.blacksquircle.ui.editorkit.model;

import android.text.style.BackgroundColorSpan;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.language.base.span.StyleSpan;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FindResultSpan extends BackgroundColorSpan {
    private int end;

    @NotNull
    private final StyleSpan span;
    private int start;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindResultSpan(@NotNull StyleSpan span, int i10, int i11) {
        super(span.getColor());
        M.p(span, "span");
        this.span = span;
        this.start = i10;
        this.end = i11;
    }

    private final StyleSpan component1() {
        return this.span;
    }

    public static FindResultSpan copy$default(FindResultSpan findResultSpan, StyleSpan styleSpan, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            styleSpan = findResultSpan.span;
        }
        if ((i12 & 2) != 0) {
            i10 = findResultSpan.start;
        }
        if ((i12 & 4) != 0) {
            i11 = findResultSpan.end;
        }
        return findResultSpan.copy(styleSpan, i10, i11);
    }

    public final int component2() {
        return this.start;
    }

    public final int component3() {
        return this.end;
    }

    @NotNull
    public final FindResultSpan copy(@NotNull StyleSpan span, int i10, int i11) {
        M.p(span, "span");
        return new FindResultSpan(span, i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FindResultSpan)) {
            return false;
        }
        FindResultSpan findResultSpan = (FindResultSpan) obj;
        return M.g(this.span, findResultSpan.span) && this.start == findResultSpan.start && this.end == findResultSpan.end;
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
        return "FindResultSpan(span=" + ((Object) this.span) + ", start=" + this.start + ", end=" + this.end + ')';
    }
}
