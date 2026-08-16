package com.android.tools.r8;

import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.naming.C10912b;
import java.io.PrintStream;
import java.util.function.Consumer;

public final class A implements B {

    public final PrintStream f35102a;

    public A(PrintStream printStream) {
        this.f35102a = printStream;
    }

    public final PrintStream a(com.android.tools.r8.graph.E0 e02) {
        return this.f35102a;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final void close() {
        this.f35102a.flush();
        this.f35102a.close();
    }

    @Override
    public final com.android.tools.r8.graph.A0 a(C10912b c10912b) {
        return new com.android.tools.r8.graph.A0() {
            @Override
            public final PrintStream a(com.android.tools.r8.graph.E0 e02) {
                return A.this.a(e02);
            }
        };
    }

    @Override
    public final Consumer a() {
        return C6628bi.b();
    }
}
