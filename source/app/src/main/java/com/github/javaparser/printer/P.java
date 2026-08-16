package com.github.javaparser.printer;

import com.github.javaparser.ast.ImportDeclaration;
import java.util.function.Function;

public final class P implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((ImportDeclaration) obj).getNameAsString();
    }
}
