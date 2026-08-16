package com.android.tools.r8.internal;

import java.io.PrintStream;
import java.util.function.BiConsumer;

public final class C7991js0 extends C7825is0 {

    public static final boolean f49386k = true;

    public final int f49387i;

    public final C8325ls0 f49388j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7991js0(C8325ls0 c8325ls0, String str, boolean z10, int i10) {
        super(str, z10);
        this.f49388j = c8325ls0;
        this.f49387i = i10;
    }

    @Override
    public final void a(final int i10, C7825is0 c7825is0) {
        if (!f49386k && this.f49081d < 0) {
            throw new AssertionError();
        }
        C7825is0.b(i10);
        PrintStream printStream = System.out;
        printStream.print(toString());
        int i11 = this.f49387i;
        if (i11 <= 0) {
            printStream.println(" (unknown thread count)");
        } else {
            C8325ls0 c8325ls0 = this.f49388j;
            long j10 = c8325ls0.f50128a.f49081d;
            long j11 = this.f49081d / i11;
            printStream.println(", tasks: " + c8325ls0.f50130c + ", threads: " + i11 + ", utilization: " + C8659ns0.a(j11, j10));
        }
        if (this.f49079b) {
            a(i10);
        }
        this.f49080c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7991js0.this.a(i10, (String) obj, (C7825is0) obj2);
            }
        });
        C7825is0 c7825is02 = this.f49388j.f50131d;
        if (c7825is02 == null || c7825is02.f49081d <= 0) {
            return;
        }
        C7825is0.b(i10);
        printStream.println("SLOWEST " + this.f49388j.f50131d.a(this));
        this.f49388j.f50131d.f49080c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7991js0.this.b(i10, (String) obj, (C7825is0) obj2);
            }
        });
    }

    public final void b(int i10, String str, C7825is0 c7825is0) {
        c7825is0.a(i10 + 1, this);
    }

    @Override
    public final String toString() {
        return "MERGE " + super.toString();
    }

    public final void a(int i10, String str, C7825is0 c7825is0) {
        c7825is0.a(i10 + 1, this);
    }
}
