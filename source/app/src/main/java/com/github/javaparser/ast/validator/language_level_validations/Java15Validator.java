package com.github.javaparser.ast.validator.language_level_validations;

public class Java15Validator extends Java14Validator {
    public Java15Validator() {
        remove(this.noTextBlockLiteral);
    }
}
