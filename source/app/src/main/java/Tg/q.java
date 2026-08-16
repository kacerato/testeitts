package Tg;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class q extends AbstractList<f> implements RandomAccess {

    public final f[] f25039b;

    public final int[] f25040c;

    public q(f[] fVarArr, int[] iArr) {
        this.f25039b = fVarArr;
        this.f25040c = iArr;
    }

    public static void a(long j10, C3089c c3089c, int i10, List<f> list, int i11, int i12, List<Integer> list2) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        C3089c c3089c2;
        if (i11 >= i12) {
            throw new AssertionError();
        }
        for (int i18 = i11; i18 < i12; i18++) {
            if (list.get(i18).S() < i10) {
                throw new AssertionError();
            }
        }
        f fVar = list.get(i11);
        f fVar2 = list.get(i12 - 1);
        if (i10 == fVar.S()) {
            int i19 = i11 + 1;
            i14 = i19;
            i13 = list2.get(i11).intValue();
            fVar = list.get(i19);
        } else {
            i13 = -1;
            i14 = i11;
        }
        if (fVar.r(i10) == fVar2.r(i10)) {
            int min = Math.min(fVar.S(), fVar2.S());
            int i20 = 0;
            for (int i21 = i10; i21 < min && fVar.r(i21) == fVar2.r(i21); i21++) {
                i20++;
            }
            long k10 = 1 + j10 + k(c3089c) + 2 + i20;
            c3089c.writeInt(-i20);
            c3089c.writeInt(i13);
            int i22 = i10;
            while (true) {
                i15 = i10 + i20;
                if (i22 >= i15) {
                    break;
                }
                c3089c.writeInt(fVar.r(i22) & 255);
                i22++;
            }
            if (i14 + 1 == i12) {
                if (i15 != list.get(i14).S()) {
                    throw new AssertionError();
                }
                c3089c.writeInt(list2.get(i14).intValue());
                return;
            } else {
                C3089c c3089c3 = new C3089c();
                c3089c.writeInt((int) ((k(c3089c3) + k10) * (-1)));
                a(k10, c3089c3, i15, list, i14, i12, list2);
                c3089c.h0(c3089c3, c3089c3.Q());
                return;
            }
        }
        int i23 = 1;
        for (int i24 = i14 + 1; i24 < i12; i24++) {
            if (list.get(i24 - 1).r(i10) != list.get(i24).r(i10)) {
                i23++;
            }
        }
        long k11 = j10 + k(c3089c) + 2 + (i23 * 2);
        c3089c.writeInt(i23);
        c3089c.writeInt(i13);
        for (int i25 = i14; i25 < i12; i25++) {
            byte r10 = list.get(i25).r(i10);
            if (i25 == i14 || r10 != list.get(i25 - 1).r(i10)) {
                c3089c.writeInt(r10 & 255);
            }
        }
        C3089c c3089c4 = new C3089c();
        int i26 = i14;
        while (i26 < i12) {
            byte r11 = list.get(i26).r(i10);
            int i27 = i26 + 1;
            int i28 = i27;
            while (true) {
                if (i28 >= i12) {
                    i16 = i12;
                    break;
                } else {
                    if (r11 != list.get(i28).r(i10)) {
                        i16 = i28;
                        break;
                    }
                    i28++;
                }
            }
            if (i27 == i16 && i10 + 1 == list.get(i26).S()) {
                c3089c.writeInt(list2.get(i26).intValue());
                i17 = i16;
                c3089c2 = c3089c4;
            } else {
                c3089c.writeInt((int) ((k(c3089c4) + k11) * (-1)));
                i17 = i16;
                c3089c2 = c3089c4;
                a(k11, c3089c4, i10 + 1, list, i26, i16, list2);
            }
            c3089c4 = c3089c2;
            i26 = i17;
        }
        C3089c c3089c5 = c3089c4;
        c3089c.h0(c3089c5, c3089c5.Q());
    }

    public static int k(C3089c c3089c) {
        return (int) (c3089c.Q() / 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ba, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static q l(f... fVarArr) {
        if (fVarArr.length == 0) {
            return new q(new f[0], new int[]{0, -1});
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(fVarArr));
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList2.add(-1);
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.set(Collections.binarySearch(arrayList, fVarArr[i11]), Integer.valueOf(i11));
        }
        if (((f) arrayList.get(0)).S() == 0) {
            throw new IllegalArgumentException("the empty byte string is not a supported option");
        }
        int i12 = 0;
        while (i12 < arrayList.size()) {
            f fVar = (f) arrayList.get(i12);
            int i13 = i12 + 1;
            int i14 = i13;
            while (i14 < arrayList.size()) {
                f fVar2 = (f) arrayList.get(i14);
                if (!fVar2.T(fVar)) {
                    break;
                }
                if (fVar2.S() == fVar.S()) {
                    throw new IllegalArgumentException("duplicate option: " + ((Object) fVar2));
                }
                if (((Integer) arrayList2.get(i14)).intValue() > ((Integer) arrayList2.get(i12)).intValue()) {
                    arrayList.remove(i14);
                    arrayList2.remove(i14);
                } else {
                    i14++;
                }
            }
            i12 = i13;
        }
        C3089c c3089c = new C3089c();
        a(0L, c3089c, 0, arrayList, 0, arrayList.size(), arrayList2);
        int k10 = k(c3089c);
        int[] iArr = new int[k10];
        for (int i15 = 0; i15 < k10; i15++) {
            iArr[i15] = c3089c.readInt();
        }
        if (c3089c.b2()) {
            return new q((f[]) fVarArr.clone(), iArr);
        }
        throw new AssertionError();
    }

    @Override
    public f get(int i10) {
        return this.f25039b[i10];
    }

    @Override
    public final int size() {
        return this.f25039b.length;
    }
}
