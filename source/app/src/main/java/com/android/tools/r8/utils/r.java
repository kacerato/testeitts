package com.android.tools.r8.utils;

import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.ProgramConsumer;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.KU;
import com.android.tools.r8.naming.H0;
import com.android.tools.r8.utils.C11662i;

public class r {

    public static final boolean f58632e = true;

    public final C11662i.a f58633a;

    public boolean f58634b;

    public ProgramConsumer f58635c;

    public final KU f58636d;

    public r() {
        this.f58633a = C11662i.b();
        this.f58634b = false;
        this.f58635c = null;
        this.f58636d = null;
    }

    public ProgramConsumer a(ProgramConsumer programConsumer) {
        boolean z10 = f58632e;
        if (!z10 && this.f58635c != null) {
            throw new AssertionError();
        }
        if (programConsumer instanceof ClassFileConsumer) {
            a((ClassFileConsumer) programConsumer);
        } else if (programConsumer instanceof DexIndexedConsumer) {
            a((DexIndexedConsumer) programConsumer);
        } else if (programConsumer instanceof DexFilePerClassFileConsumer) {
            DexFilePerClassFileConsumer dexFilePerClassFileConsumer = (DexFilePerClassFileConsumer) programConsumer;
            if (!z10 && this.f58635c != null) {
                throw new AssertionError();
            }
            this.f58635c = new C11667n(this, dexFilePerClassFileConsumer, dexFilePerClassFileConsumer);
        } else {
            if (!z10 && programConsumer != null) {
                throw new AssertionError();
            }
            a((DexIndexedConsumer) null);
        }
        if (z10 || this.f58635c != null) {
            return this.f58635c;
        }
        throw new AssertionError();
    }

    public r(BaseCompilerCommand.Builder<?, ?> builder) {
        this.f58633a = C11662i.b();
        this.f58634b = false;
        this.f58635c = null;
        this.f58636d = null;
        builder.setProgramConsumer(a(builder.getProgramConsumer()));
    }

    public r(C8570nJ c8570nJ) {
        this.f58633a = C11662i.b();
        this.f58634b = false;
        this.f58635c = null;
        this.f58636d = null;
        c8570nJ.f50697l = a(c8570nJ.f50697l);
        com.android.tools.r8.naming.Q q10 = c8570nJ.f50632Q1;
        if (q10 != null) {
            this.f58636d = new KU(q10, new H0(new C11663j(this)));
        }
        c8570nJ.f50632Q1 = this.f58636d;
    }

    public DexIndexedConsumer a(DexIndexedConsumer dexIndexedConsumer) {
        if (!f58632e && this.f58635c != null) {
            throw new AssertionError();
        }
        C11665l c11665l = new C11665l(this, dexIndexedConsumer, dexIndexedConsumer);
        this.f58635c = c11665l;
        return c11665l;
    }

    public ClassFileConsumer a(ClassFileConsumer classFileConsumer) {
        if (!f58632e && this.f58635c != null) {
            throw new AssertionError();
        }
        C11669p c11669p = new C11669p(this, classFileConsumer, classFileConsumer);
        this.f58635c = c11669p;
        return c11669p;
    }

    public C11662i a() {
        if (f58632e || this.f58634b) {
            return this.f58633a.a();
        }
        throw new AssertionError();
    }
}
