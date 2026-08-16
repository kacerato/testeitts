package org.eclipse.jdt.internal.core.builder;

public class AbortIncrementalBuildException extends RuntimeException {
    private static final long serialVersionUID = -8874662133883858502L;
    protected String qualifiedTypeName;

    public AbortIncrementalBuildException(String str) {
        this.qualifiedTypeName = str;
    }
}
