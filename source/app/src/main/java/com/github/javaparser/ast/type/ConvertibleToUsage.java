package com.github.javaparser.ast.type;

import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedType;

public interface ConvertibleToUsage {
    ResolvedType convertToUsage(Context context);
}
