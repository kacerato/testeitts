package com.github.javaparser.printer.configuration;

import com.github.javaparser.printer.configuration.Indentation;
import com.github.javaparser.utils.LineSeparator;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;
import java.util.function.Predicate;

public class DefaultPrinterConfiguration implements PrinterConfiguration {
    private Set<ConfigurationOption> defaultOptions;

    public DefaultPrinterConfiguration() {
        ConfigOption configOption = ConfigOption.PRINT_COMMENTS;
        DefaultConfigurationOption defaultConfigurationOption = new DefaultConfigurationOption(configOption, configOption.defaultValue);
        ConfigOption configOption2 = ConfigOption.PRINT_JAVADOC;
        DefaultConfigurationOption defaultConfigurationOption2 = new DefaultConfigurationOption(configOption2, configOption2.defaultValue);
        ConfigOption configOption3 = ConfigOption.SPACE_AROUND_OPERATORS;
        DefaultConfigurationOption defaultConfigurationOption3 = new DefaultConfigurationOption(configOption3, configOption3.defaultValue);
        ConfigOption configOption4 = ConfigOption.INDENT_CASE_IN_SWITCH;
        DefaultConfigurationOption defaultConfigurationOption4 = new DefaultConfigurationOption(configOption4, configOption4.defaultValue);
        ConfigOption configOption5 = ConfigOption.MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY;
        DefaultConfigurationOption defaultConfigurationOption5 = new DefaultConfigurationOption(configOption5, configOption5.defaultValue);
        ConfigOption configOption6 = ConfigOption.END_OF_LINE_CHARACTER;
        DefaultConfigurationOption defaultConfigurationOption6 = new DefaultConfigurationOption(configOption6, configOption6.defaultValue);
        ConfigOption configOption7 = ConfigOption.INDENTATION;
        this.defaultOptions = new HashSet(Arrays.asList(defaultConfigurationOption, defaultConfigurationOption2, defaultConfigurationOption3, defaultConfigurationOption4, defaultConfigurationOption5, defaultConfigurationOption6, new DefaultConfigurationOption(configOption7, configOption7.defaultValue)));
    }

    public static boolean lambda$get$0(final ConfigurationOption option, ConfigurationOption o10) {
        return o10.equals(option);
    }

    @Override
    public PrinterConfiguration addOption(ConfigurationOption option) {
        removeOption(option);
        this.defaultOptions.add(option);
        return this;
    }

    @Override
    public Optional<ConfigurationOption> get(final ConfigurationOption option) {
        return this.defaultOptions.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$get$0;
                lambda$get$0 = DefaultPrinterConfiguration.lambda$get$0(ConfigurationOption.this, (ConfigurationOption) obj);
                return lambda$get$0;
            }
        }).findFirst();
    }

    @Override
    public boolean isActivated(ConfigurationOption option) {
        return this.defaultOptions.contains(option);
    }

    @Override
    public PrinterConfiguration removeOption(ConfigurationOption option) {
        this.defaultOptions.remove(option);
        return this;
    }

    public enum ConfigOption {
        ORDER_IMPORTS(Boolean.class),
        SORT_IMPORTS_STRATEGY(ImportOrderingStrategy.class),
        PRINT_COMMENTS(Boolean.class),
        PRINT_JAVADOC(Boolean.class),
        SPACE_AROUND_OPERATORS(Boolean.class),
        COLUMN_ALIGN_PARAMETERS(Boolean.class),
        COLUMN_ALIGN_FIRST_METHOD_CHAIN(Boolean.class),
        INDENT_CASE_IN_SWITCH(Boolean.class),
        MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY(Integer.class, 5),
        END_OF_LINE_CHARACTER(String.class, LineSeparator.SYSTEM.asRawString()),
        INDENTATION(Indentation.class, new Indentation(Indentation.IndentType.SPACES, 4)),
        INDENT_PRINT_ARRAYS_OF_ANNOTATIONS(Boolean.class);

        Object defaultValue;
        Class type;

        ConfigOption(Class clazz) {
            this.type = clazz;
        }

        ConfigOption(Class clazz, Object value) {
            this.type = clazz;
            this.defaultValue = value;
        }
    }

    @Override
    public Set<ConfigurationOption> get() {
        return this.defaultOptions;
    }
}
