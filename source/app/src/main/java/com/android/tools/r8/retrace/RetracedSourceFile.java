package com.android.tools.r8.retrace;

public interface RetracedSourceFile {
    String getOrInferSourceFile();

    String getOrInferSourceFile(String str);

    String getSourceFile();

    boolean hasRetraceResult();
}
