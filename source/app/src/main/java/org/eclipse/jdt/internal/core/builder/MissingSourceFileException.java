package org.eclipse.jdt.internal.core.builder;

public class MissingSourceFileException extends RuntimeException {
    private static final long serialVersionUID = -1416609004971115719L;
    protected String missingSourceFile;

    public MissingSourceFileException(String str) {
        this.missingSourceFile = str;
    }
}
