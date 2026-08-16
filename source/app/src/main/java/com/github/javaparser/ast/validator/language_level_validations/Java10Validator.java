package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.VarValidator;

public class Java10Validator extends Java9Validator {
    final Validator varOnlyOnLocalVariableDefinitionAndForAndTry;

    public Java10Validator() {
        SingleNodeTypeValidator singleNodeTypeValidator = new SingleNodeTypeValidator(VarType.class, new VarValidator(false));
        this.varOnlyOnLocalVariableDefinitionAndForAndTry = singleNodeTypeValidator;
        add(singleNodeTypeValidator);
    }
}
