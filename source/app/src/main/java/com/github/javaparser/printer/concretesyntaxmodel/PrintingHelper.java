package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.printer.Stringable;

class PrintingHelper {
    public static String printToString(Object value) {
        return value instanceof Stringable ? ((Stringable) value).asString() : value instanceof Enum ? ((Enum) value).name().toLowerCase() : value != null ? value.toString() : "";
    }
}
