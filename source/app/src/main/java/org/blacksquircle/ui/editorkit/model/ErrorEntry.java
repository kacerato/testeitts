package org.blacksquircle.ui.editorkit.model;

import F6.c;
import kotlin.jvm.internal.C14026x;

@c
public final class ErrorEntry {
    private final int color;
    private int lineNumber;

    public ErrorEntry(int i10, int i11) {
        this.lineNumber = i10;
        this.color = i11;
    }

    public final int getColor() {
        return this.color;
    }

    public final int getLineNumber() {
        return this.lineNumber;
    }

    public final void setLineNumber(int i10) {
        this.lineNumber = i10;
    }

    public ErrorEntry(int i10, int i11, int i12, C14026x c14026x) {
        this(i10, (i12 & 2) != 0 ? -65536 : i11);
    }
}
