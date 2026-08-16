package com.github.javaparser.printer;

import com.github.javaparser.ast.Modifier;
import java.util.function.Function;

public final class C11839t implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Modifier) obj).getKeyword();
    }
}
