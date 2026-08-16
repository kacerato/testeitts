package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.ModifierValidator;
import java.util.function.Consumer;

public class Java8Validator extends Java7Validator {
    final Validator defaultMethodsInInterface;
    final Validator modifiersWithoutPrivateInterfaceMethods;

    public Java8Validator() {
        ModifierValidator modifierValidator = new ModifierValidator(true, true, false);
        this.modifiersWithoutPrivateInterfaceMethods = modifierValidator;
        SingleNodeTypeValidator singleNodeTypeValidator = new SingleNodeTypeValidator(ClassOrInterfaceDeclaration.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java8Validator.lambda$new$1((ClassOrInterfaceDeclaration) node, problemReporter);
            }
        });
        this.defaultMethodsInInterface = singleNodeTypeValidator;
        replace(this.modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods, modifierValidator);
        add(singleNodeTypeValidator);
        remove(this.noLambdas);
    }

    public static void lambda$new$1(ClassOrInterfaceDeclaration n10, final ProblemReporter reporter) {
        if (n10.isInterface()) {
            n10.getMethods().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Java8Validator.lambda$null$0(ProblemReporter.this, (MethodDeclaration) obj);
                }
            });
        }
    }

    public static void lambda$null$0(final ProblemReporter reporter, MethodDeclaration m10) {
        if (!m10.isDefault() || m10.getBody().isPresent()) {
            return;
        }
        reporter.report(m10, "'default' methods must have a body.", new Object[0]);
    }
}
