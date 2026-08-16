package com.github.javaparser.ast.body;

import com.github.javaparser.ast.type.Type;
import java.util.function.Function;

public final class d implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Type) obj).asString();
    }
}
