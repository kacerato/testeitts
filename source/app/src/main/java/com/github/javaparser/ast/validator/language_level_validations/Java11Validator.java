package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.VarValidator;

public class Java11Validator extends Java10Validator {
    final Validator varAlsoInLambdaParameters;

    public Java11Validator() {
        SingleNodeTypeValidator singleNodeTypeValidator = new SingleNodeTypeValidator(VarType.class, new VarValidator(true));
        this.varAlsoInLambdaParameters = singleNodeTypeValidator;
        replace(this.varOnlyOnLocalVariableDefinitionAndForAndTry, singleNodeTypeValidator);
    }
}
