package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedSourceFile;

public final class C9636tk0 implements RetracedSourceFile {

    public static final boolean f52685c = true;

    public final RetracedClassReference f52686a;

    public final String f52687b;

    public C9636tk0(RetracedClassReference retracedClassReference, String str) {
        if (!f52685c && retracedClassReference == null) {
            throw new AssertionError();
        }
        this.f52686a = retracedClassReference;
        this.f52687b = str;
    }

    @Override
    public final String getOrInferSourceFile() {
        return getOrInferSourceFile(null);
    }

    @Override
    public final String getSourceFile() {
        return this.f52687b;
    }

    @Override
    public final boolean hasRetraceResult() {
        return this.f52687b != null;
    }

    @Override
    public final String getOrInferSourceFile(String str) {
        String str2 = this.f52687b;
        if (str2 != null) {
            return str2;
        }
        String typeName = this.f52686a.getTypeName();
        if (str == null) {
            str = "";
        }
        return C8134kk0.a(typeName, str, this.f52686a.isKnown());
    }
}
