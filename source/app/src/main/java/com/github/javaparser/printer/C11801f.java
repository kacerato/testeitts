package com.github.javaparser.printer;

import com.github.javaparser.ast.Node;
import java.util.function.Predicate;

public final class C11801f implements Predicate {

    public final Class f59673b;

    public C11801f(Class cls) {
        this.f59673b = cls;
    }

    @Override
    public final boolean test(Object obj) {
        return this.f59673b.isInstance((Node) obj);
    }
}
