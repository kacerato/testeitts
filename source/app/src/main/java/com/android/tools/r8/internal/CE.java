package com.android.tools.r8.internal;

import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public class CE implements Iterable<AbstractC10561zE> {

    public static final boolean f39165f = true;

    public final W5 f39166b;

    public AbstractC10561zE f39167c;

    public AbstractC10561zE f39168d;

    public int f39169e;

    public CE(W5 w52) {
        this.f39166b = w52;
    }

    public AbstractC10561zE a() {
        if (f39165f || !isEmpty()) {
            return this.f39167c;
        }
        throw new AssertionError();
    }

    public AbstractC10561zE b() {
        if (f39165f || !isEmpty()) {
            return this.f39168d;
        }
        throw new AssertionError();
    }

    public final void c(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.V0().isEmpty()) {
            if (!f39165f && abstractC10561zE.d() != null && abstractC10561zE.d().P()) {
                throw new AssertionError();
            }
            b(abstractC10561zE.U0());
            return;
        }
        a(abstractC10561zE, new C6797cj(), null);
    }

    public final void d(AbstractC10561zE abstractC10561zE) {
        boolean z10 = f39165f;
        if (!z10 && !isEmpty()) {
            throw new AssertionError();
        }
        W5 w52 = abstractC10561zE.f54317b;
        CE l10 = w52.l();
        if (!z10 && w52.f45303p != this.f39166b.f45303p) {
            throw new AssertionError();
        }
        this.f39167c = abstractC10561zE;
        this.f39168d = l10.f39168d;
        AbstractC10561zE abstractC10561zE2 = abstractC10561zE.f54318c;
        l10.f39168d = abstractC10561zE2;
        if (abstractC10561zE2 == null) {
            l10.f39167c = null;
        } else {
            abstractC10561zE2.f54319d = null;
            abstractC10561zE.f54318c = null;
        }
        W5 w53 = this.f39166b;
        int i10 = 0;
        while (abstractC10561zE != null) {
            i10++;
            abstractC10561zE.f54317b = w53;
            abstractC10561zE = abstractC10561zE.f54319d;
        }
        this.f39169e = i10;
        l10.f39169e -= i10;
    }

    public final boolean isEmpty() {
        return this.f39167c == null;
    }

    public AbstractC10561zE j(int i10) {
        if (!f39165f && (i10 < 0 || i10 >= this.f39169e)) {
            throw new AssertionError((Object) ("n=" + i10 + " size=" + this.f39169e));
        }
        int i11 = this.f39169e;
        int i12 = 0;
        if (i10 <= i11 / 2) {
            AbstractC10561zE abstractC10561zE = this.f39167c;
            while (i12 < i10) {
                abstractC10561zE = abstractC10561zE.f54319d;
                i12++;
            }
            return abstractC10561zE;
        }
        AbstractC10561zE abstractC10561zE2 = this.f39168d;
        int i13 = (i11 - i10) - 1;
        while (i12 < i13) {
            abstractC10561zE2 = abstractC10561zE2.f54318c;
            i12++;
        }
        return abstractC10561zE2;
    }

    public int size() {
        return this.f39169e;
    }

    public Stream<AbstractC10561zE> stream() {
        return StreamSupport.stream(new BE(this), false);
    }

    public void a(AbstractC10561zE abstractC10561zE) {
        a(abstractC10561zE, this.f39167c);
    }

    public final void b(AbstractC10561zE abstractC10561zE) {
        if (!f39165f) {
            for (AbstractC10561zE abstractC10561zE2 = this.f39167c; abstractC10561zE2 != null; abstractC10561zE2 = abstractC10561zE2.f54319d) {
                if (abstractC10561zE2 != abstractC10561zE) {
                }
            }
            throw new AssertionError();
        }
        abstractC10561zE.f54317b = null;
        AbstractC10561zE abstractC10561zE3 = abstractC10561zE.f54318c;
        AbstractC10561zE abstractC10561zE4 = abstractC10561zE.f54319d;
        if (this.f39167c == abstractC10561zE) {
            this.f39167c = abstractC10561zE4;
        }
        if (this.f39168d == abstractC10561zE) {
            this.f39168d = abstractC10561zE3;
        }
        if (abstractC10561zE3 != null) {
            abstractC10561zE3.f54319d = abstractC10561zE4;
        }
        if (abstractC10561zE4 != null) {
            abstractC10561zE4.f54318c = abstractC10561zE3;
        }
        this.f39169e--;
    }

    public final void a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        boolean z10 = f39165f;
        if (!z10 && abstractC10561zE.f54317b != null) {
            throw new AssertionError();
        }
        if (abstractC10561zE2 != null && !z10) {
            for (AbstractC10561zE abstractC10561zE3 = this.f39167c; abstractC10561zE3 != null; abstractC10561zE3 = abstractC10561zE3.f54319d) {
                if (abstractC10561zE3 != abstractC10561zE2) {
                }
            }
            throw new AssertionError();
        }
        int i10 = this.f39169e;
        if (i10 == 0) {
            if (!z10 && abstractC10561zE2 != null) {
                throw new AssertionError();
            }
            this.f39167c = abstractC10561zE;
            this.f39168d = abstractC10561zE;
        } else if (abstractC10561zE2 == null) {
            AbstractC10561zE abstractC10561zE4 = this.f39168d;
            abstractC10561zE.f54318c = abstractC10561zE4;
            abstractC10561zE4.f54319d = abstractC10561zE;
            this.f39168d = abstractC10561zE;
        } else {
            AbstractC10561zE abstractC10561zE5 = abstractC10561zE2.f54318c;
            abstractC10561zE.f54318c = abstractC10561zE5;
            abstractC10561zE.f54319d = abstractC10561zE2;
            abstractC10561zE2.f54318c = abstractC10561zE;
            if (abstractC10561zE5 == null) {
                if (!z10 && this.f39167c != abstractC10561zE2) {
                    throw new AssertionError();
                }
                this.f39167c = abstractC10561zE;
            } else {
                abstractC10561zE5.f54319d = abstractC10561zE;
            }
        }
        this.f39169e = i10 + 1;
        W5 w52 = this.f39166b;
        abstractC10561zE.f54317b = w52;
        C8382mB c8382mB = w52.f45303p;
        c8382mB.getClass();
        int r22 = abstractC10561zE.r2();
        if (r22 < 64) {
            c8382mB.f50231b = (1 << r22) | c8382mB.f50231b;
        } else {
            if (!C8382mB.f50230d && r22 >= 128) {
                throw new AssertionError();
            }
            c8382mB.f50232c = (1 << (r22 - 64)) | c8382mB.f50232c;
        }
    }

    @Override
    public Y5 iterator() {
        return new Y5(this.f39166b, 0);
    }

    public final void a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2, C10696a c10696a) {
        ArrayList arrayList = abstractC10561zE.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw0 = (C10340xw0) obj;
            c10340xw0.f53887d.remove(abstractC10561zE);
            c10340xw0.f53888e = null;
        }
        if (abstractC10561zE.f1()) {
            if (!f39165f && abstractC10561zE2.d() == null) {
                throw new AssertionError();
            }
            if (c10696a != null && !abstractC10561zE2.a().equals(abstractC10561zE.a())) {
                abstractC10561zE.d().a(c10696a);
            }
            abstractC10561zE.d().f(abstractC10561zE2.d());
        }
        abstractC10561zE.c(abstractC10561zE2);
        if (abstractC10561zE2.f54324i == null) {
            abstractC10561zE2.b(abstractC10561zE.getPosition());
        }
        a(abstractC10561zE2, abstractC10561zE);
        b(abstractC10561zE);
    }
}
