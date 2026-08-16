package com.github.javaparser.printer;

import com.github.javaparser.metamodel.PropertyMetaModel;
import java.util.function.Predicate;

public final class F implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return ((PropertyMetaModel) obj).isSingular();
    }
}
