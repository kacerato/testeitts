package qd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import td.C15398d;

public final class C15057B extends z {

    public static final AtomicReferenceFieldUpdater<C15057B, z[]> f106055f = AtomicReferenceFieldUpdater.newUpdater(C15057B.class, z[].class, com.itsmagic.engine.Engines.Engine.Animation.a.f72598f);

    public volatile z[] f106056e;

    public C15057B() {
        super(-1L);
        this.f106056e = new z[0];
    }

    @Override
    public long c() {
        return C15398d.c(this.f106056e);
    }

    @Override
    public void e(long j10) {
        for (z zVar : this.f106056e) {
            zVar.e(j10);
        }
    }

    public void g(z zVar) {
        z[] zVarArr;
        z[] zVarArr2;
        do {
            zVarArr = this.f106056e;
            int length = zVarArr.length;
            zVarArr2 = new z[length + 1];
            System.arraycopy(zVarArr, 0, zVarArr2, 0, length);
            zVarArr2[length] = zVar;
        } while (!androidx.concurrent.futures.a.a(f106055f, this, zVarArr, zVarArr2));
    }

    public void h(InterfaceC15063f interfaceC15063f, z zVar) {
        C.a(this, f106055f, interfaceC15063f, zVar);
    }

    public boolean i(z zVar) {
        return C.c(this, f106055f, zVar);
    }

    public int j() {
        return this.f106056e.length;
    }
}
