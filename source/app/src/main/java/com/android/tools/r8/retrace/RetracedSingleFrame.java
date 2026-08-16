package com.android.tools.r8.retrace;

public interface RetracedSingleFrame {
    int getIndex();

    RetracedMethodReference getMethodReference();

    RetracedSourceFile getSourceFile();
}
