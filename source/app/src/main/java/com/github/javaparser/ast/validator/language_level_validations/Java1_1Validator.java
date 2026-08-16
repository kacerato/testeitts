package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.stmt.LocalClassDeclarationStmt;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.Validator;
import java.util.function.Consumer;

public class Java1_1Validator extends Java1_0Validator {
    final Validator innerClasses;

    public Java1_1Validator() {
        SingleNodeTypeValidator singleNodeTypeValidator = new SingleNodeTypeValidator(ClassOrInterfaceDeclaration.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java1_1Validator.lambda$new$1((ClassOrInterfaceDeclaration) node, problemReporter);
            }
        });
        this.innerClasses = singleNodeTypeValidator;
        replace(this.noInnerClasses, singleNodeTypeValidator);
        remove(this.noReflection);
    }

    public static void lambda$new$1(final ClassOrInterfaceDeclaration n10, final ProblemReporter reporter) {
        n10.getParentNode().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Java1_1Validator.lambda$null$0(ClassOrInterfaceDeclaration.this, reporter, (Node) obj);
            }
        });
    }

    public static void lambda$null$0(final ClassOrInterfaceDeclaration n10, final ProblemReporter reporter, Node p10) {
        if ((p10 instanceof LocalClassDeclarationStmt) && n10.isInterface()) {
            reporter.report(n10, new UpgradeJavaMessage("There is no such thing as a local interface.", ParserConfiguration.LanguageLevel.JAVA_16), new Object[0]);
        }
    }
}
