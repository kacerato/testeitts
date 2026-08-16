package com.github.javaparser.printer;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.printer.configuration.DefaultPrinterConfiguration;
import com.github.javaparser.printer.configuration.PrinterConfiguration;
import java.util.function.Function;

public class DefaultPrettyPrinter implements ConfigurablePrinter {
    private PrinterConfiguration configuration;
    Function<PrinterConfiguration, VoidVisitor<Void>> visitorFactory;

    public DefaultPrettyPrinter() {
        this(createDefaultConfiguration());
    }

    private static PrinterConfiguration createDefaultConfiguration() {
        return new DefaultPrinterConfiguration();
    }

    private static Function<PrinterConfiguration, VoidVisitor<Void>> createDefaultVisitor() {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                VoidVisitor lambda$createDefaultVisitor$0;
                lambda$createDefaultVisitor$0 = DefaultPrettyPrinter.lambda$createDefaultVisitor$0((PrinterConfiguration) obj);
                return lambda$createDefaultVisitor$0;
            }
        };
    }

    public static VoidVisitor lambda$createDefaultVisitor$0(PrinterConfiguration config) {
        return new DefaultPrettyPrinterVisitor(config, new SourcePrinter(config));
    }

    @Override
    public PrinterConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override
    public String print(Node node) {
        VoidVisitor<Void> apply = this.visitorFactory.apply(this.configuration);
        node.accept((VoidVisitor<VoidVisitor<Void>>) apply, (VoidVisitor<Void>) null);
        return apply.toString();
    }

    @Override
    public Printer setConfiguration(PrinterConfiguration configuration) {
        this.configuration = configuration;
        return this;
    }

    public DefaultPrettyPrinter(PrinterConfiguration configuration) {
        this(createDefaultVisitor(), configuration);
    }

    public DefaultPrettyPrinter(Function<PrinterConfiguration, VoidVisitor<Void>> visitorFactory, PrinterConfiguration configuration) {
        this.configuration = configuration;
        this.visitorFactory = visitorFactory;
    }
}
