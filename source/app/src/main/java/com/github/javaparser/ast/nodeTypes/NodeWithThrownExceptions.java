package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.type.ReferenceType;
import java.util.function.Predicate;

public interface NodeWithThrownExceptions<N extends Node> {
    static boolean lambda$isThrown$0(final String throwableName, ReferenceType t10) {
        return t10.toString().equals(throwableName);
    }

    default N addThrownException(ReferenceType throwType) {
        getThrownExceptions().add((NodeList<ReferenceType>) throwType);
        return (N) this;
    }

    default ReferenceType getThrownException(int i10) {
        return getThrownExceptions().get(i10);
    }

    NodeList<ReferenceType> getThrownExceptions();

    default boolean isThrown(Class<? extends Throwable> clazz) {
        return isThrown(clazz.getSimpleName());
    }

    N setThrownExceptions(NodeList<ReferenceType> thrownExceptions);

    void tryAddImportToParentCompilationUnit(Class<?> clazz);

    default boolean isThrown(final String throwableName) {
        return getThrownExceptions().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isThrown$0;
                lambda$isThrown$0 = NodeWithThrownExceptions.lambda$isThrown$0(String.this, (ReferenceType) obj);
                return lambda$isThrown$0;
            }
        });
    }

    default N addThrownException(Class<? extends Throwable> clazz) {
        tryAddImportToParentCompilationUnit(clazz);
        return addThrownException(StaticJavaParser.parseClassOrInterfaceType(clazz.getSimpleName()));
    }
}
