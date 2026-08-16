package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Function;

public interface NodeWithOptionalLabel<T extends Node> {
    static Optional lambda$getLabelAsString$0(SimpleName l10) {
        return Optional.of(l10.getIdentifier());
    }

    Optional<SimpleName> getLabel();

    default Optional<String> getLabelAsString() {
        return getLabel().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$getLabelAsString$0;
                lambda$getLabelAsString$0 = NodeWithOptionalLabel.lambda$getLabelAsString$0((SimpleName) obj);
                return lambda$getLabelAsString$0;
            }
        });
    }

    T removeLabel();

    T setLabel(SimpleName label);

    default T setLabel(String label) {
        Utils.assertNonEmpty(label);
        return setLabel(new SimpleName(label));
    }
}
