package org.openjdk.tools.javah;

public class InternalError extends Error {
    private static final long serialVersionUID = 8411861562497165022L;

    public InternalError(String str, Throwable th2) {
        super("Internal error: " + str);
        initCause(th2);
    }
}
