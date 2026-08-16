package com.android.tools.r8.retrace;

import com.android.tools.r8.internal.C6095Vn0;
import com.android.tools.r8.internal.C7979jo0;
import com.android.tools.r8.retrace.StackTraceElementProxy;

public interface StackTraceLineParser<T, ST extends StackTraceElementProxy<T, ST>> {
    static StackTraceLineParser<String, C6095Vn0> createRegularExpressionParser(String str) {
        return new C7979jo0(str);
    }

    ST parse(T t10);
}
