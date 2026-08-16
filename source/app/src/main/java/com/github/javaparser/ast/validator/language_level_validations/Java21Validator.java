package com.github.javaparser.ast.validator.language_level_validations;

public class Java21Validator extends Java20Validator {
    public Java21Validator() {
        remove(this.noSwitchNullDefault);
        remove(this.noSwitchPatterns);
        remove(this.noRecordPatterns);
    }
}
