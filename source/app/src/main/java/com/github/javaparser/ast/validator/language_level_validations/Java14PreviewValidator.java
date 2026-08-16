package com.github.javaparser.ast.validator.language_level_validations;

public class Java14PreviewValidator extends Java14Validator {
    public Java14PreviewValidator() {
        remove(this.noPatternMatchingInstanceOf);
        remove(this.noRecordDeclaration);
        add(this.recordAsTypeIdentifierNotAllowed);
        add(this.recordDeclarationValidator);
        remove(this.noTextBlockLiteral);
    }
}
