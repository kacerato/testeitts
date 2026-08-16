package com.github.javaparser.resolution.types;

import java.util.function.Function;

public final class c implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((ResolvedType) obj).describe();
    }
}
