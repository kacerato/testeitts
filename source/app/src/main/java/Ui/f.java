package Ui;

import java.util.ArrayList;
import java.util.List;

public class f implements c {

    public List f26195a;

    @Override
    public void a(byte[] bArr) {
        long[] k10 = e.k(bArr);
        List list = this.f26195a;
        if (list == null || 0 == e.c(k10, (long[]) list.get(0))) {
            ArrayList arrayList = new ArrayList(8);
            this.f26195a = arrayList;
            arrayList.add(k10);
        }
    }

    @Override
    public void b(long j10, byte[] bArr) {
        long[] I10 = e.I();
        int i10 = 0;
        while (j10 > 0) {
            if ((1 & j10) != 0) {
                e.t(I10, c(i10));
            }
            i10++;
            j10 >>>= 1;
        }
        e.e(I10, bArr);
    }

    public final long[] c(int i10) {
        int size = this.f26195a.size() - 1;
        if (size < i10) {
            long[] jArr = (long[]) this.f26195a.get(size);
            while (true) {
                long[] jArr2 = new long[2];
                e.K(jArr, jArr2);
                this.f26195a.add(jArr2);
                size++;
                if (size >= i10) {
                    break;
                }
                jArr = jArr2;
            }
        }
        return (long[]) this.f26195a.get(i10);
    }
}
