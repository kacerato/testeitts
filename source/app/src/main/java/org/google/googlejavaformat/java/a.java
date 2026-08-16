package org.google.googlejavaformat.java;

import org.openjdk.javax.tools.Diagnostic;
import w2.I;

public final class a implements I {
    @Override
    public final boolean apply(Object obj) {
        return Formatter.errorDiagnostic((Diagnostic) obj);
    }
}
