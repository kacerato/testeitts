package org.google.googlejavaformat;

import com.google.common.collect.AbstractC12521g1;
import w2.y;

public class FormattingError extends Error {
    private final AbstractC12521g1<FormatterDiagnostic> diagnostics;

    public FormattingError(FormatterDiagnostic diagnostic) {
        this(AbstractC12521g1.y(diagnostic));
    }

    public AbstractC12521g1<FormatterDiagnostic> diagnostics() {
        return this.diagnostics;
    }

    public FormattingError(Iterable<FormatterDiagnostic> diagnostics) {
        super(y.p("\n").k(diagnostics) + "\n");
        this.diagnostics = AbstractC12521g1.p(diagnostics);
    }
}
