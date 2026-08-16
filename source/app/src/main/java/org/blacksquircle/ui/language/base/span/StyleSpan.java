package org.blacksquircle.ui.language.base.span;

import androidx.annotation.ColorInt;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class StyleSpan {
    private boolean bold;
    private int color;
    private boolean italic;
    private boolean strikethrough;
    private boolean underline;

    public StyleSpan() {
        this(0, false, false, false, false, 31, null);
    }

    public static StyleSpan copy$default(StyleSpan styleSpan, int i10, boolean z10, boolean z11, boolean z12, boolean z13, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = styleSpan.color;
        }
        if ((i11 & 2) != 0) {
            z10 = styleSpan.bold;
        }
        boolean z14 = z10;
        if ((i11 & 4) != 0) {
            z11 = styleSpan.italic;
        }
        boolean z15 = z11;
        if ((i11 & 8) != 0) {
            z12 = styleSpan.underline;
        }
        boolean z16 = z12;
        if ((i11 & 16) != 0) {
            z13 = styleSpan.strikethrough;
        }
        return styleSpan.copy(i10, z14, z15, z16, z13);
    }

    public final int component1() {
        return this.color;
    }

    public final boolean component2() {
        return this.bold;
    }

    public final boolean component3() {
        return this.italic;
    }

    public final boolean component4() {
        return this.underline;
    }

    public final boolean component5() {
        return this.strikethrough;
    }

    @NotNull
    public final StyleSpan copy(@ColorInt int i10, boolean z10, boolean z11, boolean z12, boolean z13) {
        return new StyleSpan(i10, z10, z11, z12, z13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StyleSpan)) {
            return false;
        }
        StyleSpan styleSpan = (StyleSpan) obj;
        return this.color == styleSpan.color && this.bold == styleSpan.bold && this.italic == styleSpan.italic && this.underline == styleSpan.underline && this.strikethrough == styleSpan.strikethrough;
    }

    public final boolean getBold() {
        return this.bold;
    }

    public final int getColor() {
        return this.color;
    }

    public final boolean getItalic() {
        return this.italic;
    }

    public final boolean getStrikethrough() {
        return this.strikethrough;
    }

    public final boolean getUnderline() {
        return this.underline;
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.color) * 31) + Boolean.hashCode(this.bold)) * 31) + Boolean.hashCode(this.italic)) * 31) + Boolean.hashCode(this.underline)) * 31) + Boolean.hashCode(this.strikethrough);
    }

    public final void setBold(boolean z10) {
        this.bold = z10;
    }

    public final void setColor(int i10) {
        this.color = i10;
    }

    public final void setItalic(boolean z10) {
        this.italic = z10;
    }

    public final void setStrikethrough(boolean z10) {
        this.strikethrough = z10;
    }

    public final void setUnderline(boolean z10) {
        this.underline = z10;
    }

    @NotNull
    public String toString() {
        return "StyleSpan(color=" + this.color + ", bold=" + this.bold + ", italic=" + this.italic + ", underline=" + this.underline + ", strikethrough=" + this.strikethrough + ')';
    }

    public StyleSpan(@ColorInt int i10, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.color = i10;
        this.bold = z10;
        this.italic = z11;
        this.underline = z12;
        this.strikethrough = z13;
    }

    public StyleSpan(int i10, boolean z10, boolean z11, boolean z12, boolean z13, int i11, C14026x c14026x) {
        this((i11 & 1) != 0 ? -1 : i10, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? false : z11, (i11 & 8) != 0 ? false : z12, (i11 & 16) == 0 ? z13 : false);
    }
}
