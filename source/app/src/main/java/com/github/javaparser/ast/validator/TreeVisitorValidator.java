package com.github.javaparser.ast.validator;

import com.github.javaparser.ast.Node;
import java.util.Iterator;

public class TreeVisitorValidator implements Validator {
    private final Validator validator;

    public TreeVisitorValidator(Validator validator) {
        this.validator = validator;
    }

    @Override
    public final void accept(Node node, ProblemReporter reporter) {
        this.validator.accept(node, reporter);
        Iterator<Node> it = node.getChildNodes().iterator();
        while (it.hasNext()) {
            accept(it.next(), reporter);
        }
    }
}
