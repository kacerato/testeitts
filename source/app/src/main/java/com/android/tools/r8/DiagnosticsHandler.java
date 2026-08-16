package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.io.PrintStream;

public interface DiagnosticsHandler {
    static void printDiagnosticToStream(Diagnostic diagnostic, String str, PrintStream printStream) {
        if (diagnostic.getOrigin() != Origin.unknown()) {
            printStream.print(str + " in " + ((Object) diagnostic.getOrigin()));
            if (diagnostic.getPosition() != Position.UNKNOWN) {
                printStream.print(" at " + diagnostic.getPosition().getDescription());
            }
            printStream.println(b3.s.f32937c);
        } else {
            printStream.print(str + ": ");
        }
        printStream.println(diagnostic.getDiagnosticMessage());
    }

    default void error(Diagnostic diagnostic) {
        printDiagnosticToStream(diagnostic, "Error", System.err);
    }

    default void info(Diagnostic diagnostic) {
        printDiagnosticToStream(diagnostic, "Info", System.out);
    }

    default DiagnosticsLevel modifyDiagnosticsLevel(DiagnosticsLevel diagnosticsLevel, Diagnostic diagnostic) {
        return diagnosticsLevel;
    }

    default void warning(Diagnostic diagnostic) {
        printDiagnosticToStream(diagnostic, F2.d.f6235g, System.err);
    }
}
