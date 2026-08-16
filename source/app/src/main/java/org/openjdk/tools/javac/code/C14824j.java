package org.openjdk.tools.javac.code;

import java.util.function.Function;

public final class C14824j implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Iterable) obj).iterator();
    }
}
