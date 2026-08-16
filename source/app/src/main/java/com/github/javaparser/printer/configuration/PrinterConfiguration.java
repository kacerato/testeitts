package com.github.javaparser.printer.configuration;

import java.util.Optional;
import java.util.Set;

public interface PrinterConfiguration {
    PrinterConfiguration addOption(ConfigurationOption option);

    Optional<ConfigurationOption> get(ConfigurationOption option);

    Set<ConfigurationOption> get();

    boolean isActivated(ConfigurationOption option);

    PrinterConfiguration removeOption(ConfigurationOption option);
}
