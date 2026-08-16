package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.utils.Utils;

public interface NodeWithName<N extends Node> {
    Name getName();

    default String getNameAsString() {
        return getName().asString();
    }

    N setName(Name name);

    default N setName(String name) {
        Utils.assertNonEmpty(name);
        return setName(StaticJavaParser.parseName(name));
    }
}
