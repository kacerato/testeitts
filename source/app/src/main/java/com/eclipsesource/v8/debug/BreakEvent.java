package com.eclipsesource.v8.debug;

import com.eclipsesource.v8.V8Object;

public class BreakEvent extends EventData {
    private static final String SOURCE_LINE_TEXT = "sourceLineText";
    private static final String SOURCE_COLUMN = "sourceColumn";
    private static final String SOURCE_LINE = "sourceLine";

    public BreakEvent(V8Object eventData) {
        super(eventData);
    }

    public int getSourceLine() {
        return this.v8Object.executeIntegerFunction(SOURCE_LINE, null);
    }

    public int getSourceColumn() {
        return this.v8Object.executeIntegerFunction(SOURCE_COLUMN, null);
    }

    public String getSourceLineText() {
        return this.v8Object.executeStringFunction(SOURCE_LINE_TEXT, null);
    }
}
