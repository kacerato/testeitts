package dm;

import ci.C4198i;
import java.util.ArrayList;
import java.util.List;

public class C12967a implements p {

    public List<List<byte[]>> f84852a;

    @Override
    public byte[] a(Qk.p pVar, C4198i[] c4198iArr) {
        byte[] j10 = q.j(pVar, c4198iArr[0]);
        for (int i10 = 1; i10 < c4198iArr.length; i10++) {
            j10 = q.d(pVar, j10, q.j(pVar, c4198iArr[i10]));
        }
        return j10;
    }

    @Override
    public byte[] b(Qk.p pVar, C4198i[] c4198iArr) {
        ArrayList arrayList;
        t tVar = new t();
        for (C4198i c4198i : c4198iArr) {
            tVar.a(q.j(pVar, c4198i));
        }
        List<byte[]> d10 = tVar.d();
        ArrayList arrayList2 = new ArrayList();
        this.f84852a = arrayList2;
        arrayList2.add(d10);
        if (d10.size() > 1) {
            while (true) {
                arrayList = new ArrayList((d10.size() / 2) + 1);
                for (int i10 = 0; i10 <= d10.size() - 2; i10 += 2) {
                    arrayList.add(q.d(pVar, d10.get(i10), d10.get(i10 + 1)));
                }
                if (d10.size() % 2 == 1) {
                    arrayList.add(d10.get(d10.size() - 1));
                }
                this.f84852a.add(arrayList);
                if (arrayList.size() <= 1) {
                    break;
                }
                d10 = arrayList;
            }
            d10 = arrayList;
        }
        return d10.get(0);
    }

    @Override
    public C4198i[] c(Qk.p pVar, C4198i c4198i, int i10) {
        List<byte[]> list;
        int i11;
        ArrayList arrayList = new ArrayList();
        byte[] j10 = q.j(pVar, c4198i);
        arrayList.add(c4198i);
        int i12 = 0;
        while (i12 < this.f84852a.size() - 1) {
            if (i10 == this.f84852a.get(i12).size() - 1) {
                while (true) {
                    int i13 = i12 + 1;
                    if (!org.bouncycastle.util.a.g(j10, this.f84852a.get(i13).get(r3.size() - 1))) {
                        break;
                    }
                    i10 = this.f84852a.get(i13).size() - 1;
                    i12 = i13;
                }
            }
            if ((i10 & 1) == 0) {
                list = this.f84852a.get(i12);
                i11 = i10 + 1;
            } else {
                list = this.f84852a.get(i12);
                i11 = i10 - 1;
            }
            byte[] bArr = list.get(i11);
            arrayList.add(new C4198i(bArr));
            j10 = q.d(pVar, j10, bArr);
            i10 /= 2;
            i12++;
        }
        return (C4198i[]) arrayList.toArray(new C4198i[0]);
    }
}
