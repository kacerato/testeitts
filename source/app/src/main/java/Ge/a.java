package Ge;

import java.util.concurrent.atomic.AtomicReferenceArray;

public final class a extends AtomicReferenceArray<De.c> implements De.c {

    public static final long f7789b = 2746389416410565408L;

    public a(int i10) {
        super(i10);
    }

    public De.c a(int i10, De.c cVar) {
        De.c cVar2;
        do {
            cVar2 = get(i10);
            if (cVar2 == d.DISPOSED) {
                cVar.dispose();
                return null;
            }
        } while (!compareAndSet(i10, cVar2, cVar));
        return cVar2;
    }

    public boolean b(int i10, De.c cVar) {
        De.c cVar2;
        do {
            cVar2 = get(i10);
            if (cVar2 == d.DISPOSED) {
                cVar.dispose();
                return false;
            }
        } while (!compareAndSet(i10, cVar2, cVar));
        if (cVar2 == null) {
            return true;
        }
        cVar2.dispose();
        return true;
    }

    @Override
    public boolean d() {
        return get(0) == d.DISPOSED;
    }

    @Override
    public void dispose() {
        De.c andSet;
        if (get(0) != d.DISPOSED) {
            int length = length();
            for (int i10 = 0; i10 < length; i10++) {
                De.c cVar = get(i10);
                d dVar = d.DISPOSED;
                if (cVar != dVar && (andSet = getAndSet(i10, dVar)) != dVar && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }
}
