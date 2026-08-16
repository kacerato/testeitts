package com.github.javaparser.ast.type;

import java.util.function.Function;

public final class e implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((ReferenceType) obj).asString();
    }
}
