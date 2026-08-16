package com.android.tools.r8.position;

import com.android.tools.r8.references.TypeReference;
import java.util.function.Function;

public final class a implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((TypeReference) obj).getDescriptor();
    }
}
