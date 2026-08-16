package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ParserConfiguration;

public final class UpgradeJavaMessage {
    private final ParserConfiguration.LanguageLevel level;
    private final String reason;

    public UpgradeJavaMessage(final String reason, final ParserConfiguration.LanguageLevel level) {
        this.reason = reason;
        this.level = level;
    }

    public String toString() {
        return String.format("%s Pay attention that this feature is supported starting from '%s' language level. If you need that feature the language level must be configured in the configuration before parsing the source files.", this.reason, this.level.toString());
    }
}
