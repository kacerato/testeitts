package com.github.javaparser.printer.configuration;

import com.github.javaparser.printer.configuration.DefaultPrinterConfiguration;
import com.github.javaparser.printer.configuration.Indentation;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.Set;

@Deprecated
public class PrettyPrinterConfiguration implements PrinterConfiguration {
    PrinterConfiguration wrappedConfiguration = new DefaultPrinterConfiguration();

    @Override
    public PrinterConfiguration addOption(ConfigurationOption option) {
        return this.wrappedConfiguration.addOption(option);
    }

    @Override
    public Optional<ConfigurationOption> get(ConfigurationOption option) {
        return this.wrappedConfiguration.get(option);
    }

    public String getEndOfLineCharacter() {
        return (String) this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.END_OF_LINE_CHARACTER)).get().asValue();
    }

    @Deprecated
    public String getIndent() {
        return getIndentation().getIndent();
    }

    @Deprecated
    public int getIndentSize() {
        return getIndentation().getSize();
    }

    @Deprecated
    public Indentation.IndentType getIndentType() {
        return getIndentation().getType();
    }

    public Indentation getIndentation() {
        return (Indentation) this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.INDENTATION)).get().asValue();
    }

    public int getMaxEnumConstantsToAlignHorizontally() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY)).get().asInteger().intValue();
    }

    @Deprecated
    public int getTabWidth() {
        return getIndentation().getSize();
    }

    @Override
    public boolean isActivated(ConfigurationOption option) {
        return this.wrappedConfiguration.isActivated(option);
    }

    public boolean isColumnAlignFirstMethodChain() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_FIRST_METHOD_CHAIN)).isPresent();
    }

    public boolean isColumnAlignParameters() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_PARAMETERS)).isPresent();
    }

    public boolean isIgnoreComments() {
        return !this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS)).isPresent();
    }

    public boolean isIndentCaseInSwitch() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.INDENT_CASE_IN_SWITCH)).isPresent();
    }

    public boolean isOrderImports() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.ORDER_IMPORTS)).isPresent();
    }

    public boolean isPrintComments() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS)).isPresent();
    }

    public boolean isPrintJavadoc() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_JAVADOC)).isPresent();
    }

    public boolean isSpaceAroundOperators() {
        return this.wrappedConfiguration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.SPACE_AROUND_OPERATORS)).isPresent();
    }

    @Override
    public PrinterConfiguration removeOption(ConfigurationOption option) {
        return this.wrappedConfiguration.removeOption(option);
    }

    public PrettyPrinterConfiguration setColumnAlignFirstMethodChain(boolean columnAlignFirstMethodChain) {
        this.wrappedConfiguration = columnAlignFirstMethodChain ? addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_FIRST_METHOD_CHAIN)) : removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_FIRST_METHOD_CHAIN));
        return this;
    }

    public PrettyPrinterConfiguration setColumnAlignParameters(boolean columnAlignParameters) {
        this.wrappedConfiguration = columnAlignParameters ? addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_PARAMETERS)) : removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_PARAMETERS));
        return this;
    }

    public PrettyPrinterConfiguration setEndOfLineCharacter(String endOfLineCharacter) {
        addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.END_OF_LINE_CHARACTER, endOfLineCharacter));
        return this;
    }

    public PrettyPrinterConfiguration setIndentCaseInSwitch(boolean indentInSwitch) {
        this.wrappedConfiguration = indentInSwitch ? addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.INDENT_CASE_IN_SWITCH)) : removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.INDENT_CASE_IN_SWITCH));
        return this;
    }

    @Deprecated
    public PrettyPrinterConfiguration setIndentSize(int indentSize) {
        setIndentation(getIndentation().setSize(((Integer) Utils.assertNonNegative(Integer.valueOf(indentSize))).intValue()));
        return this;
    }

    @Deprecated
    public PrettyPrinterConfiguration setIndentType(Indentation.IndentType indentType) {
        setIndentation(getIndentation().setType((Indentation.IndentType) Utils.assertNotNull(indentType)));
        return this;
    }

    public PrettyPrinterConfiguration setIndentation(Indentation indentation) {
        this.wrappedConfiguration.addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.INDENTATION, indentation));
        return this;
    }

    public PrettyPrinterConfiguration setMaxEnumConstantsToAlignHorizontally(int maxEnumConstantsToAlignHorizontally) {
        addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY, Integer.valueOf(maxEnumConstantsToAlignHorizontally)));
        return this;
    }

    public PrettyPrinterConfiguration setOrderImports(boolean orderImports) {
        this.wrappedConfiguration = orderImports ? addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.ORDER_IMPORTS)) : removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.ORDER_IMPORTS));
        return this;
    }

    public PrettyPrinterConfiguration setPrintComments(boolean printComments) {
        this.wrappedConfiguration = printComments ? addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS)) : removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS));
        return this;
    }

    public PrettyPrinterConfiguration setPrintJavadoc(boolean printJavadoc) {
        this.wrappedConfiguration = printJavadoc ? addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_JAVADOC)) : removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_JAVADOC));
        return this;
    }

    public PrettyPrinterConfiguration setSpaceAroundOperators(boolean spaceAroundOperators) {
        this.wrappedConfiguration = spaceAroundOperators ? addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.SPACE_AROUND_OPERATORS)) : removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.SPACE_AROUND_OPERATORS));
        return this;
    }

    @Deprecated
    public PrettyPrinterConfiguration setTabWidth(int tabWidth) {
        setIndentSize(((Integer) Utils.assertPositive(Integer.valueOf(tabWidth))).intValue());
        return this;
    }

    @Override
    public Set<ConfigurationOption> get() {
        return this.wrappedConfiguration.get();
    }
}
