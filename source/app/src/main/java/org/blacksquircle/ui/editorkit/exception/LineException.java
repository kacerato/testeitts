package org.blacksquircle.ui.editorkit.exception;

public final class LineException extends RuntimeException {
    public LineException(int i10) {
        super("Line " + i10 + " does not exists");
    }
}
