package com.android.tools.r8.internal;

import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.retrace.RetraceStackTraceElementProxy;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import java.util.ArrayList;

public final class C6095Vn0 extends StackTraceElementProxy<String, C6095Vn0> {

    public static final boolean f45166j = true;

    public final String f45167a;

    public final ArrayList f45168b;

    public final C5922Sn0 f45169c;

    public final C6038Un0 f45170d;

    public final C6038Un0 f45171e;

    public final C6038Un0 f45172f;

    public final C6038Un0 f45173g;

    public final C6038Un0 f45174h;

    public final C6038Un0 f45175i;

    public C6095Vn0(String str, ArrayList arrayList, C5922Sn0 c5922Sn0, C6038Un0 c6038Un0, C6038Un0 c6038Un02, C6038Un0 c6038Un03, C6038Un0 c6038Un04, C6038Un0 c6038Un05, C6038Un0 c6038Un06) {
        this.f45167a = str;
        this.f45168b = arrayList;
        this.f45169c = c5922Sn0;
        this.f45170d = c6038Un0;
        this.f45171e = c6038Un02;
        this.f45172f = c6038Un03;
        this.f45173g = c6038Un04;
        this.f45174h = c6038Un05;
        this.f45175i = c6038Un06;
    }

    public final String a(C6038Un0 c6038Un0) {
        if (f45166j || c6038Un0 != C5922Sn0.f44310e) {
            return this.f45167a.substring(c6038Un0.f44870a, c6038Un0.f44871b);
        }
        throw new AssertionError();
    }

    @Override
    public final ClassReference getClassReference() {
        if (!this.f45169c.a()) {
            return null;
        }
        C5922Sn0 c5922Sn0 = this.f45169c;
        String substring = this.f45167a.substring(c5922Sn0.f44870a, c5922Sn0.f44871b);
        return c5922Sn0.f44311d == EnumC5864Rn0.f43991b ? Reference.classFromBinaryName(substring) : Reference.classFromTypeName(substring);
    }

    @Override
    public final String getFieldName() {
        if (this.f45173g.a()) {
            return a(this.f45173g);
        }
        return null;
    }

    @Override
    public final String getFieldOrReturnType() {
        if (this.f45174h.a()) {
            return a(this.f45174h);
        }
        return null;
    }

    @Override
    public final int getLineNumber() {
        if (!this.f45172f.a()) {
            return -1;
        }
        try {
            String a10 = a(this.f45172f);
            if (a10.startsWith(b3.s.f32937c)) {
                a10 = a10.substring(1);
            }
            if (a10.isEmpty()) {
                return -1;
            }
            return Integer.parseInt(a10);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    @Override
    public final String getMethodArguments() {
        if (this.f45175i.a()) {
            return a(this.f45175i);
        }
        return null;
    }

    @Override
    public final String getMethodName() {
        if (this.f45170d.a()) {
            return a(this.f45170d);
        }
        return null;
    }

    @Override
    public final String getSourceFile() {
        if (this.f45171e.a()) {
            return a(this.f45171e);
        }
        return null;
    }

    @Override
    public final boolean hasClassName() {
        return this.f45169c.a();
    }

    @Override
    public final boolean hasFieldName() {
        return this.f45173g.a();
    }

    @Override
    public final boolean hasFieldOrReturnType() {
        return this.f45174h.a();
    }

    @Override
    public final boolean hasLineNumber() {
        return this.f45172f.a();
    }

    @Override
    public final boolean hasMethodArguments() {
        return this.f45175i.a();
    }

    @Override
    public final boolean hasMethodName() {
        return this.f45170d.a();
    }

    @Override
    public final boolean hasSourceFile() {
        return this.f45171e.a();
    }

    @Override
    public final String toRetracedItem(RetraceStackTraceElementProxy<String, C6095Vn0> retraceStackTraceElementProxy, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = this.f45168b;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C6038Un0 c6038Un0 = (C6038Un0) obj;
            sb2.append((CharSequence) this.f45167a, i11, c6038Un0.f44870a);
            sb2.append((String) c6038Un0.f44872c.a(retraceStackTraceElementProxy, this, Boolean.valueOf(z10)));
            i11 = c6038Un0.f44871b;
        }
        String str = this.f45167a;
        sb2.append((CharSequence) str, i11, str.length());
        return sb2.toString();
    }
}
