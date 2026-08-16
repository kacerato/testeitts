package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public final class A50 extends R2 {

    public final List f38529c;

    public final Runnable f38530d;

    public A50(B50 b50, AbstractC7552hC abstractC7552hC, Runnable runnable) {
        super(b50);
        this.f38529c = abstractC7552hC;
        this.f38530d = runnable;
    }

    public final void a(Object obj) {
    }

    @Override
    public final void a(Object obj, String str) {
        Iterator it = this.f38529c.iterator();
        while (it.hasNext()) {
            if (((InterfaceC10368y50) it.next()).a(str, new C9011py0(this), obj)) {
                return;
            }
        }
        super.a(obj, str);
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A50(B50 b50, InterfaceC10368y50 interfaceC10368y50, Runnable runnable) {
        super(b50);
        List singletonList = Collections.singletonList(interfaceC10368y50);
        this.f38529c = singletonList;
        this.f38530d = runnable;
    }

    @Override
    public final Q2 a(String str) {
        Iterator it = this.f38529c.iterator();
        while (it.hasNext()) {
            Q2 a10 = ((InterfaceC10368y50) it.next()).a(new C9011py0(this), str);
            if (a10 != null) {
                return a10;
            }
        }
        super.a(str);
        throw null;
    }

    @Override
    public final void a(String str, String str2, String str3) {
        Iterator it = this.f38529c.iterator();
        while (it.hasNext()) {
            if (((InterfaceC10368y50) it.next()).a(str, str2, str3, new C9011py0(this))) {
                return;
            }
        }
        super.a(str, str2, str3);
        throw null;
    }

    @Override
    public final Q2 a(String str, String str2) {
        Iterator it = this.f38529c.iterator();
        while (it.hasNext()) {
            Q2 a10 = ((InterfaceC10368y50) it.next()).a(str, (Consumer) new C9011py0(this), str2);
            if (a10 != null) {
                return a10;
            }
        }
        super.a(str, str2);
        throw null;
    }

    @Override
    public final void a() {
        this.f38530d.run();
        super.a();
    }
}
