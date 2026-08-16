package org.openjdk.tools.javac.util;

import java.util.HashMap;
import java.util.Map;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.util.JCDiagnostic;

public abstract class AbstractLog {
    protected JCDiagnostic.Factory diags;
    protected DiagnosticSource source;
    protected Map<JavaFileObject, DiagnosticSource> sourceMap = new HashMap();

    public AbstractLog(JCDiagnostic.Factory factory) {
        this.diags = factory;
    }

    private JCDiagnostic.DiagnosticPosition wrap(int i10) {
        if (i10 == -1) {
            return null;
        }
        return new JCDiagnostic.SimpleDiagnosticPosition(i10);
    }

    public DiagnosticSource currentSource() {
        return this.source;
    }

    public abstract void directError(String str, Object... objArr);

    public void error(String str, Object... objArr) {
        error(this.diags.errorKey(str, objArr));
    }

    public DiagnosticSource getSource(JavaFileObject javaFileObject) {
        if (javaFileObject == null) {
            return DiagnosticSource.NO_SOURCE;
        }
        DiagnosticSource diagnosticSource = this.sourceMap.get(javaFileObject);
        if (diagnosticSource != null) {
            return diagnosticSource;
        }
        DiagnosticSource diagnosticSource2 = new DiagnosticSource(javaFileObject, this);
        this.sourceMap.put(javaFileObject, diagnosticSource2);
        return diagnosticSource2;
    }

    public void mandatoryNote(JavaFileObject javaFileObject, String str, Object... objArr) {
        mandatoryNote(javaFileObject, this.diags.noteKey(str, objArr));
    }

    public void mandatoryWarning(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        mandatoryWarning(diagnosticPosition, this.diags.warningKey(str, objArr));
    }

    public void note(String str, Object... objArr) {
        note(this.diags.noteKey(str, objArr));
    }

    public abstract void report(JCDiagnostic jCDiagnostic);

    public JavaFileObject useSource(JavaFileObject javaFileObject) {
        DiagnosticSource diagnosticSource = this.source;
        JavaFileObject file = diagnosticSource == null ? null : diagnosticSource.getFile();
        this.source = getSource(javaFileObject);
        return file;
    }

    public void warning(String str, Object... objArr) {
        warning(this.diags.warningKey(str, objArr));
    }

    public void error(JCDiagnostic.Error error) {
        report(this.diags.error(null, this.source, null, error));
    }

    public void mandatoryNote(JavaFileObject javaFileObject, JCDiagnostic.Note note) {
        report(this.diags.mandatoryNote(getSource(javaFileObject), note));
    }

    public void mandatoryWarning(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic.Warning warning) {
        report(this.diags.mandatoryWarning(null, this.source, diagnosticPosition, warning));
    }

    public void note(JCDiagnostic.Note note) {
        report(this.diags.note(this.source, null, note));
    }

    public void warning(JCDiagnostic.Warning warning) {
        report(this.diags.warning(null, this.source, null, warning));
    }

    public void error(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        error(diagnosticPosition, this.diags.errorKey(str, objArr));
    }

    public void mandatoryWarning(Lint.LintCategory lintCategory, JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        mandatoryWarning(lintCategory, diagnosticPosition, this.diags.warningKey(str, objArr));
    }

    public void note(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        note(diagnosticPosition, this.diags.noteKey(str, objArr));
    }

    public void warning(Lint.LintCategory lintCategory, String str, Object... objArr) {
        warning(lintCategory, this.diags.warningKey(str, objArr));
    }

    public void error(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic.Error error) {
        report(this.diags.error(null, this.source, diagnosticPosition, error));
    }

    public void mandatoryWarning(Lint.LintCategory lintCategory, JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic.Warning warning) {
        report(this.diags.mandatoryWarning(lintCategory, this.source, diagnosticPosition, warning));
    }

    public void note(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic.Note note) {
        report(this.diags.note(this.source, diagnosticPosition, note));
    }

    public void warning(Lint.LintCategory lintCategory, JCDiagnostic.Warning warning) {
        report(this.diags.warning(lintCategory, null, null, warning));
    }

    public void error(JCDiagnostic.DiagnosticFlag diagnosticFlag, JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        error(diagnosticFlag, diagnosticPosition, this.diags.errorKey(str, objArr));
    }

    public void note(int i10, String str, Object... objArr) {
        note(i10, this.diags.noteKey(str, objArr));
    }

    public void warning(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        warning(diagnosticPosition, this.diags.warningKey(str, objArr));
    }

    public void error(JCDiagnostic.DiagnosticFlag diagnosticFlag, JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic.Error error) {
        report(this.diags.error(diagnosticFlag, this.source, diagnosticPosition, error));
    }

    public void note(int i10, JCDiagnostic.Note note) {
        report(this.diags.note(this.source, wrap(i10), note));
    }

    public void warning(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic.Warning warning) {
        report(this.diags.warning(null, this.source, diagnosticPosition, warning));
    }

    public void error(int i10, String str, Object... objArr) {
        error(i10, this.diags.errorKey(str, objArr));
    }

    public void note(JavaFileObject javaFileObject, String str, Object... objArr) {
        note(javaFileObject, this.diags.noteKey(str, objArr));
    }

    public void warning(Lint.LintCategory lintCategory, JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        warning(lintCategory, diagnosticPosition, this.diags.warningKey(str, objArr));
    }

    public void error(int i10, JCDiagnostic.Error error) {
        report(this.diags.error(null, this.source, wrap(i10), error));
    }

    public void note(JavaFileObject javaFileObject, JCDiagnostic.Note note) {
        report(this.diags.note(getSource(javaFileObject), null, note));
    }

    public void warning(Lint.LintCategory lintCategory, JCDiagnostic.DiagnosticPosition diagnosticPosition, JCDiagnostic.Warning warning) {
        report(this.diags.warning(lintCategory, this.source, diagnosticPosition, warning));
    }

    public void error(JCDiagnostic.DiagnosticFlag diagnosticFlag, int i10, String str, Object... objArr) {
        error(diagnosticFlag, i10, this.diags.errorKey(str, objArr));
    }

    public void warning(int i10, String str, Object... objArr) {
        warning(i10, this.diags.warningKey(str, objArr));
    }

    public void error(JCDiagnostic.DiagnosticFlag diagnosticFlag, int i10, JCDiagnostic.Error error) {
        report(this.diags.error(diagnosticFlag, this.source, wrap(i10), error));
    }

    public void warning(int i10, JCDiagnostic.Warning warning) {
        report(this.diags.warning(null, this.source, wrap(i10), warning));
    }
}
