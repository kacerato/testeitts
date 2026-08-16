package com.github.javaparser.ast.validator.language_level_validations;

public class Java16Validator extends Java15Validator {
    public Java16Validator() {
        remove(this.noPatternMatchingInstanceOf);
        remove(this.noRecordDeclaration);
        remove(this.innerClasses);
        add(this.recordAsTypeIdentifierNotAllowed);
        add(this.recordDeclarationValidator);
    }
}
