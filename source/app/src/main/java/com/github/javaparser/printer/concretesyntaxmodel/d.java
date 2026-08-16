package com.github.javaparser.printer.concretesyntaxmodel;

import java.util.Objects;
import java.util.function.Predicate;

public final class d implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return Objects.isNull((CsmElement) obj);
    }
}
