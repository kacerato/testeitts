package com.android.tools.r8.internal;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C5418Jw {

    public static final C5418Jw f41525c = new C5418Jw(0);

    public final C6036Um0 f41526a = new C6036Um0(16);

    public boolean f41527b;

    public C5418Jw() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if ((r2 instanceof byte[]) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        if ((r2 instanceof com.android.tools.r8.internal.PI) == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(EnumC5942Sx0 enumC5942Sx0, Object obj) {
        obj.getClass();
        boolean z10 = false;
        switch (enumC5942Sx0.f44348b.ordinal()) {
            case 0:
                z10 = obj instanceof Integer;
                break;
            case 1:
                z10 = obj instanceof Long;
                break;
            case 2:
                z10 = obj instanceof Float;
                break;
            case 3:
                z10 = obj instanceof Double;
                break;
            case 4:
                z10 = obj instanceof Boolean;
                break;
            case 5:
                z10 = obj instanceof String;
                break;
            case 6:
                if (!(obj instanceof AbstractC8206l8)) {
                    break;
                }
                z10 = true;
                break;
            case 7:
                if (!(obj instanceof Integer)) {
                    break;
                }
                z10 = true;
                break;
            case 8:
                z10 = obj instanceof O0;
                break;
        }
        if (!z10) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public final void a() {
        if (this.f41527b) {
            return;
        }
        C6036Um0 c6036Um0 = this.f41526a;
        if (!c6036Um0.f44866e) {
            for (int i10 = 0; i10 < c6036Um0.f44864c.size(); i10++) {
                Map.Entry entry = (Map.Entry) c6036Um0.f44864c.get(i10);
                if (((C6116Vy) entry.getKey()).f45238d) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
            for (Map.Entry entry2 : c6036Um0.f44865d.isEmpty() ? AbstractC6477an0.f46629b : c6036Um0.f44865d.entrySet()) {
                if (((C6116Vy) entry2.getKey()).f45238d) {
                    entry2.setValue(Collections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        if (!c6036Um0.f44866e) {
            c6036Um0.f44865d = c6036Um0.f44865d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(c6036Um0.f44865d);
            c6036Um0.f44866e = true;
        }
        this.f41527b = true;
    }

    public final void c(C6116Vy c6116Vy, Object obj) {
        if (!c6116Vy.f45238d) {
            b(c6116Vy.f45237c, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj2 = arrayList.get(i10);
                i10++;
                b(c6116Vy.f45237c, obj2);
            }
            obj = arrayList;
        }
        this.f41526a.put(c6116Vy, obj);
    }

    public final C5418Jw m719clone() {
        C5418Jw c5418Jw = new C5418Jw();
        for (int i10 = 0; i10 < this.f41526a.f44864c.size(); i10++) {
            Map.Entry entry = (Map.Entry) this.f41526a.f44864c.get(i10);
            c5418Jw.c((C6116Vy) entry.getKey(), entry.getValue());
        }
        C6036Um0 c6036Um0 = this.f41526a;
        for (Map.Entry entry2 : c6036Um0.f44865d.isEmpty() ? AbstractC6477an0.f46629b : c6036Um0.f44865d.entrySet()) {
            c5418Jw.c((C6116Vy) entry2.getKey(), entry2.getValue());
        }
        return c5418Jw;
    }

    public C5418Jw(int i10) {
        a();
    }

    public final void b(Map.Entry entry) {
        C6116Vy c6116Vy = (C6116Vy) entry.getKey();
        Object value = entry.getValue();
        if (c6116Vy.f45238d) {
            Object obj = this.f41526a.get(c6116Vy);
            if (obj == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                List list = (List) obj;
                if (obj2 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj2;
                    byte[] bArr2 = new byte[bArr.length];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    obj2 = bArr2;
                }
                list.add(obj2);
            }
            this.f41526a.put(c6116Vy, obj);
            return;
        }
        if (c6116Vy.f45237c.f44348b == EnumC6058Ux0.f44920k) {
            Object obj3 = this.f41526a.get(c6116Vy);
            if (obj3 == null) {
                C6036Um0 c6036Um0 = this.f41526a;
                if (value instanceof byte[]) {
                    byte[] bArr3 = (byte[]) value;
                    byte[] bArr4 = new byte[bArr3.length];
                    System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                    value = bArr4;
                }
                c6036Um0.put(c6116Vy, value);
                return;
            }
            this.f41526a.put(c6116Vy, ((O0) obj3).c().a((AbstractC6287Yy) ((O0) value)).a());
            return;
        }
        C6036Um0 c6036Um02 = this.f41526a;
        if (value instanceof byte[]) {
            byte[] bArr5 = (byte[]) value;
            byte[] bArr6 = new byte[bArr5.length];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            value = bArr6;
        }
        c6036Um02.put(c6116Vy, value);
    }

    public static boolean a(Map.Entry entry) {
        C6116Vy c6116Vy = (C6116Vy) entry.getKey();
        if (c6116Vy.f45237c.f44348b != EnumC6058Ux0.f44920k) {
            return true;
        }
        if (c6116Vy.f45238d) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                if (!((O0) it.next()).isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof O0) {
            return ((O0) value).isInitialized();
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public static Object a(C4858Ae c4858Ae, EnumC5942Sx0 enumC5942Sx0) {
        switch (enumC5942Sx0.ordinal()) {
            case 0:
                return Double.valueOf(Double.longBitsToDouble(c4858Ae.e()));
            case 1:
                return Float.valueOf(Float.intBitsToFloat(c4858Ae.d()));
            case 2:
                return Long.valueOf(c4858Ae.g());
            case 3:
                return Long.valueOf(c4858Ae.g());
            case 4:
                return Integer.valueOf(c4858Ae.f());
            case 5:
                return Long.valueOf(c4858Ae.e());
            case 6:
                return Integer.valueOf(c4858Ae.d());
            case 7:
                return Boolean.valueOf(c4858Ae.g() != 0);
            case 8:
                int f10 = c4858Ae.f();
                int i10 = c4858Ae.f38662b;
                int i11 = c4858Ae.f38664d;
                if (f10 > i10 - i11 || f10 <= 0) {
                    if (f10 == 0) {
                        return "";
                    }
                    return new String(c4858Ae.c(f10), "UTF-8");
                }
                String str = new String(c4858Ae.f38661a, i11, f10, "UTF-8");
                c4858Ae.f38664d += f10;
                return str;
            case 9:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 10:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 11:
                return c4858Ae.b();
            case 12:
                return Integer.valueOf(c4858Ae.f());
            case 13:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            case 14:
                return Integer.valueOf(c4858Ae.d());
            case 15:
                return Long.valueOf(c4858Ae.e());
            case 16:
                int f11 = c4858Ae.f();
                return Integer.valueOf((-(f11 & 1)) ^ (f11 >>> 1));
            case 17:
                long g10 = c4858Ae.g();
                return Long.valueOf((-(g10 & 1)) ^ (g10 >>> 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int b(C6116Vy c6116Vy, Object obj) {
        EnumC5942Sx0 enumC5942Sx0 = c6116Vy.f45237c;
        int i10 = c6116Vy.f45236b;
        if (c6116Vy.f45238d) {
            int i11 = 0;
            for (Object obj2 : (List) obj) {
                int c10 = C5264He.c(i10);
                if (enumC5942Sx0 == EnumC5942Sx0.f44345f) {
                    c10 *= 2;
                }
                i11 += a(enumC5942Sx0, obj2) + c10;
            }
            return i11;
        }
        int c11 = C5264He.c(i10);
        if (enumC5942Sx0 == EnumC5942Sx0.f44345f) {
            c11 *= 2;
        }
        return a(enumC5942Sx0, obj) + c11;
    }

    public static void a(C5264He c5264He, EnumC5942Sx0 enumC5942Sx0, Object obj) {
        switch (enumC5942Sx0.ordinal()) {
            case 0:
                double doubleValue = ((Double) obj).doubleValue();
                c5264He.getClass();
                c5264He.c(Double.doubleToRawLongBits(doubleValue));
                return;
            case 1:
                float floatValue = ((Float) obj).floatValue();
                c5264He.getClass();
                c5264He.f(Float.floatToRawIntBits(floatValue));
                return;
            case 2:
                c5264He.d(((Long) obj).longValue());
                return;
            case 3:
                c5264He.d(((Long) obj).longValue());
                return;
            case 4:
                c5264He.d(((Integer) obj).intValue());
                return;
            case 5:
                c5264He.c(((Long) obj).longValue());
                return;
            case 6:
                c5264He.f(((Integer) obj).intValue());
                return;
            case 7:
                c5264He.e(((Boolean) obj).booleanValue() ? 1 : 0);
                return;
            case 8:
                c5264He.getClass();
                byte[] bytes = ((String) obj).getBytes("UTF-8");
                c5264He.g(bytes.length);
                c5264He.a(bytes);
                return;
            case 9:
                c5264He.getClass();
                ((O0) obj).a(c5264He);
                return;
            case 10:
                O0 o02 = (O0) obj;
                c5264He.getClass();
                c5264He.g(o02.a());
                o02.a(c5264He);
                return;
            case 11:
                if (obj instanceof AbstractC8206l8) {
                    AbstractC8206l8 abstractC8206l8 = (AbstractC8206l8) obj;
                    c5264He.getClass();
                    c5264He.g(abstractC8206l8.size());
                    c5264He.a(abstractC8206l8);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                c5264He.getClass();
                c5264He.g(bArr.length);
                c5264He.a(bArr);
                return;
            case 12:
                c5264He.g(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof PI) {
                    c5264He.d(((PI) obj).getNumber());
                    return;
                } else {
                    c5264He.d(((Integer) obj).intValue());
                    return;
                }
            case 14:
                c5264He.f(((Integer) obj).intValue());
                return;
            case 15:
                c5264He.c(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                c5264He.g((intValue >> 31) ^ (intValue << 1));
                return;
            case 17:
                c5264He.d(C5264He.b(((Long) obj).longValue()));
                return;
            default:
                return;
        }
    }

    public final void a(C6116Vy c6116Vy, Object obj) {
        Collection collection;
        if (c6116Vy.f45238d) {
            b(c6116Vy.f45237c, obj);
            Object obj2 = this.f41526a.get(c6116Vy);
            if (obj2 == null) {
                collection = new ArrayList();
                this.f41526a.put(c6116Vy, collection);
            } else {
                collection = (List) obj2;
            }
            collection.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    public static int a(EnumC5942Sx0 enumC5942Sx0, Object obj) {
        int a10;
        int b10;
        switch (enumC5942Sx0.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                return 8;
            case 1:
                ((Float) obj).getClass();
                return 4;
            case 2:
                return C5264He.a(((Long) obj).longValue());
            case 3:
                return C5264He.a(((Long) obj).longValue());
            case 4:
                int intValue = ((Integer) obj).intValue();
                if (intValue >= 0) {
                    return C5264He.b(intValue);
                }
                return 10;
            case 5:
                ((Long) obj).getClass();
                return 8;
            case 6:
                ((Integer) obj).getClass();
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                return 1;
            case 8:
                try {
                    byte[] bytes = ((String) obj).getBytes("UTF-8");
                    return C5264He.b(bytes.length) + bytes.length;
                } catch (UnsupportedEncodingException e10) {
                    throw new RuntimeException("UTF-8 not supported.", e10);
                }
            case 9:
                return ((O0) obj).a();
            case 10:
                a10 = ((O0) obj).a();
                b10 = C5264He.b(a10);
                break;
            case 11:
                if (obj instanceof AbstractC8206l8) {
                    AbstractC8206l8 abstractC8206l8 = (AbstractC8206l8) obj;
                    a10 = C5264He.b(abstractC8206l8.size());
                    b10 = abstractC8206l8.size();
                    break;
                } else {
                    byte[] bArr = (byte[]) obj;
                    return C5264He.b(bArr.length) + bArr.length;
                }
            case 12:
                return C5264He.b(((Integer) obj).intValue());
            case 13:
                if (obj instanceof PI) {
                    return C5264He.a(((PI) obj).getNumber());
                }
                return C5264He.a(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                return 4;
            case 15:
                ((Long) obj).getClass();
                return 8;
            case 16:
                int intValue2 = ((Integer) obj).intValue();
                return C5264He.b((intValue2 >> 31) ^ (intValue2 << 1));
            case 17:
                return C5264He.a(C5264He.b(((Long) obj).longValue()));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return b10 + a10;
    }
}
