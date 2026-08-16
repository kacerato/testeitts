package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.type.UnionType;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.TypedValidator;
import java.util.Iterator;

public class Java7Validator extends Java6Validator {
    private final SingleNodeTypeValidator<UnionType> multiCatch;
    final SingleNodeTypeValidator<TryStmt> tryWithLimitedResources;

    public Java7Validator() {
        SingleNodeTypeValidator<TryStmt> singleNodeTypeValidator = new SingleNodeTypeValidator<>(TryStmt.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java7Validator.lambda$new$0((TryStmt) node, problemReporter);
            }
        });
        this.tryWithLimitedResources = singleNodeTypeValidator;
        SingleNodeTypeValidator<UnionType> singleNodeTypeValidator2 = new SingleNodeTypeValidator<>(UnionType.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java7Validator.lambda$new$1((UnionType) node, problemReporter);
            }
        });
        this.multiCatch = singleNodeTypeValidator2;
        remove(this.genericsWithoutDiamondOperator);
        replace(this.tryWithoutResources, singleNodeTypeValidator);
        remove(this.noBinaryIntegerLiterals);
        remove(this.noUnderscoresInIntegerLiterals);
        replace(this.noMultiCatch, singleNodeTypeValidator2);
    }

    public static void lambda$new$0(TryStmt n10, ProblemReporter reporter) {
        if (n10.getCatchClauses().isEmpty() && n10.getResources().isEmpty() && !n10.getFinallyBlock().isPresent()) {
            reporter.report(n10, "Try has no finally, no catch, and no resources.", new Object[0]);
        }
        Iterator<Expression> it = n10.getResources().iterator();
        while (it.hasNext()) {
            if (!it.next().isVariableDeclarationExpr()) {
                reporter.report(n10, "Try with resources only supports variable declarations.", new Object[0]);
            }
        }
    }

    public static void lambda$new$1(UnionType n10, ProblemReporter reporter) {
        if (n10.getElements().size() == 1) {
            reporter.report(n10, "Union type (multi catch) must have at least two elements.", new Object[0]);
        }
    }
}
