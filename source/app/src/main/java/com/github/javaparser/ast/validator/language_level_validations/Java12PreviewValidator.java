package com.github.javaparser.ast.validator.language_level_validations;

public class Java12PreviewValidator extends Java12Validator {
    public Java12PreviewValidator() {
        remove(this.noSwitchExpressions);
        remove(this.onlyOneLabelInSwitchCase);
    }
}
