package com.github.javaparser.ast.validator;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.SimpleName;

public class RecordAsTypeIdentifierNotAllowed extends VisitorValidator {
    private final String error = "'record' is a restricted identifier and cannot be used for type declarations";

    private boolean validUsage(Node node) {
        if (node.getParentNode().isPresent()) {
            return !(node.getParentNode().get() instanceof TypeDeclaration);
        }
        return true;
    }

    @Override
    public void visit(Name n10, ProblemReporter arg) {
        if ("record".equals(n10.getIdentifier()) && !validUsage(n10)) {
            arg.report(n10, this.error, new Object[0]);
        }
        super.visit(n10, (Name) arg);
    }

    @Override
    public void visit(SimpleName n10, ProblemReporter arg) {
        if ("record".equals(n10.getIdentifier()) && !validUsage(n10)) {
            arg.report(n10, this.error, new Object[0]);
        }
        super.visit(n10, (SimpleName) arg);
    }
}
