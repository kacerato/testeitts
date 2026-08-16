package com.android.tools.r8.naming;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.MapIdProvider;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8570nJ;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public final class L0 {

    public static final boolean f55681f = true;

    public final C10912b f55682a;

    public final C8570nJ f55683b;

    public final Q f55684c;

    public final C5094Ef0 f55685d;

    public final W.b f55686e;

    public L0(C10912b c10912b, W.b bVar, C8570nJ c8570nJ) {
        if (!f55681f && c10912b == null) {
            throw new AssertionError();
        }
        this.f55682a = c10912b.e();
        this.f55684c = c8570nJ.f50632Q1;
        this.f55683b = c8570nJ;
        this.f55685d = c8570nJ.f50691j;
        this.f55686e = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final I0 a() {
        K0 k02 = new K0();
        this.f55682a.a(k02);
        MapIdProvider mapIdProvider = this.f55683b.f50663a2;
        String abstractC7379gA = k02.f55676a.a().toString();
        I0 i02 = new I0(K0.a(mapIdProvider).get(new J0(abstractC7379gA)), abstractC7379gA);
        C11032z0 c11032z0 = new C11032z0(this.f55686e.name(), this.f55683b.P(), this.f55683b.z(), this.f55683b.f50599F1.f50875f1 ? MapVersion.MAP_VERSION_EXPERIMENTAL : MapVersion.STABLE, i02);
        C10912b c10912b = this.f55682a;
        ArrayList a10 = c11032z0.a();
        List list = this.f55682a.f55830f;
        boolean z10 = AT.f38618a;
        if (a10.isEmpty()) {
            a10 = list;
        } else if (!list.isEmpty()) {
            ArrayList arrayList = new ArrayList(list.size() + a10.size());
            arrayList.addAll(a10);
            arrayList.addAll(list);
            a10 = arrayList;
        }
        c10912b.f55830f = a10;
        this.f55684c.a(this.f55685d, this.f55682a);
        C5094Ef0 c5094Ef0 = this.f55685d;
        final Q q10 = this.f55684c;
        Objects.requireNonNull(q10);
        AbstractC8333lv.a(c5094Ef0, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Q.this.finished((DiagnosticsHandler) obj);
            }
        });
        return i02;
    }
}
