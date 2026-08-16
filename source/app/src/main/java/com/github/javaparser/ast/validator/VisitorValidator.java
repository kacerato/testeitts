package com.github.javaparser.ast.validator;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.ast.visitor.VoidVisitorAdapter;

public abstract class VisitorValidator extends VoidVisitorAdapter<ProblemReporter> implements Validator {
    @Override
    public void accept(Node node, ProblemReporter problemReporter) {
        node.accept((VoidVisitor<VisitorValidator>) this, (VisitorValidator) problemReporter);
    }
}
