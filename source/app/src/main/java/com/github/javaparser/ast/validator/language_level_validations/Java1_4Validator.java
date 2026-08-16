package com.github.javaparser.ast.validator.language_level_validations;

public class Java1_4Validator extends Java1_3Validator {
    public Java1_4Validator() {
        remove(this.noAssertKeyword);
    }
}
