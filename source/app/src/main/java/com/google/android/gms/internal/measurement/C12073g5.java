package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C12073g5 {

    public static final C12073g5 f62289d = new C12073g5(true);

    public final C12155p6 f62290a = new C12110k6();

    public boolean f62291b;

    public boolean f62292c;

    public C12073g5() {
    }

    public static C12073g5 a() {
        return f62289d;
    }

    public static void f(W4 w42, C6 c62, int i10, Object obj) throws IOException {
        if (c62 == C6.zzj) {
            W5 w52 = (W5) obj;
            A5.d(w52);
            w42.i(i10, 3);
            w52.c(w42);
            w42.i(i10, 4);
            return;
        }
        w42.i(i10, c62.b());
        D6 d62 = D6.INT;
        switch (c62.ordinal()) {
            case 0:
                w42.C(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                w42.A(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case 2:
                w42.B(((Long) obj).longValue());
                return;
            case 3:
                w42.B(((Long) obj).longValue());
                return;
            case 4:
                w42.y(((Integer) obj).intValue());
                return;
            case 5:
                w42.C(((Long) obj).longValue());
                return;
            case 6:
                w42.A(((Integer) obj).intValue());
                return;
            case 7:
                w42.x(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case 8:
                if (obj instanceof S4) {
                    w42.r((S4) obj);
                    return;
                } else {
                    w42.E((String) obj);
                    return;
                }
            case 9:
                ((W5) obj).c(w42);
                return;
            case 10:
                w42.w((W5) obj);
                return;
            case 11:
                if (obj instanceof S4) {
                    w42.r((S4) obj);
                    return;
                } else {
                    byte[] bArr = (byte[]) obj;
                    w42.s(bArr, 0, bArr.length);
                    return;
                }
            case 12:
                w42.z(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof InterfaceC12198u5) {
                    w42.y(((InterfaceC12198u5) obj).N1());
                    return;
                } else {
                    w42.y(((Integer) obj).intValue());
                    return;
                }
            case 14:
                w42.A(((Integer) obj).intValue());
                return;
            case 15:
                w42.C(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                w42.z((intValue >> 31) ^ (intValue + intValue));
                return;
            case 17:
                long longValue = ((Long) obj).longValue();
                w42.B((longValue >> 63) ^ (longValue + longValue));
                return;
            default:
                return;
        }
    }

    public static int h(C6 c62, int i10, Object obj) {
        int G10 = W4.G(i10 << 3);
        if (c62 == C6.zzj) {
            A5.d((W5) obj);
            G10 += G10;
        }
        return G10 + i(c62, obj);
    }

    public static int i(C6 c62, Object obj) {
        int l10;
        int G10;
        C6 c63 = C6.zza;
        D6 d62 = D6.INT;
        switch (c62.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                int i10 = W4.f62159d;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                int i11 = W4.f62159d;
                return 4;
            case 2:
                return W4.a(((Long) obj).longValue());
            case 3:
                return W4.a(((Long) obj).longValue());
            case 4:
                return W4.a(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                int i12 = W4.f62159d;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                int i13 = W4.f62159d;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                int i14 = W4.f62159d;
                return 1;
            case 8:
                if (!(obj instanceof S4)) {
                    return W4.b((String) obj);
                }
                int i15 = W4.f62159d;
                l10 = ((S4) obj).l();
                G10 = W4.G(l10);
                break;
            case 9:
                return ((W5) obj).f();
            case 10:
                if (!(obj instanceof E5)) {
                    return W4.c((W5) obj);
                }
                int i16 = W4.f62159d;
                l10 = ((E5) obj).b();
                G10 = W4.G(l10);
                break;
            case 11:
                if (!(obj instanceof S4)) {
                    int i17 = W4.f62159d;
                    l10 = ((byte[]) obj).length;
                    G10 = W4.G(l10);
                    break;
                } else {
                    int i18 = W4.f62159d;
                    l10 = ((S4) obj).l();
                    G10 = W4.G(l10);
                    break;
                }
            case 12:
                return W4.G(((Integer) obj).intValue());
            case 13:
                return obj instanceof InterfaceC12198u5 ? W4.a(((InterfaceC12198u5) obj).N1()) : W4.a(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                int i19 = W4.f62159d;
                return 4;
            case 15:
                ((Long) obj).longValue();
                int i20 = W4.f62159d;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return W4.G((intValue >> 31) ^ (intValue + intValue));
            case 17:
                long longValue = ((Long) obj).longValue();
                return W4.a((longValue >> 63) ^ (longValue + longValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return G10 + l10;
    }

    public static int j(InterfaceC12064f5 interfaceC12064f5, Object obj) {
        C6 O12 = interfaceC12064f5.O1();
        int N12 = interfaceC12064f5.N1();
        if (!interfaceC12064f5.Q1()) {
            return h(O12, N12, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i10 = 0;
        if (!interfaceC12064f5.R1()) {
            int i11 = 0;
            while (i10 < size) {
                i11 += h(O12, N12, list.get(i10));
                i10++;
            }
            return i11;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int i12 = 0;
        while (i10 < size) {
            i12 += i(O12, list.get(i10));
            i10++;
        }
        return W4.G(N12 << 3) + i12 + W4.G(i12);
    }

    public static boolean k(Map.Entry entry) {
        InterfaceC12064f5 interfaceC12064f5 = (InterfaceC12064f5) entry.getKey();
        if (interfaceC12064f5.P1() != D6.MESSAGE) {
            return true;
        }
        if (!interfaceC12064f5.Q1()) {
            return l(entry.getValue());
        }
        List list = (List) entry.getValue();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!l(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean l(Object obj) {
        if (obj instanceof X5) {
            return ((X5) obj).d();
        }
        if (obj instanceof E5) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public static final int m(Map.Entry entry) {
        int i10;
        int G10;
        int G11;
        InterfaceC12064f5 interfaceC12064f5 = (InterfaceC12064f5) entry.getKey();
        Object value = entry.getValue();
        if (interfaceC12064f5.P1() != D6.MESSAGE || interfaceC12064f5.Q1() || interfaceC12064f5.R1()) {
            return j(interfaceC12064f5, value);
        }
        if (value instanceof E5) {
            int N12 = ((InterfaceC12064f5) entry.getKey()).N1();
            int G12 = W4.G(8);
            i10 = G12 + G12;
            G10 = W4.G(16) + W4.G(N12);
            int G13 = W4.G(24);
            int b10 = ((E5) value).b();
            G11 = G13 + W4.G(b10) + b10;
        } else {
            int N13 = ((InterfaceC12064f5) entry.getKey()).N1();
            int G14 = W4.G(8);
            i10 = G14 + G14;
            G10 = W4.G(16) + W4.G(N13);
            G11 = W4.G(24) + W4.c((W5) value);
        }
        return i10 + G10 + G11;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void n(InterfaceC12064f5 interfaceC12064f5, Object obj) {
        boolean z10;
        interfaceC12064f5.O1();
        byte[] bArr = A5.f61886b;
        obj.getClass();
        C6 c62 = C6.zza;
        D6 d62 = D6.INT;
        switch (r0.a()) {
            case INT:
                z10 = obj instanceof Integer;
                if (z10) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case LONG:
                z10 = obj instanceof Long;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case FLOAT:
                z10 = obj instanceof Float;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case DOUBLE:
                z10 = obj instanceof Double;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case BOOLEAN:
                z10 = obj instanceof Boolean;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case STRING:
                z10 = obj instanceof String;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof S4) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof InterfaceC12198u5)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            case MESSAGE:
                if ((obj instanceof W5) || (obj instanceof E5)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC12064f5.N1()), interfaceC12064f5.O1().a(), obj.getClass().getName()));
        }
    }

    public final void b() {
        if (this.f62291b) {
            return;
        }
        C12155p6 c12155p6 = this.f62290a;
        int j10 = c12155p6.j();
        for (int i10 = 0; i10 < j10; i10++) {
            Object value = c12155p6.k(i10).getValue();
            if (value instanceof AbstractC12163q5) {
                ((AbstractC12163q5) value).o();
            }
        }
        Iterator it = c12155p6.l().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof AbstractC12163q5) {
                ((AbstractC12163q5) value2).o();
            }
        }
        c12155p6.e();
        this.f62291b = true;
    }

    public final Iterator c() {
        C12155p6 c12155p6 = this.f62290a;
        return c12155p6.isEmpty() ? Collections.emptyIterator() : this.f62292c ? new D5(c12155p6.entrySet().iterator()) : c12155p6.entrySet().iterator();
    }

    public final Object clone() throws CloneNotSupportedException {
        C12073g5 c12073g5 = new C12073g5();
        C12155p6 c12155p6 = this.f62290a;
        int j10 = c12155p6.j();
        for (int i10 = 0; i10 < j10; i10++) {
            Map.Entry k10 = c12155p6.k(i10);
            c12073g5.d((InterfaceC12064f5) ((C12128m6) k10).b(), k10.getValue());
        }
        for (Map.Entry entry : c12155p6.l()) {
            c12073g5.d((InterfaceC12064f5) entry.getKey(), entry.getValue());
        }
        c12073g5.f62292c = this.f62292c;
        return c12073g5;
    }

    public final void d(InterfaceC12064f5 interfaceC12064f5, Object obj) {
        if (!interfaceC12064f5.Q1()) {
            n(interfaceC12064f5, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 0; i10 < size; i10++) {
                Object obj2 = list.get(i10);
                n(interfaceC12064f5, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof E5) {
            this.f62292c = true;
        }
        this.f62290a.put(interfaceC12064f5, obj);
    }

    public final boolean e() {
        C12155p6 c12155p6 = this.f62290a;
        int j10 = c12155p6.j();
        for (int i10 = 0; i10 < j10; i10++) {
            if (!k(c12155p6.k(i10))) {
                return false;
            }
        }
        Iterator it = c12155p6.l().iterator();
        while (it.hasNext()) {
            if (!k((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C12073g5) {
            return this.f62290a.equals(((C12073g5) obj).f62290a);
        }
        return false;
    }

    public final int g() {
        C12155p6 c12155p6 = this.f62290a;
        int j10 = c12155p6.j();
        int i10 = 0;
        for (int i11 = 0; i11 < j10; i11++) {
            i10 += m(c12155p6.k(i11));
        }
        Iterator it = c12155p6.l().iterator();
        while (it.hasNext()) {
            i10 += m((Map.Entry) it.next());
        }
        return i10;
    }

    public final int hashCode() {
        return this.f62290a.hashCode();
    }

    public C12073g5(boolean z10) {
        b();
        b();
    }
}
