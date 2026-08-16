package org.eclipse.jdt.internal.codeassist.complete;

public class InvalidCursorLocation extends RuntimeException {
    public static final String NO_COMPLETION_INSIDE_COMMENT = "No Completion Inside Comment";
    public static final String NO_COMPLETION_INSIDE_NUMBER = "No Completion Inside Number";
    public static final String NO_COMPLETION_INSIDE_STRING = "No Completion Inside String";
    public static final String NO_COMPLETION_INSIDE_UNICODE = "No Completion Inside Unicode";
    private static final long serialVersionUID = -3443160725735779590L;
    public String irritant;

    public InvalidCursorLocation(String str) {
        this.irritant = str;
    }
}
