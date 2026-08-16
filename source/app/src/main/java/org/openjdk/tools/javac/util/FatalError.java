package org.openjdk.tools.javac.util;

public class FatalError extends Error {
    private static final long serialVersionUID = 0;

    public FatalError(JCDiagnostic jCDiagnostic) {
        super(jCDiagnostic.toString());
    }

    public FatalError(JCDiagnostic jCDiagnostic, Throwable th2) {
        super(jCDiagnostic.toString(), th2);
    }

    public FatalError(String str) {
        super(str);
    }
}
