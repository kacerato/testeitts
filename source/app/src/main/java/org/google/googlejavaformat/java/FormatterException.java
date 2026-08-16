package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.D1;
import java.util.List;
import java.util.Locale;
import org.google.googlejavaformat.FormatterDiagnostic;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileObject;
import w2.InterfaceC15902t;

public final class FormatterException extends Exception {
    private AbstractC12521g1<FormatterDiagnostic> diagnostics;

    public FormatterException(String message) {
        this(FormatterDiagnostic.create(message));
    }

    public static FormatterException fromJavacDiagnostics(Iterable<Diagnostic<? extends JavaFileObject>> diagnostics) {
        return new FormatterException((Iterable<FormatterDiagnostic>) D1.U(diagnostics, new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                FormatterDiagnostic formatterDiagnostic;
                formatterDiagnostic = FormatterException.toFormatterDiagnostic((Diagnostic) obj);
                return formatterDiagnostic;
            }
        }));
    }

    public static FormatterDiagnostic toFormatterDiagnostic(Diagnostic<?> input) {
        return FormatterDiagnostic.create((int) input.getLineNumber(), (int) input.getColumnNumber(), input.getMessage(Locale.ENGLISH));
    }

    public List<FormatterDiagnostic> diagnostics() {
        return this.diagnostics;
    }

    public FormatterException(FormatterDiagnostic diagnostic) {
        this(AbstractC12521g1.y(diagnostic));
    }

    public FormatterException(Iterable<FormatterDiagnostic> diagnostics) {
        super(diagnostics.iterator().next().toString());
        this.diagnostics = AbstractC12521g1.p(diagnostics);
    }
}
