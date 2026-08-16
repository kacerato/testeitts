package com.github.javaparser.ast.validator;

import com.github.javaparser.ast.Node;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public class SimpleValidator<N extends Node> extends SingleNodeTypeValidator<N> {
    public SimpleValidator(Class<N> type, final Predicate<N> condition, final BiConsumer<N, ProblemReporter> problemSupplier) {
        super(type, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                SimpleValidator.lambda$new$0(Predicate.this, problemSupplier, node, problemReporter);
            }
        });
    }

    public static void lambda$new$0(final Predicate condition, final BiConsumer problemSupplier, Node node, ProblemReporter problemReporter) {
        if (condition.test(node)) {
            problemSupplier.accept(node, problemReporter);
        }
    }
}
