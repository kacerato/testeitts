package com.github.javaparser.printer.configuration;

import com.github.javaparser.printer.configuration.DefaultPrinterConfiguration;
import com.github.javaparser.utils.Utils;

public class DefaultConfigurationOption implements ConfigurationOption {
    DefaultPrinterConfiguration.ConfigOption configOption;
    Object currentValue;

    public DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption configOption) {
        this(configOption, null);
    }

    private <T> T cast() {
        if (!hasValue()) {
            throw new IllegalArgumentException(String.format("The option %s has no currentValue", this.configOption.name()));
        }
        if (this.configOption.type.isAssignableFrom(this.currentValue.getClass())) {
            return (T) this.configOption.type.cast(this.currentValue);
        }
        throw new IllegalArgumentException(String.format("%s cannot be cast to %s", this.currentValue, this.configOption.type.getName()));
    }

    @Override
    public Boolean asBoolean() {
        return (Boolean) cast();
    }

    @Override
    public Integer asInteger() {
        return (Integer) cast();
    }

    @Override
    public String asString() {
        return (String) cast();
    }

    @Override
    public <T> T asValue() {
        return (T) cast();
    }

    public boolean equals(Object o10) {
        if (o10 == null || !(o10 instanceof DefaultConfigurationOption)) {
            return false;
        }
        return this.configOption.equals(((DefaultConfigurationOption) o10).configOption);
    }

    @Override
    public boolean hasValue() {
        return this.currentValue != null;
    }

    public int hashCode() {
        return this.configOption.hashCode();
    }

    @Override
    public ConfigurationOption value(Object value) {
        Utils.assertNotNull(value);
        this.currentValue = value;
        if (this.configOption.type.isAssignableFrom(value.getClass())) {
            return this;
        }
        throw new IllegalArgumentException(String.format("%s is not an instance of %s", value, this.configOption.type.getName()));
    }

    public DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption configOption, Object value) {
        this.configOption = configOption;
        if (value != null) {
            value(value);
        }
    }
}
