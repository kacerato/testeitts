package jg;

import eg.K0;
import kg.p;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;

public final class C13849p {
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.4.0, binary compatibility with earlier versions")
    public static final InterfaceC13842i a(InterfaceC13842i interfaceC13842i, int i10) {
        InterfaceC13842i d10;
        d10 = d(interfaceC13842i, i10, null, 2, null);
        return d10;
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10, @NotNull gg.i iVar) {
        if (i10 < 0 && i10 != -2 && i10 != -1) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i10).toString());
        }
        if (i10 == -1 && iVar != gg.i.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        }
        if (i10 == -1) {
            iVar = gg.i.DROP_OLDEST;
            i10 = 0;
        }
        int i11 = i10;
        gg.i iVar2 = iVar;
        return interfaceC13842i instanceof kg.p ? p.a.a((kg.p) interfaceC13842i, null, i11, iVar2, 1, null) : new kg.h(interfaceC13842i, null, i11, iVar2, 2, null);
    }

    public static InterfaceC13842i c(InterfaceC13842i interfaceC13842i, int i10, int i11, Object obj) {
        InterfaceC13842i a10;
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        a10 = a(interfaceC13842i, i10);
        return a10;
    }

    public static InterfaceC13842i d(InterfaceC13842i interfaceC13842i, int i10, gg.i iVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        if ((i11 & 2) != 0) {
            iVar = gg.i.SUSPEND;
        }
        return C13844k.o(interfaceC13842i, i10, iVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return interfaceC13842i instanceof InterfaceC13836c ? interfaceC13842i : new C13837d(interfaceC13842i);
    }

    public static final void f(yf.j jVar) {
        if (jVar.get(K0.f85619y4) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + ((Object) jVar)).toString());
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        InterfaceC13842i<T> d10;
        d10 = d(interfaceC13842i, -1, null, 2, null);
        return d10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> InterfaceC13842i<T> h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        f(jVar);
        return kotlin.jvm.internal.M.g(jVar, yf.l.f130251b) ? interfaceC13842i : interfaceC13842i instanceof kg.p ? p.a.a((kg.p) interfaceC13842i, jVar, 0, null, 6, null) : new kg.h(interfaceC13842i, jVar, 0, null, 12, null);
    }
}
