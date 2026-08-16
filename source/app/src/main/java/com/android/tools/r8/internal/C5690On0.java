package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedFieldReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedSourceFile;
import com.android.tools.r8.retrace.RetracedTypeReference;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import java.util.List;
import java.util.function.Consumer;

public final class C5690On0 {

    public static final boolean f43030l = true;

    public final StackTraceElementProxy f43031a;

    public RetracedClassReference f43032b;

    public RetracedMethodReference f43033c;

    public RetracedFieldReference f43034d;

    public RetracedTypeReference f43035e;

    public List f43036f;

    public RetracedSourceFile f43037g;

    public int f43038h = -1;

    public boolean f43039i;

    public boolean f43040j;

    public RetraceStackTraceContext f43041k;

    public C5690On0(StackTraceElementProxy stackTraceElementProxy) {
        this.f43031a = stackTraceElementProxy;
    }

    public final C5690On0 a(boolean z10) {
        this.f43039i = z10 || this.f43039i;
        return this;
    }

    public final C5690On0 a(Consumer consumer) {
        consumer.accept(this);
        return this;
    }

    public final C5690On0 a(boolean z10, Consumer consumer) {
        if (z10) {
            consumer.accept(this);
        }
        return this;
    }

    public final C5748Pn0 a() {
        RetracedClassReference retracedClassReference = this.f43032b;
        RetracedMethodReference retracedMethodReference = this.f43033c;
        if (retracedMethodReference != null) {
            retracedClassReference = retracedMethodReference.getHolderClass();
        }
        return new C5748Pn0(this.f43031a, retracedClassReference, this.f43033c, this.f43034d, this.f43035e, this.f43036f, this.f43037g, this.f43038h, this.f43039i, this.f43040j, this.f43041k);
    }
}
