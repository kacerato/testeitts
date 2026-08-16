package com.android.tools.r8;

import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.naming.C10912b;
import java.io.PrintStream;
import java.util.function.Consumer;

public final class C implements B {
    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final void close() {
    }

    @Override
    public final com.android.tools.r8.graph.A0 a(C10912b c10912b) {
        return new com.android.tools.r8.graph.A0() {
            @Override
            public final PrintStream a(com.android.tools.r8.graph.E0 e02) {
                PrintStream printStream;
                printStream = System.out;
                return printStream;
            }
        };
    }

    @Override
    public final Consumer a() {
        return C6628bi.b();
    }
}
