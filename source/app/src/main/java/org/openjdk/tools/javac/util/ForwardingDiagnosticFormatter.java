package org.openjdk.tools.javac.util;

import java.util.Locale;
import java.util.Set;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.tools.javac.api.DiagnosticFormatter;

public class ForwardingDiagnosticFormatter<D extends Diagnostic<?>, F extends DiagnosticFormatter<D>> implements DiagnosticFormatter<D> {
    protected ForwardingConfiguration configuration;
    protected F formatter;

    public static class ForwardingConfiguration implements DiagnosticFormatter.Configuration {
        protected DiagnosticFormatter.Configuration configuration;

        public ForwardingConfiguration(DiagnosticFormatter.Configuration configuration) {
            this.configuration = configuration;
        }

        public DiagnosticFormatter.Configuration getDelegatedConfiguration() {
            return this.configuration;
        }

        @Override
        public int getMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit multilineLimit) {
            return this.configuration.getMultilineLimit(multilineLimit);
        }

        @Override
        public Set<DiagnosticFormatter.Configuration.DiagnosticPart> getVisible() {
            return this.configuration.getVisible();
        }

        @Override
        public void setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit multilineLimit, int i10) {
            this.configuration.setMultilineLimit(multilineLimit, i10);
        }

        @Override
        public void setVisible(Set<DiagnosticFormatter.Configuration.DiagnosticPart> set) {
            this.configuration.setVisible(set);
        }
    }

    public ForwardingDiagnosticFormatter(F f10) {
        this.formatter = f10;
        this.configuration = new ForwardingConfiguration(f10.getConfiguration());
    }

    @Override
    public boolean displaySource(D d10) {
        return this.formatter.displaySource(d10);
    }

    @Override
    public String format(D d10, Locale locale) {
        return this.formatter.format(d10, locale);
    }

    @Override
    public String formatKind(D d10, Locale locale) {
        return this.formatter.formatKind(d10, locale);
    }

    @Override
    public String formatMessage(D d10, Locale locale) {
        return this.formatter.formatMessage(d10, locale);
    }

    @Override
    public String formatPosition(D d10, DiagnosticFormatter.PositionKind positionKind, Locale locale) {
        return this.formatter.formatPosition(d10, positionKind, locale);
    }

    @Override
    public String formatSource(D d10, boolean z10, Locale locale) {
        return this.formatter.formatSource(d10, z10, locale);
    }

    @Override
    public DiagnosticFormatter.Configuration getConfiguration() {
        return this.configuration;
    }

    public F getDelegatedFormatter() {
        return this.formatter;
    }
}
