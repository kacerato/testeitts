package com.github.javaparser.printer.configuration;

public interface ConfigurationOption {
    Boolean asBoolean();

    Integer asInteger();

    String asString();

    <T> T asValue();

    boolean hasValue();

    ConfigurationOption value(Object value);
}
