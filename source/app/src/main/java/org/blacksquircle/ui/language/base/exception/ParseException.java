package org.blacksquircle.ui.language.base.exception;

import org.jetbrains.annotations.Nullable;

public final class ParseException extends RuntimeException {
    private final int columnNumber;
    private final int lineNumber;

    public ParseException(@Nullable String str, int i10, int i11) {
        super(str);
        this.lineNumber = i10;
        this.columnNumber = i11;
    }

    public final int getColumnNumber() {
        return this.columnNumber;
    }

    public final int getLineNumber() {
        return this.lineNumber;
    }
}
