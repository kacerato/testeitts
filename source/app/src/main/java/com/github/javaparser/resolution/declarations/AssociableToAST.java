package com.github.javaparser.resolution.declarations;

import com.github.javaparser.ast.Node;
import com.github.javaparser.printer.C11801f;
import java.util.Optional;
import java.util.function.Function;

public interface AssociableToAST {
    default Optional<Node> toAst() {
        return Optional.empty();
    }

    default <N extends Node> Optional<N> toAst(final Class<N> cls) {
        Optional<Node> ast = toAst();
        cls.getClass();
        return (Optional<N>) ast.filter(new C11801f(cls)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (Node) Class.this.cast((Node) obj);
            }
        });
    }
}
