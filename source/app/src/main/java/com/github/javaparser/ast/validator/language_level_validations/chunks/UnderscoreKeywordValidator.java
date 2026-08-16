package com.github.javaparser.ast.validator.language_level_validations.chunks;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.VisitorValidator;
import java.lang.constant.ConstantDescs;

public class UnderscoreKeywordValidator extends VisitorValidator {
    private static void validateIdentifier(Node n10, String id2, ProblemReporter arg) {
        if (ConstantDescs.DEFAULT_NAME.equals(id2)) {
            arg.report(n10, "'_' is a reserved keyword.", new Object[0]);
        }
    }

    @Override
    public void visit(Name n10, ProblemReporter arg) {
        validateIdentifier(n10, n10.getIdentifier(), arg);
        super.visit(n10, (Name) arg);
    }

    @Override
    public void visit(SimpleName n10, ProblemReporter arg) {
        validateIdentifier(n10, n10.getIdentifier(), arg);
        super.visit(n10, (SimpleName) arg);
    }
}
