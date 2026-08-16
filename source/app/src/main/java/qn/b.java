package qn;

import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public abstract class b {
    public abstract List<byte[]> b(int tx, int ty, ByteOrder order, boolean cCompatibility);

    public List<byte[]> c(ByteOrder order, boolean cCompatibility, int threads, int tw, int th2) {
        return threads == 1 ? e(order, cCompatibility, tw, th2) : d(order, cCompatibility, tw, th2, threads);
    }

    public final List<byte[]> d(final ByteOrder order, final boolean cCompatibility, int tw, int th2, int threads) {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(threads);
        final List[][] listArr = (List[][]) Array.newInstance((Class<?>) List.class, th2, tw);
        for (int i10 = 0; i10 < th2; i10++) {
            for (int i11 = 0; i11 < tw; i11++) {
                final int i12 = i10;
                final int i13 = i11;
                newFixedThreadPool.submit(new Runnable() {
                    @Override
                    public final void run() {
                        b.this.f(listArr, i12, i13, order, cCompatibility);
                    }
                });
            }
        }
        newFixedThreadPool.shutdown();
        try {
            newFixedThreadPool.awaitTermination(1000L, TimeUnit.HOURS);
        } catch (InterruptedException unused) {
        }
        ArrayList arrayList = new ArrayList();
        for (int i14 = 0; i14 < th2; i14++) {
            for (int i15 = 0; i15 < tw; i15++) {
                arrayList.addAll(listArr[i14][i15]);
            }
        }
        return arrayList;
    }

    public final List<byte[]> e(ByteOrder order, boolean cCompatibility, int tw, int th2) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < th2; i10++) {
            for (int i11 = 0; i11 < tw; i11++) {
                arrayList.addAll(b(i11, i10, order, cCompatibility));
            }
        }
        return arrayList;
    }

    public final void f(List[][] listArr, int i10, int i11, ByteOrder byteOrder, boolean z10) {
        listArr[i10][i11] = b(i11, i10, byteOrder, z10);
    }
}
