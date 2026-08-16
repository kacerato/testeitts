package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.B4;
import com.google.android.gms.internal.measurement.C4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public abstract class B4<MessageType extends C4<MessageType, BuilderType>, BuilderType extends B4<MessageType, BuilderType>> implements V5 {
    public static void g(List list, int i10) {
        int size = list.size() - i10;
        StringBuilder sb2 = new StringBuilder(String.valueOf(size).length() + 26);
        sb2.append("Element at index ");
        sb2.append(size);
        sb2.append(" is null.");
        String sb3 = sb2.toString();
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 < i10) {
                throw new NullPointerException(sb3);
            }
            list.remove(size2);
        }
    }

    public static void k(Iterable iterable, List list) {
        byte[] bArr = A5.f61886b;
        iterable.getClass();
        if (iterable instanceof G5) {
            List N12 = ((G5) iterable).N1();
            G5 g52 = (G5) list;
            int size = list.size();
            for (Object obj : N12) {
                if (obj == null) {
                    int size2 = g52.size() - size;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(size2).length() + 26);
                    sb2.append("Element at index ");
                    sb2.append(size2);
                    sb2.append(" is null.");
                    String sb3 = sb2.toString();
                    int size3 = g52.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        } else {
                            g52.remove(size3);
                        }
                    }
                    throw new NullPointerException(sb3);
                }
                if (obj instanceof S4) {
                    g52.O1();
                } else if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    S4.p(bArr2, 0, bArr2.length);
                    g52.O1();
                } else {
                    g52.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof InterfaceC12047d6) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size4 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size4);
            } else if (list instanceof C12065f6) {
                ((C12065f6) list).j(list.size() + size4);
            }
        }
        int size5 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    g(list, size5);
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size6 = list2.size();
        for (int i10 = 0; i10 < size6; i10++) {
            Object obj3 = list2.get(i10);
            if (obj3 == null) {
                g(list, size5);
            }
            list.add(obj3);
        }
    }

    @Override
    public final V5 d3(byte[] bArr, C12028b5 c12028b5) throws zzmq {
        return j(bArr, 0, bArr.length, c12028b5);
    }

    @Override
    public abstract B4 h();

    public B4 i(byte[] bArr, int i10, int i11) throws zzmq {
        throw null;
    }

    @Override
    public final V5 i4(byte[] bArr) throws zzmq {
        return i(bArr, 0, bArr.length);
    }

    public B4 j(byte[] bArr, int i10, int i11, C12028b5 c12028b5) throws zzmq {
        throw null;
    }
}
