package org.openjdk.javax.tools;

public interface DiagnosticListener<S> {
    void report(Diagnostic<? extends S> diagnostic);
}
