package com.github.javaparser.printer;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.printer.configuration.PrettyPrinterConfiguration;
import com.github.javaparser.printer.configuration.PrinterConfiguration;
import java.util.function.Function;

@Deprecated
public class PrettyPrinter implements ConfigurablePrinter {
    private PrinterConfiguration configuration;
    private Function<PrettyPrinterConfiguration, VoidVisitor<Void>> visitorFactory;

    public PrettyPrinter() {
        this(new PrettyPrinterConfiguration());
    }

    @Override
    public PrinterConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override
    public String print(Node node) {
        VoidVisitor<Void> apply = this.visitorFactory.apply((PrettyPrinterConfiguration) this.configuration);
        node.accept((VoidVisitor<VoidVisitor<Void>>) apply, (VoidVisitor<Void>) null);
        return apply.toString();
    }

    @Override
    public Printer setConfiguration(PrinterConfiguration configuration) {
        if (!(configuration instanceof PrettyPrinterConfiguration)) {
            throw new IllegalArgumentException("PrettyPrinter must be configured with a PrettyPrinterConfiguration class");
        }
        this.configuration = configuration;
        return this;
    }

    public PrettyPrinter(PrettyPrinterConfiguration configuration) {
        this(configuration, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new PrettyPrintVisitor((PrettyPrinterConfiguration) obj);
            }
        });
    }

    public PrettyPrinter(PrettyPrinterConfiguration configuration, Function<PrettyPrinterConfiguration, VoidVisitor<Void>> visitorFactory) {
        this.configuration = configuration;
        this.visitorFactory = visitorFactory;
    }
}
