package com.github.javaparser.ast.validator.language_level_validations;

public class Java15PreviewValidator extends Java15Validator {
    public Java15PreviewValidator() {
        remove(this.noPatternMatchingInstanceOf);
        remove(this.noRecordDeclaration);
        add(this.recordAsTypeIdentifierNotAllowed);
        add(this.recordDeclarationValidator);
    }
}
