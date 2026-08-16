package com.github.javaparser.printer;

import com.github.javaparser.printer.configuration.PrinterConfiguration;

public interface ConfigurablePrinter extends Printer {
    PrinterConfiguration getConfiguration();

    Printer setConfiguration(PrinterConfiguration configuration);
}
