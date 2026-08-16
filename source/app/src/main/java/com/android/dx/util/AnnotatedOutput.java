package com.android.dx.util;

public interface AnnotatedOutput extends Output {
    void annotate(int i10, String str);

    void annotate(String str);

    boolean annotates();

    void endAnnotation();

    int getAnnotationWidth();

    boolean isVerbose();
}
