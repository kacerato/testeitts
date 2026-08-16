package com.android.tools.r8.internal;

import java.io.OutputStreamWriter;

public abstract class AbstractC10531z4 implements Comparable, InterfaceC9186r1 {
    public abstract Object a(InterfaceC6217Xr0 interfaceC6217Xr0, InterfaceC6217Xr0 interfaceC6217Xr02);

    public abstract void a(InterfaceC6160Wr0 interfaceC6160Wr0, InterfaceC6160Wr0 interfaceC6160Wr02);

    public abstract void a(OutputStreamWriter outputStreamWriter);

    public abstract com.android.tools.r8.graph.J2 c();

    @Override
    public final int compareTo(Object obj) {
        return c().b(((AbstractC10531z4) obj).c());
    }
}
