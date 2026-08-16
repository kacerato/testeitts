package Ue;

import java.util.concurrent.atomic.AtomicReferenceArray;

public final class a extends AtomicReferenceArray<hn.d> implements De.c {

    public static final long f26017b = 2746389416410565408L;

    public a(int i10) {
        super(i10);
    }

    public hn.d a(int i10, hn.d dVar) {
        hn.d dVar2;
        do {
            dVar2 = get(i10);
            if (dVar2 == j.CANCELLED) {
                if (dVar == null) {
                    return null;
                }
                dVar.cancel();
                return null;
            }
        } while (!compareAndSet(i10, dVar2, dVar));
        return dVar2;
    }

    public boolean b(int i10, hn.d dVar) {
        hn.d dVar2;
        do {
            dVar2 = get(i10);
            if (dVar2 == j.CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!compareAndSet(i10, dVar2, dVar));
        if (dVar2 == null) {
            return true;
        }
        dVar2.cancel();
        return true;
    }

    @Override
    public boolean d() {
        return get(0) == j.CANCELLED;
    }

    @Override
    public void dispose() {
        hn.d andSet;
        if (get(0) != j.CANCELLED) {
            int length = length();
            for (int i10 = 0; i10 < length; i10++) {
                hn.d dVar = get(i10);
                j jVar = j.CANCELLED;
                if (dVar != jVar && (andSet = getAndSet(i10, jVar)) != jVar && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }
}
