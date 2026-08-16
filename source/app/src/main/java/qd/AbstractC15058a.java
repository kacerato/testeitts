package qd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import td.C15398d;

public abstract class AbstractC15058a implements E {

    public static final AtomicReferenceFieldUpdater<AbstractC15058a, z[]> f106083f = AtomicReferenceFieldUpdater.newUpdater(AbstractC15058a.class, z[].class, com.itsmagic.engine.Engines.Engine.Animation.a.f72598f);

    public final int f106084b;

    public final J f106085c;

    public final z f106086d = new z(-1);

    public volatile z[] f106087e = new z[0];

    public AbstractC15058a(int i10, J j10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("bufferSize must not be less than 1");
        }
        if (Integer.bitCount(i10) != 1) {
            throw new IllegalArgumentException("bufferSize must be a power of 2");
        }
        this.f106084b = i10;
        this.f106085c = j10;
    }

    @Override
    public boolean a(z zVar) {
        return C.c(this, f106083f, zVar);
    }

    @Override
    public long e() {
        return C15398d.d(this.f106087e, this.f106086d.c());
    }

    @Override
    public final long getCursor() {
        return this.f106086d.c();
    }

    @Override
    public InterfaceC15056A i(z... zVarArr) {
        return new x(this, this.f106085c, this.f106086d, zVarArr);
    }

    @Override
    public final void k(z... zVarArr) {
        C.a(this, f106083f, this, zVarArr);
    }

    @Override
    public final int m() {
        return this.f106084b;
    }
}
