package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.ModifierValidator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.UnderscoreKeywordValidator;

public class Java9Validator extends Java8Validator {
    final Validator modifiers;
    final SingleNodeTypeValidator<TryStmt> tryWithResources;
    final Validator underscoreKeywordValidator;

    public Java9Validator() {
        Validator underscoreKeywordValidator = new UnderscoreKeywordValidator();
        this.underscoreKeywordValidator = underscoreKeywordValidator;
        Validator modifierValidator = new ModifierValidator(true, true, true);
        this.modifiers = modifierValidator;
        SingleNodeTypeValidator<TryStmt> singleNodeTypeValidator = new SingleNodeTypeValidator<>(TryStmt.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java9Validator.lambda$new$0((TryStmt) node, problemReporter);
            }
        });
        this.tryWithResources = singleNodeTypeValidator;
        add(underscoreKeywordValidator);
        remove(this.noModules);
        replace(this.modifiersWithoutPrivateInterfaceMethods, modifierValidator);
        replace(this.tryWithLimitedResources, singleNodeTypeValidator);
    }

    public static void lambda$new$0(TryStmt n10, ProblemReporter reporter) {
        if (n10.getCatchClauses().isEmpty() && n10.getResources().isEmpty() && !n10.getFinallyBlock().isPresent()) {
            reporter.report(n10, "Try has no finally, no catch, and no resources.", new Object[0]);
        }
    }
}
