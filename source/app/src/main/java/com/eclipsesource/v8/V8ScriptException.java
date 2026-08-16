package com.eclipsesource.v8;

import b3.s;
import w2.C15883c;

public abstract class V8ScriptException extends V8RuntimeException {
    private final String fileName;
    private final int lineNumber;
    private final String jsMessage;
    private final String sourceLine;
    private final int startColumn;
    private final int endColumn;
    private final String jsStackTrace;

    public V8ScriptException(String fileName, int lineNumber, String jsMessage, String sourceLine, int startColumn, int endColumn, String jsStackTrace, Throwable cause) {
        this.fileName = fileName;
        this.lineNumber = lineNumber;
        this.jsMessage = jsMessage;
        this.sourceLine = sourceLine;
        this.startColumn = startColumn;
        this.endColumn = endColumn;
        this.jsStackTrace = jsStackTrace;
        if (cause != null) {
            initCause(cause);
        }
    }

    public String getJSStackTrace() {
        return this.jsStackTrace;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public int getStartColumn() {
        return this.startColumn;
    }

    public int getEndColumn() {
        return this.endColumn;
    }

    public String getSourceLine() {
        return this.sourceLine;
    }

    @Override
    public String toString() {
        return createMessageLine() + createMessageDetails() + createJSStackDetails() + "\n" + getClass().getName();
    }

    @Override
    public String getMessage() {
        return createMessageLine();
    }

    public String getJSMessage() {
        return this.jsMessage;
    }

    private String createMessageLine() {
        return this.fileName + s.f32937c + this.lineNumber + ": " + this.jsMessage;
    }

    private String createJSStackDetails() {
        if (this.jsStackTrace != null) {
            return "\n" + this.jsStackTrace;
        }
        return "";
    }

    private String createMessageDetails() {
        StringBuilder result = new StringBuilder();
        if (this.sourceLine != null && !this.sourceLine.isEmpty()) {
            result.append('\n');
            result.append(this.sourceLine);
            result.append('\n');
            if (this.startColumn >= 0) {
                result.append(createCharSequence(this.startColumn, C15883c.f126249O));
                result.append(createCharSequence(this.endColumn - this.startColumn, '^'));
            }
        }
        return result.toString();
    }

    private char[] createCharSequence(int length, char c10) {
        char[] result = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            result[i10] = c10;
        }
        return result;
    }
}
