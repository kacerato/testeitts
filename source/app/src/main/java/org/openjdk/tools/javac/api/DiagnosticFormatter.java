package org.openjdk.tools.javac.api;

import java.util.Locale;
import java.util.Set;
import org.openjdk.javax.tools.Diagnostic;

public interface DiagnosticFormatter<D extends Diagnostic<?>> {

    public interface Configuration {

        public enum DiagnosticPart {
            SUMMARY,
            DETAILS,
            SOURCE,
            SUBDIAGNOSTICS,
            JLS
        }

        public enum MultilineLimit {
            DEPTH,
            LENGTH
        }

        int getMultilineLimit(MultilineLimit multilineLimit);

        Set<DiagnosticPart> getVisible();

        void setMultilineLimit(MultilineLimit multilineLimit, int i10);

        void setVisible(Set<DiagnosticPart> set);
    }

    public enum PositionKind {
        START,
        END,
        LINE,
        COLUMN,
        OFFSET
    }

    boolean displaySource(D d10);

    String format(D d10, Locale locale);

    String formatKind(D d10, Locale locale);

    String formatMessage(D d10, Locale locale);

    String formatPosition(D d10, PositionKind positionKind, Locale locale);

    String formatSource(D d10, boolean z10, Locale locale);

    Configuration getConfiguration();
}
