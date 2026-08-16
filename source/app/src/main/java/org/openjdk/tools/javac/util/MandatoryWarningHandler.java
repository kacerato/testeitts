package org.openjdk.tools.javac.util;

import java.util.HashSet;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.util.JCDiagnostic;

public class MandatoryWarningHandler {
    private Object deferredDiagnosticArg;
    private DeferredDiagnosticKind deferredDiagnosticKind;
    private JavaFileObject deferredDiagnosticSource;
    private final boolean enforceMandatory;
    private final Lint.LintCategory lintCategory;
    private Log log;
    private String prefix;
    private Set<JavaFileObject> sourcesWithReportedWarnings;
    private boolean verbose;

    public enum DeferredDiagnosticKind {
        IN_FILE(".filename"),
        ADDITIONAL_IN_FILE(".filename.additional"),
        IN_FILES(".plural"),
        ADDITIONAL_IN_FILES(".plural.additional");

        private final String value;

        DeferredDiagnosticKind(String str) {
            this.value = str;
        }

        public String getKey(String str) {
            return str + this.value;
        }
    }

    public MandatoryWarningHandler(Log log, boolean z10, boolean z11, String str, Lint.LintCategory lintCategory) {
        this.log = log;
        this.verbose = z10;
        this.prefix = str;
        this.enforceMandatory = z11;
        this.lintCategory = lintCategory;
    }

    private static boolean equal(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? obj == obj2 : obj.equals(obj2);
    }

    private void logMandatoryNote(JavaFileObject javaFileObject, String str, Object... objArr) {
        if (this.enforceMandatory) {
            this.log.mandatoryNote(javaFileObject, str, objArr);
        } else {
            this.log.note(javaFileObject, str, objArr);
        }
    }

    private void logMandatoryWarning(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        if (this.enforceMandatory) {
            this.log.mandatoryWarning(this.lintCategory, diagnosticPosition, str, objArr);
        } else {
            this.log.warning(this.lintCategory, diagnosticPosition, str, objArr);
        }
    }

    public void report(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        JavaFileObject currentSourceFile = this.log.currentSourceFile();
        if (!this.verbose) {
            DeferredDiagnosticKind deferredDiagnosticKind = this.deferredDiagnosticKind;
            if (deferredDiagnosticKind == null) {
                this.deferredDiagnosticKind = DeferredDiagnosticKind.IN_FILE;
                this.deferredDiagnosticSource = currentSourceFile;
                this.deferredDiagnosticArg = currentSourceFile;
                return;
            } else {
                if (deferredDiagnosticKind != DeferredDiagnosticKind.IN_FILE || equal(this.deferredDiagnosticSource, currentSourceFile)) {
                    return;
                }
                this.deferredDiagnosticKind = DeferredDiagnosticKind.IN_FILES;
                this.deferredDiagnosticArg = null;
                return;
            }
        }
        if (this.sourcesWithReportedWarnings == null) {
            this.sourcesWithReportedWarnings = new HashSet();
        }
        Log log = this.log;
        if (log.nwarnings < log.MaxWarnings) {
            logMandatoryWarning(diagnosticPosition, str, objArr);
            this.sourcesWithReportedWarnings.add(currentSourceFile);
            return;
        }
        DeferredDiagnosticKind deferredDiagnosticKind2 = this.deferredDiagnosticKind;
        if (deferredDiagnosticKind2 == null) {
            if (this.sourcesWithReportedWarnings.contains(currentSourceFile)) {
                this.deferredDiagnosticKind = DeferredDiagnosticKind.ADDITIONAL_IN_FILE;
            } else {
                this.deferredDiagnosticKind = DeferredDiagnosticKind.IN_FILE;
            }
            this.deferredDiagnosticSource = currentSourceFile;
            this.deferredDiagnosticArg = currentSourceFile;
            return;
        }
        if ((deferredDiagnosticKind2 == DeferredDiagnosticKind.IN_FILE || deferredDiagnosticKind2 == DeferredDiagnosticKind.ADDITIONAL_IN_FILE) && !equal(this.deferredDiagnosticSource, currentSourceFile)) {
            this.deferredDiagnosticKind = DeferredDiagnosticKind.ADDITIONAL_IN_FILES;
            this.deferredDiagnosticArg = null;
        }
    }

    public void reportDeferredDiagnostic() {
        DeferredDiagnosticKind deferredDiagnosticKind = this.deferredDiagnosticKind;
        if (deferredDiagnosticKind != null) {
            if (this.deferredDiagnosticArg == null) {
                logMandatoryNote(this.deferredDiagnosticSource, deferredDiagnosticKind.getKey(this.prefix), new Object[0]);
            } else {
                logMandatoryNote(this.deferredDiagnosticSource, deferredDiagnosticKind.getKey(this.prefix), this.deferredDiagnosticArg);
            }
            if (this.verbose) {
                return;
            }
            logMandatoryNote(this.deferredDiagnosticSource, this.prefix + ".recompile", new Object[0]);
        }
    }
}
