package com.google.android.gms.internal.auth;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class C11999w1 {

    public static final C11999w1 f61858d = new C11999w1(true);

    public final C2 f61859a = new C11984s2(16);

    public boolean f61860b;

    public boolean f61861c;

    public C11999w1() {
    }

    public static C11999w1 a() {
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void d(InterfaceC11995v1 interfaceC11995v1, Object obj) {
        boolean z10;
        interfaceC11995v1.O1();
        byte[] bArr = H1.f61617d;
        obj.getClass();
        V2 v22 = V2.zza;
        W2 w22 = W2.INT;
        switch (r0.a()) {
            case INT:
                z10 = obj instanceof Integer;
                if (z10) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case LONG:
                z10 = obj instanceof Long;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case FLOAT:
                z10 = obj instanceof Float;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case DOUBLE:
                z10 = obj instanceof Double;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case BOOLEAN:
                z10 = obj instanceof Boolean;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case STRING:
                z10 = obj instanceof String;
                if (z10) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof AbstractC11956l1) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof D1)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            case MESSAGE:
                if ((obj instanceof InterfaceC11925d2) || (obj instanceof I1)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(interfaceC11995v1.N1()), interfaceC11995v1.O1().a(), obj.getClass().getName()));
        }
    }

    public final void b() {
        if (this.f61860b) {
            return;
        }
        for (int i10 = 0; i10 < this.f61859a.i(); i10++) {
            Map.Entry n10 = this.f61859a.n(i10);
            if (n10.getValue() instanceof B1) {
                ((B1) n10.getValue()).h();
            }
        }
        this.f61859a.e();
        this.f61860b = true;
    }

    public final void c(InterfaceC11995v1 interfaceC11995v1, Object obj) {
        if (!interfaceC11995v1.P1()) {
            d(interfaceC11995v1, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                d(interfaceC11995v1, arrayList.get(i10));
            }
            obj = arrayList;
        }
        if (obj instanceof I1) {
            this.f61861c = true;
        }
        this.f61859a.put(interfaceC11995v1, obj);
    }

    public final Object clone() throws CloneNotSupportedException {
        C11999w1 c11999w1 = new C11999w1();
        for (int i10 = 0; i10 < this.f61859a.i(); i10++) {
            Map.Entry n10 = this.f61859a.n(i10);
            c11999w1.c((InterfaceC11995v1) n10.getKey(), n10.getValue());
        }
        for (Map.Entry entry : this.f61859a.j()) {
            c11999w1.c((InterfaceC11995v1) entry.getKey(), entry.getValue());
        }
        c11999w1.f61861c = this.f61861c;
        return c11999w1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C11999w1) {
            return this.f61859a.equals(((C11999w1) obj).f61859a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f61859a.hashCode();
    }

    public C11999w1(boolean z10) {
        b();
        b();
    }
}
