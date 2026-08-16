package com.github.javaparser.ast.validator.language_level_validations;

public class Java13PreviewValidator extends Java13Validator {
    public Java13PreviewValidator() {
        remove(this.noTextBlockLiteral);
        remove(this.noSwitchExpressions);
        remove(this.onlyOneLabelInSwitchCase);
        remove(this.noYield);
    }
}
