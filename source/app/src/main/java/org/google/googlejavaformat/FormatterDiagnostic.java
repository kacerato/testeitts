package org.google.googlejavaformat;

import w2.C15883c;
import w2.H;

public class FormatterDiagnostic {
    private final int column;
    private final int lineNumber;
    private final String message;

    private FormatterDiagnostic(int lineNumber, int column, String message) {
        this.lineNumber = lineNumber;
        this.column = column;
        this.message = message;
    }

    public static FormatterDiagnostic create(String message) {
        return new FormatterDiagnostic(-1, -1, message);
    }

    public int column() {
        return this.column;
    }

    public int line() {
        return this.lineNumber;
    }

    public String message() {
        return this.message;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.lineNumber;
        if (i10 >= 0) {
            sb2.append(i10);
            sb2.append(':');
        }
        int i11 = this.column;
        if (i11 >= 0) {
            sb2.append(i11 + 1);
            sb2.append(':');
        }
        if (this.lineNumber >= 0 || this.column >= 0) {
            sb2.append(C15883c.f126249O);
        }
        sb2.append("error: ");
        sb2.append(this.message);
        return sb2.toString();
    }

    public static FormatterDiagnostic create(int lineNumber, int column, String message) {
        H.d(lineNumber >= 0);
        H.d(column >= 0);
        H.E(message);
        return new FormatterDiagnostic(lineNumber, column, message);
    }
}
