package com.android.tools.r8.internal;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;

public abstract class AbstractC8206l8 implements Iterable {

    public static final ET f49897b = new ET(new byte[0]);

    public static final boolean f49898c = true;

    public static ET a(String str) {
        try {
            return new ET(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("UTF-8 not supported?", e10);
        }
    }

    public static C7872j8 d() {
        return new C7872j8();
    }

    public abstract int a();

    public abstract int a(int i10, int i11, int i12);

    public abstract void a(OutputStream outputStream, int i10, int i11);

    public abstract int b(int i10, int i11, int i12);

    public abstract void b(byte[] bArr, int i10, int i11, int i12);

    public abstract boolean b();

    public abstract boolean c();

    public abstract int g();

    public abstract String h();

    public final String i() {
        try {
            return h();
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("UTF-8 not supported?", e10);
        }
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public final AbstractC8206l8 a(AbstractC8206l8 abstractC8206l8) {
        int size = size();
        int size2 = abstractC8206l8.size();
        if (size + size2 < 2147483647L) {
            int[] iArr = C5395Jk0.f41489j;
            C5395Jk0 c5395Jk0 = this instanceof C5395Jk0 ? (C5395Jk0) this : null;
            if (abstractC8206l8.size() == 0) {
                return this;
            }
            if (size() == 0) {
                return abstractC8206l8;
            }
            int size3 = abstractC8206l8.size() + size();
            if (size3 < 128) {
                int size4 = size();
                int size5 = abstractC8206l8.size();
                byte[] bArr = new byte[size4 + size5];
                a(bArr, 0, 0, size4);
                abstractC8206l8.a(bArr, 0, size4, size5);
                return new ET(bArr);
            }
            if (c5395Jk0 != null) {
                if (abstractC8206l8.size() + c5395Jk0.f41492f.size() < 128) {
                    AbstractC8206l8 abstractC8206l82 = c5395Jk0.f41492f;
                    int size6 = abstractC8206l82.size();
                    int size7 = abstractC8206l8.size();
                    byte[] bArr2 = new byte[size6 + size7];
                    abstractC8206l82.a(bArr2, 0, 0, size6);
                    abstractC8206l8.a(bArr2, 0, size6, size7);
                    return new C5395Jk0(c5395Jk0.f41491e, new ET(bArr2));
                }
            }
            if (c5395Jk0 != null && c5395Jk0.f41491e.a() > c5395Jk0.f41492f.a() && c5395Jk0.f41494h > abstractC8206l8.a()) {
                return new C5395Jk0(c5395Jk0.f41491e, new C5395Jk0(c5395Jk0.f41492f, abstractC8206l8));
            }
            if (size3 >= iArr[Math.max(a(), abstractC8206l8.a()) + 1]) {
                return new C5395Jk0(this, abstractC8206l8);
            }
            C5221Gk0 c5221Gk0 = new C5221Gk0();
            c5221Gk0.a(this);
            c5221Gk0.a(abstractC8206l8);
            AbstractC8206l8 abstractC8206l83 = (AbstractC8206l8) c5221Gk0.f40577a.pop();
            while (!c5221Gk0.f40577a.isEmpty()) {
                abstractC8206l83 = new C5395Jk0((AbstractC8206l8) c5221Gk0.f40577a.pop(), abstractC8206l83);
            }
            return abstractC8206l83;
        }
        StringBuilder sb2 = new StringBuilder(53);
        sb2.append("ByteString would be too long: ");
        sb2.append(size);
        sb2.append("+");
        sb2.append(size2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static AbstractC8206l8 a(Iterator it, int i10) {
        if (!f49898c && i10 < 1) {
            throw new AssertionError();
        }
        if (i10 == 1) {
            return (AbstractC8206l8) it.next();
        }
        int i11 = i10 >>> 1;
        return a(it, i11).a(a(it, i10 - i11));
    }

    public final void a(byte[] bArr, int i10, int i11, int i12) {
        if (i10 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Source offset < 0: ");
            sb2.append(i10);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (i11 < 0) {
            StringBuilder sb3 = new StringBuilder(30);
            sb3.append("Target offset < 0: ");
            sb3.append(i11);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        if (i12 >= 0) {
            int i13 = i10 + i12;
            if (i13 <= size()) {
                int i14 = i11 + i12;
                if (i14 <= bArr.length) {
                    if (i12 > 0) {
                        b(bArr, i10, i11, i12);
                        return;
                    }
                    return;
                } else {
                    StringBuilder sb4 = new StringBuilder(34);
                    sb4.append("Target end offset < 0: ");
                    sb4.append(i14);
                    throw new IndexOutOfBoundsException(sb4.toString());
                }
            }
            StringBuilder sb5 = new StringBuilder(34);
            sb5.append("Source end offset < 0: ");
            sb5.append(i13);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
        StringBuilder sb6 = new StringBuilder(23);
        sb6.append("Length < 0: ");
        sb6.append(i12);
        throw new IndexOutOfBoundsException(sb6.toString());
    }
}
