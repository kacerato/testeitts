package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ast.validator.ReservedKeywordValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.ModifierValidator;

public class Java1_2Validator extends Java1_1Validator {
    final Validator modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods;
    final Validator strictfpNotAllowed;

    public Java1_2Validator() {
        ModifierValidator modifierValidator = new ModifierValidator(true, false, false);
        this.modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods = modifierValidator;
        ReservedKeywordValidator reservedKeywordValidator = new ReservedKeywordValidator("strictfp");
        this.strictfpNotAllowed = reservedKeywordValidator;
        replace(this.modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods, modifierValidator);
        add(reservedKeywordValidator);
    }
}
