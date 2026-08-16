package com.android.tools.r8.internal;

import com.android.tools.r8.naming.V;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.retrace.RetraceFieldElement;
import com.android.tools.r8.retrace.RetraceFieldResult;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Stream;

public final class C5740Pj0 implements RetraceFieldResult {

    public static final boolean f43343d = true;

    public final List f43344a;

    public final AbstractC6836cw f43345b;

    public final C10137wk0 f43346c;

    public C5740Pj0(C5624Nj0 c5624Nj0, List list, AbstractC6836cw abstractC6836cw, C10137wk0 c10137wk0) {
        this.f43344a = list;
        this.f43345b = abstractC6836cw;
        this.f43346c = c10137wk0;
        boolean z10 = f43343d;
        if (!z10 && c5624Nj0 == null) {
            throw new AssertionError();
        }
        if (!z10 && list.isEmpty()) {
            throw new AssertionError();
        }
    }

    public final Stream a(C8699o50 c8699o50) {
        final C5566Mj0 c5566Mj0 = (C5566Mj0) c8699o50.a();
        List list = (List) c8699o50.b();
        if (list == null) {
            return Stream.of(new C5682Oj0(this, c5566Mj0, new C8635nk0(this.f43345b.a(c5566Mj0.f42356b.f50088a)), null));
        }
        return list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5740Pj0.this.a(c5566Mj0, (com.android.tools.r8.naming.V) obj);
            }
        });
    }

    @Override
    public final boolean isAmbiguous() {
        if (this.f43344a.size() > 1) {
            return true;
        }
        List list = (List) ((C8699o50) this.f43344a.get(0)).b();
        return list != null && list.size() > 1;
    }

    @Override
    public final boolean isEmpty() {
        List list = this.f43344a;
        return list == null || list.isEmpty() || (this.f43344a.size() == 1 && ((C8699o50) this.f43344a.get(0)).b() == null);
    }

    @Override
    public final Stream<RetraceFieldElement> stream() {
        return this.f43344a.stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5740Pj0.this.a((C8699o50) obj);
            }
        });
    }

    public final C5682Oj0 a(C5566Mj0 c5566Mj0, com.android.tools.r8.naming.V v10) {
        C8301lk0 c8301lk0;
        String str;
        V.a a10 = v10.a().a();
        if (a10.d()) {
            c8301lk0 = new C8301lk0(true, Reference.classFromDescriptor(C4932Bl.H(a10.f())));
        } else {
            c8301lk0 = c5566Mj0.f42356b;
        }
        ClassReference classReference = c8301lk0.f50088a;
        if (a10.d()) {
            str = a10.g();
        } else {
            str = a10.f55777a;
        }
        return new C5682Oj0(this, c5566Mj0, new C8468mk0(Reference.field(classReference, str, Reference.typeFromTypeName(a10.f55772c))), v10);
    }
}
