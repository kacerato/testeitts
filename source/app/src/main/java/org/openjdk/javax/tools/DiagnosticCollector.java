package org.openjdk.javax.tools;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

public final class DiagnosticCollector<S> implements DiagnosticListener<S> {
    private List<Diagnostic<? extends S>> diagnostics = Collections.synchronizedList(new ArrayList());

    public List<Diagnostic<? extends S>> getDiagnostics() {
        return Collections.unmodifiableList(this.diagnostics);
    }

    @Override
    public void report(Diagnostic<? extends S> diagnostic) {
        Objects.requireNonNull(diagnostic);
        this.diagnostics.add(diagnostic);
    }
}
