package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.InterfaceC6522b2;

public final class C11448u0 extends L0 {
    public C11448u0(C11465v0 c11465v0) {
        super(c11465v0.f56692a, c11465v0.f56693b);
    }

    @Override
    public final void a(AbstractC11279k0 abstractC11279k0) {
        a("EnqueuerAction " + ((Object) abstractC11279k0));
        throw null;
    }

    @Override
    public final C11448u0 b() {
        return this;
    }

    @Override
    public final void c(com.android.tools.r8.graph.H2 h22) {
        a("TraceDirectAndIndirectClassInitializers " + ((Object) h22));
        throw null;
    }

    public static void a(String str) {
        throw new C5417Jv0("Attempt to enqueue an action in a non pushable enqueuer work list (" + str + ")");
    }

    @Override
    public final void b(com.android.tools.r8.graph.H2 h22) {
        a("MarkInterfaceInstantiatedAction " + ((Object) h22));
        throw null;
    }

    @Override
    public final void c(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        a("TraceReflectiveFieldWriteAction " + ((Object) f52) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(InterfaceC6522b2 interfaceC6522b2) {
        interfaceC6522b2.a();
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        a("TraceInvokeStaticAction " + ((Object) a22) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, X1 x12) {
        a("MarkReachableDirectAction " + ((Object) a22) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        a("TraceNewInstanceAction " + ((Object) m22) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        a("MarkReachableSuperAction " + ((Object) a22) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void b(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        a("TraceReflectiveFieldReadAction " + ((Object) f52) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52, X1 x12) {
        a("MarkFieldAsReachableAction " + ((Object) f52) + " from " + ((Object) d52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52, int i10, X1 x12) {
        a("MarkInstantiatedAction " + ((Object) h22) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22) {
        a("MarkAnnotationInstantiatedAction " + ((Object) h22));
        throw null;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, X1 x12) {
        N n10 = this.f56692a;
        n10.a(h52);
        if (!n10.f56774Q.a(x12, h52)) {
            return false;
        }
        a("MarkMethodLiveAction " + ((Object) h52) + " from " + ((Object) d52));
        throw null;
    }

    @Override
    public final void a(X1 x12, com.android.tools.r8.graph.H5 h52) {
        a("MarkMethodKeptAction " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52) {
        a("MarkFieldKeptAction " + ((Object) f52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.D5 d52, C4666r0 c4666r0, EnumC4629p0 enumC4629p0) {
        a("TraceAnnotationAction " + ((Object) c4666r0) + " from " + ((Object) d52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52) {
        a("TraceCodeAction " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        a("TraceConstClassAction " + ((Object) m22) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C11498x c11498x) {
        a("TraceInvokeDirectAction " + ((Object) a22) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        a("TraceReflectiveFieldAccessAction " + ((Object) f52) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52) {
        a("TraceStaticFieldRead " + ((Object) c4554l1) + " from " + ((Object) h52));
        throw null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, R0 r02) {
        a("TraceTypeReferenceAction " + ((Object) h22));
        throw null;
    }
}
