package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceStackTraceElementProxy;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedFieldReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedSourceFile;
import com.android.tools.r8.retrace.RetracedTypeReference;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import java.util.List;

public final class C5748Pn0 implements RetraceStackTraceElementProxy {

    public static final boolean f43369m = true;

    public final StackTraceElementProxy f43370b;

    public final RetracedClassReference f43371c;

    public final RetracedMethodReference f43372d;

    public final RetracedFieldReference f43373e;

    public final RetracedTypeReference f43374f;

    public final List f43375g;

    public final RetracedSourceFile f43376h;

    public final int f43377i;

    public final boolean f43378j;

    public final boolean f43379k;

    public final RetraceStackTraceContext f43380l;

    public C5748Pn0(StackTraceElementProxy stackTraceElementProxy, RetracedClassReference retracedClassReference, RetracedMethodReference retracedMethodReference, RetracedFieldReference retracedFieldReference, RetracedTypeReference retracedTypeReference, List list, RetracedSourceFile retracedSourceFile, int i10, boolean z10, boolean z11, RetraceStackTraceContext retraceStackTraceContext) {
        if (!f43369m && stackTraceElementProxy == null) {
            throw new AssertionError();
        }
        this.f43370b = stackTraceElementProxy;
        this.f43371c = retracedClassReference;
        this.f43372d = retracedMethodReference;
        this.f43373e = retracedFieldReference;
        this.f43374f = retracedTypeReference;
        this.f43375g = list;
        this.f43376h = retracedSourceFile;
        this.f43377i = i10;
        this.f43378j = z10;
        this.f43379k = z11;
        this.f43380l = retraceStackTraceContext;
    }

    public final C5690On0 a() {
        C5690On0 c5690On0 = new C5690On0(this.f43370b);
        c5690On0.f43032b = this.f43371c;
        c5690On0.f43033c = this.f43372d;
        c5690On0.f43034d = this.f43373e;
        c5690On0.f43035e = this.f43374f;
        c5690On0.f43036f = this.f43375g;
        c5690On0.f43037g = this.f43376h;
        c5690On0.f43038h = this.f43377i;
        c5690On0.f43039i = this.f43378j;
        c5690On0.f43040j = this.f43379k;
        c5690On0.f43041k = this.f43380l;
        return c5690On0;
    }

    @Override
    public final int compareTo(Object obj) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        RetraceStackTraceElementProxy retraceStackTraceElementProxy = (RetraceStackTraceElementProxy) obj;
        if (this == retraceStackTraceElementProxy) {
            return 0;
        }
        int compare = Boolean.compare(hasRetracedClass(), retraceStackTraceElementProxy.hasRetracedClass());
        if (compare != 0) {
            return compare;
        }
        if (hasRetracedClass() && (compareTo3 = this.f43371c.getTypeName().compareTo(retraceStackTraceElementProxy.getRetracedClass().getTypeName())) != 0) {
            return compareTo3;
        }
        int compare2 = Boolean.compare(hasRetracedMethod(), retraceStackTraceElementProxy.hasRetracedMethod());
        if (compare2 != 0) {
            return compare2;
        }
        if (hasRetracedMethod() && (compareTo2 = this.f43372d.compareTo(retraceStackTraceElementProxy.getRetracedMethod())) != 0) {
            return compareTo2;
        }
        int compare3 = Boolean.compare(hasSourceFile(), retraceStackTraceElementProxy.hasSourceFile());
        if (compare3 != 0) {
            return compare3;
        }
        if (hasSourceFile() && (compareTo = getSourceFile().compareTo(retraceStackTraceElementProxy.getSourceFile())) != 0) {
            return compareTo;
        }
        int compare4 = Boolean.compare(hasLineNumber(), retraceStackTraceElementProxy.hasLineNumber());
        if (compare4 != 0) {
            return compare4;
        }
        if (hasLineNumber()) {
            return Integer.compare(this.f43377i, retraceStackTraceElementProxy.getLineNumber());
        }
        return 0;
    }

    @Override
    public final RetraceStackTraceContext getContext() {
        return this.f43380l;
    }

    @Override
    public final int getLineNumber() {
        return this.f43377i;
    }

    @Override
    public final StackTraceElementProxy getOriginalItem() {
        return this.f43370b;
    }

    @Override
    public final RetracedClassReference getRetracedClass() {
        return this.f43371c;
    }

    @Override
    public final RetracedFieldReference getRetracedField() {
        return this.f43373e;
    }

    @Override
    public final RetracedTypeReference getRetracedFieldOrReturnType() {
        return this.f43374f;
    }

    @Override
    public final RetracedMethodReference getRetracedMethod() {
        return this.f43372d;
    }

    @Override
    public final List getRetracedMethodArguments() {
        return this.f43375g;
    }

    @Override
    public final RetracedSourceFile getRetracedSourceFile() {
        return this.f43376h;
    }

    @Override
    public final String getSourceFile() {
        RetracedSourceFile retracedSourceFile = this.f43376h;
        if (retracedSourceFile != null) {
            return retracedSourceFile.getOrInferSourceFile(this.f43370b.getSourceFile() == null ? "" : this.f43370b.getSourceFile());
        }
        if (f43369m || this.f43370b.getSourceFile() == null) {
            return null;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean hasLineNumber() {
        return this.f43377i != -1;
    }

    @Override
    public final boolean hasRetracedClass() {
        return this.f43371c != null;
    }

    @Override
    public final boolean hasRetracedField() {
        return this.f43373e != null;
    }

    @Override
    public final boolean hasRetracedFieldOrReturnType() {
        return this.f43374f != null;
    }

    @Override
    public final boolean hasRetracedMethod() {
        return this.f43372d != null;
    }

    @Override
    public final boolean hasRetracedMethodArguments() {
        return this.f43375g != null;
    }

    @Override
    public final boolean hasSourceFile() {
        return this.f43376h != null;
    }

    @Override
    public final boolean isAmbiguous() {
        return this.f43378j;
    }

    @Override
    public final boolean isTopFrame() {
        return this.f43379k;
    }
}
