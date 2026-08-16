package com.github.javaparser.printer;

import com.github.javaparser.ast.expr.Expression;
import java.util.function.Predicate;

public final class A implements Predicate {

    public final Class f59629b;

    @Override
    public final boolean test(Object obj) {
        return this.f59629b.isInstance((Expression) obj);
    }
}
