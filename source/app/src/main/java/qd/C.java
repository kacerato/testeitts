package qd;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public class C {
    public static <T> void a(T t10, AtomicReferenceFieldUpdater<T, z[]> atomicReferenceFieldUpdater, InterfaceC15063f interfaceC15063f, z... zVarArr) {
        z[] zVarArr2;
        z[] zVarArr3;
        int i10;
        do {
            zVarArr2 = atomicReferenceFieldUpdater.get(t10);
            zVarArr3 = (z[]) Arrays.copyOf(zVarArr2, zVarArr2.length + zVarArr.length);
            long cursor = interfaceC15063f.getCursor();
            int length = zVarArr2.length;
            int length2 = zVarArr.length;
            int i11 = 0;
            while (i11 < length2) {
                z zVar = zVarArr[i11];
                zVar.e(cursor);
                zVarArr3[length] = zVar;
                i11++;
                length++;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, t10, zVarArr2, zVarArr3));
        long cursor2 = interfaceC15063f.getCursor();
        for (z zVar2 : zVarArr) {
            zVar2.e(cursor2);
        }
    }

    public static <T> int b(T[] tArr, T t10) {
        int i10 = 0;
        for (T t11 : tArr) {
            if (t11 == t10) {
                i10++;
            }
        }
        return i10;
    }

    public static <T> boolean c(T t10, AtomicReferenceFieldUpdater<T, z[]> atomicReferenceFieldUpdater, z zVar) {
        z[] zVarArr;
        int b10;
        z[] zVarArr2;
        do {
            zVarArr = atomicReferenceFieldUpdater.get(t10);
            b10 = b(zVarArr, zVar);
            if (b10 == 0) {
                break;
            }
            zVarArr2 = new z[zVarArr.length - b10];
            int i10 = 0;
            for (z zVar2 : zVarArr) {
                if (zVar != zVar2) {
                    zVarArr2[i10] = zVar2;
                    i10++;
                }
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, t10, zVarArr, zVarArr2));
        return b10 != 0;
    }
}
