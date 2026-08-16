package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.validator.RecordAsTypeIdentifierNotAllowed;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.RecordDeclarationValidator;

public class Java14Validator extends Java13Validator {
    final Validator recordAsTypeIdentifierNotAllowed = new RecordAsTypeIdentifierNotAllowed();
    final Validator recordDeclarationValidator = new SingleNodeTypeValidator(RecordDeclaration.class, new RecordDeclarationValidator());

    public Java14Validator() {
        remove(this.noSwitchExpressions);
        remove(this.onlyOneLabelInSwitchCase);
        remove(this.noYield);
    }
}
