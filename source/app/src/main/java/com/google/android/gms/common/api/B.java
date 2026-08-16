package com.google.android.gms.common.api;

import com.google.android.gms.common.api.p;

public final class B implements p.a {

    public final C11896c f61029a;

    public B(C11896c c11896c) {
        this.f61029a = c11896c;
    }

    @Override
    public final void a(Status status) {
        Object obj;
        int i10;
        int i11;
        boolean z10;
        boolean z11;
        p[] pVarArr;
        obj = this.f61029a.f61064v;
        synchronized (obj) {
            try {
                if (this.f61029a.g()) {
                    return;
                }
                if (status.v0()) {
                    this.f61029a.f61062t = true;
                } else if (!status.x0()) {
                    this.f61029a.f61061s = true;
                }
                C11896c c11896c = this.f61029a;
                i10 = c11896c.f61060r;
                c11896c.f61060r = i10 - 1;
                C11896c c11896c2 = this.f61029a;
                i11 = c11896c2.f61060r;
                if (i11 == 0) {
                    z10 = c11896c2.f61062t;
                    if (z10) {
                        super/*com.google.android.gms.common.api.internal.BasePendingResult*/.f();
                    } else {
                        z11 = c11896c2.f61061s;
                        Status status2 = z11 ? new Status(13) : Status.f61039g;
                        C11896c c11896c3 = this.f61029a;
                        pVarArr = c11896c3.f61063u;
                        c11896c3.o(new C11897d(status2, pVarArr));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
