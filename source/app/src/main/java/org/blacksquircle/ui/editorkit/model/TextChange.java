package org.blacksquircle.ui.editorkit.model;

import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class TextChange {

    @NotNull
    private String newText;

    @NotNull
    private String oldText;
    private int start;

    public TextChange(@NotNull String newText, @NotNull String oldText, int i10) {
        M.p(newText, "newText");
        M.p(oldText, "oldText");
        this.newText = newText;
        this.oldText = oldText;
        this.start = i10;
    }

    public static TextChange copy$default(TextChange textChange, String str, String str2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = textChange.newText;
        }
        if ((i11 & 2) != 0) {
            str2 = textChange.oldText;
        }
        if ((i11 & 4) != 0) {
            i10 = textChange.start;
        }
        return textChange.copy(str, str2, i10);
    }

    @NotNull
    public final String component1() {
        return this.newText;
    }

    @NotNull
    public final String component2() {
        return this.oldText;
    }

    public final int component3() {
        return this.start;
    }

    @NotNull
    public final TextChange copy(@NotNull String newText, @NotNull String oldText, int i10) {
        M.p(newText, "newText");
        M.p(oldText, "oldText");
        return new TextChange(newText, oldText, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextChange)) {
            return false;
        }
        TextChange textChange = (TextChange) obj;
        return M.g(this.newText, textChange.newText) && M.g(this.oldText, textChange.oldText) && this.start == textChange.start;
    }

    @NotNull
    public final String getNewText() {
        return this.newText;
    }

    @NotNull
    public final String getOldText() {
        return this.oldText;
    }

    public final int getStart() {
        return this.start;
    }

    public int hashCode() {
        return (((this.newText.hashCode() * 31) + this.oldText.hashCode()) * 31) + Integer.hashCode(this.start);
    }

    public final void setNewText(@NotNull String str) {
        M.p(str, "<set-?>");
        this.newText = str;
    }

    public final void setOldText(@NotNull String str) {
        M.p(str, "<set-?>");
        this.oldText = str;
    }

    public final void setStart(int i10) {
        this.start = i10;
    }

    @NotNull
    public String toString() {
        return "TextChange(newText=" + this.newText + ", oldText=" + this.oldText + ", start=" + this.start + ')';
    }
}
