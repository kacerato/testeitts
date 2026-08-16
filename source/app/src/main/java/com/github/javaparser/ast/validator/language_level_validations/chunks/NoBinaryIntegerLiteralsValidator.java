package com.github.javaparser.ast.validator.language_level_validations.chunks;

import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import com.github.javaparser.ast.expr.LiteralStringValueExpr;
import com.github.javaparser.ast.expr.LongLiteralExpr;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.VisitorValidator;

public class NoBinaryIntegerLiteralsValidator extends VisitorValidator {
    private static void validate(LiteralStringValueExpr n10, ProblemReporter arg) {
        if (n10.getValue().toUpperCase().startsWith("0B")) {
            arg.report(n10, "Binary literal values are not supported.", new Object[0]);
        }
    }

    @Override
    public void visit(IntegerLiteralExpr n10, ProblemReporter arg) {
        validate(n10, arg);
        super.visit(n10, (IntegerLiteralExpr) arg);
    }

    @Override
    public void visit(LongLiteralExpr n10, ProblemReporter arg) {
        validate(n10, arg);
        super.visit(n10, (LongLiteralExpr) arg);
    }
}
