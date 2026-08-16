package com.github.javaparser.printer;

import com.github.javaparser.ast.nodeTypes.NodeWithTraversableScope;
import java.util.function.Function;

public final class C implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((NodeWithTraversableScope) obj).traverseScope();
    }
}
