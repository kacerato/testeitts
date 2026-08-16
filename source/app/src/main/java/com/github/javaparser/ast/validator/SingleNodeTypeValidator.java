package com.github.javaparser.ast.validator;

import com.github.javaparser.ast.Node;
import java.util.function.Consumer;

public class SingleNodeTypeValidator<N extends Node> implements Validator {
    private final Class<N> type;
    private final TypedValidator<N> validator;

    public SingleNodeTypeValidator(Class<N> type, TypedValidator<N> validator) {
        this.type = type;
        this.validator = validator;
    }

    public void lambda$accept$0(final ProblemReporter problemReporter, Node n10) {
        this.validator.accept((TypedValidator<N>) n10, problemReporter);
    }

    @Override
    public void accept(Node node, final ProblemReporter problemReporter) {
        if (this.type.isInstance(node)) {
            this.validator.accept((TypedValidator<N>) this.type.cast(node), problemReporter);
        }
        node.findAll(this.type).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SingleNodeTypeValidator.this.lambda$accept$0(problemReporter, (Node) obj);
            }
        });
    }
}
