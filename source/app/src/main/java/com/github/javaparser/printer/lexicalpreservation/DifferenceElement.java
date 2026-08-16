package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;

public interface DifferenceElement {
    static DifferenceElement added(CsmElement element) {
        return new Added(element);
    }

    static DifferenceElement kept(CsmElement element) {
        return new Kept(element);
    }

    static DifferenceElement removed(CsmElement element) {
        return new Removed(element);
    }

    CsmElement getElement();

    boolean isAdded();

    default boolean isChild() {
        return getElement() instanceof LexicalDifferenceCalculator.CsmChild;
    }

    boolean isKept();

    boolean isRemoved();

    default DifferenceElement replaceEolTokens(CsmElement lineSeparator) {
        return this;
    }
}
