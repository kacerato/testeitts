package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;

public final class C8908pL extends C8240lL {

    public static final C8741oL f51499t = new C8741oL();

    public static final Object f51500u = new Object();

    public Object[] f51501p;

    public int f51502q;

    public String[] f51503r;

    public int[] f51504s;

    public C8908pL(AbstractC6907dL abstractC6907dL) {
        super(f51499t);
        this.f51501p = new Object[32];
        this.f51502q = 0;
        this.f51503r = new String[32];
        this.f51504s = new int[32];
        a(abstractC6907dL);
    }

    public final Object A() {
        return this.f51501p[this.f51502q - 1];
    }

    public final Object B() {
        Object[] objArr = this.f51501p;
        int i10 = this.f51502q - 1;
        this.f51502q = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    public final void a(Object obj) {
        int i10 = this.f51502q;
        Object[] objArr = this.f51501p;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.f51501p = Arrays.copyOf(objArr, i11);
            this.f51504s = Arrays.copyOf(this.f51504s, i11);
            this.f51503r = (String[]) Arrays.copyOf(this.f51503r, i11);
        }
        Object[] objArr2 = this.f51501p;
        int i12 = this.f51502q;
        this.f51502q = i12 + 1;
        objArr2[i12] = obj;
    }

    @Override
    public final void c() {
        c(1);
        a(((C6574bL) A()).f46749b.iterator());
        this.f51504s[this.f51502q - 1] = 0;
    }

    @Override
    public final void close() {
        this.f51501p = new Object[]{f51500u};
        this.f51502q = 1;
    }

    @Override
    public final void d() {
        c(3);
        a(new C10591zS((AS) ((C7407gL) A()).f48234b.entrySet()));
    }

    @Override
    public final void g() {
        c(2);
        B();
        B();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override
    public final void h() {
        c(4);
        this.f51503r[this.f51502q - 1] = null;
        B();
        B();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override
    public final String i() {
        return c(false);
    }

    @Override
    public final String j() {
        return c(true);
    }

    @Override
    public final boolean k() {
        int u10 = u();
        return (u10 == 4 || u10 == 2 || u10 == 10) ? false : true;
    }

    @Override
    public final boolean m() {
        c(8);
        boolean a10 = ((C7906jL) B()).a();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return a10;
    }

    @Override
    public final double n() {
        int u10 = u();
        if (u10 != 7 && u10 != 6) {
            throw new IllegalStateException("Expected " + AbstractC8574nL.a(7) + " but was " + AbstractC8574nL.a(u10) + z());
        }
        C7906jL c7906jL = (C7906jL) A();
        double doubleValue = c7906jL.f49214b instanceof Number ? c7906jL.i().doubleValue() : Double.parseDouble(c7906jL.h());
        if (!this.f49939b && (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue))) {
            throw new GU("JSON forbids NaN and infinities: " + doubleValue);
        }
        B();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return doubleValue;
    }

    @Override
    public final int o() {
        int u10 = u();
        if (u10 != 7 && u10 != 6) {
            throw new IllegalStateException("Expected " + AbstractC8574nL.a(7) + " but was " + AbstractC8574nL.a(u10) + z());
        }
        int b10 = ((C7906jL) A()).b();
        B();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return b10;
    }

    @Override
    public final long p() {
        int u10 = u();
        if (u10 != 7 && u10 != 6) {
            throw new IllegalStateException("Expected " + AbstractC8574nL.a(7) + " but was " + AbstractC8574nL.a(u10) + z());
        }
        long g10 = ((C7906jL) A()).g();
        B();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return g10;
    }

    @Override
    public final String q() {
        c(5);
        Map.Entry entry = (Map.Entry) ((Iterator) A()).next();
        String str = (String) entry.getKey();
        this.f51503r[this.f51502q - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override
    public final void r() {
        c(9);
        B();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override
    public final String s() {
        int u10 = u();
        if (u10 != 6 && u10 != 7) {
            throw new IllegalStateException("Expected " + AbstractC8574nL.a(6) + " but was " + AbstractC8574nL.a(u10) + z());
        }
        String h10 = ((C7906jL) B()).h();
        int i10 = this.f51502q;
        if (i10 > 0) {
            int[] iArr = this.f51504s;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return h10;
    }

    @Override
    public final String toString() {
        return C8908pL.class.getSimpleName() + z();
    }

    @Override
    public final int u() {
        if (this.f51502q == 0) {
            return 10;
        }
        Object A10 = A();
        if (A10 instanceof Iterator) {
            boolean z10 = this.f51501p[this.f51502q - 2] instanceof C7407gL;
            Iterator it = (Iterator) A10;
            if (!it.hasNext()) {
                return z10 ? 4 : 2;
            }
            if (z10) {
                return 5;
            }
            a(it.next());
            return u();
        }
        if (A10 instanceof C7407gL) {
            return 3;
        }
        if (A10 instanceof C6574bL) {
            return 1;
        }
        if (A10 instanceof C7906jL) {
            Object obj = ((C7906jL) A10).f49214b;
            if (obj instanceof String) {
                return 6;
            }
            if (obj instanceof Boolean) {
                return 8;
            }
            if (obj instanceof Number) {
                return 7;
            }
            throw new AssertionError();
        }
        if (A10 instanceof C7240fL) {
            return 9;
        }
        if (A10 == f51500u) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new GU("Custom JsonElement subclass " + A10.getClass().getName() + " is not supported");
    }

    @Override
    public final void y() {
        int b10 = AbstractC4291c.b(u());
        if (b10 == 1) {
            g();
            return;
        }
        if (b10 != 9) {
            if (b10 == 3) {
                h();
                return;
            }
            if (b10 == 4) {
                c(5);
                Map.Entry entry = (Map.Entry) ((Iterator) A()).next();
                this.f51503r[this.f51502q - 1] = "<skipped>";
                a(entry.getValue());
                return;
            }
            B();
            int i10 = this.f51502q;
            if (i10 > 0) {
                int[] iArr = this.f51504s;
                int i11 = i10 - 1;
                iArr[i11] = iArr[i11] + 1;
            }
        }
    }

    public final String z() {
        return " at path " + c(false);
    }

    public final void c(int i10) {
        if (u() == i10) {
            return;
        }
        throw new IllegalStateException("Expected " + AbstractC8574nL.a(i10) + " but was " + AbstractC8574nL.a(u()) + z());
    }

    public final String c(boolean z10) {
        StringBuilder sb2 = new StringBuilder("$");
        int i10 = 0;
        while (true) {
            int i11 = this.f51502q;
            if (i10 < i11) {
                Object[] objArr = this.f51501p;
                Object obj = objArr[i10];
                if (obj instanceof C6574bL) {
                    i10++;
                    if (i10 < i11 && (objArr[i10] instanceof Iterator)) {
                        int i12 = this.f51504s[i10];
                        if (z10 && i12 > 0 && (i10 == i11 - 1 || i10 == i11 - 2)) {
                            i12--;
                        }
                        sb2.append('[');
                        sb2.append(i12);
                        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    }
                } else if ((obj instanceof C7407gL) && (i10 = i10 + 1) < i11 && (objArr[i10] instanceof Iterator)) {
                    sb2.append('.');
                    String str = this.f51503r[i10];
                    if (str != null) {
                        sb2.append(str);
                    }
                }
                i10++;
            } else {
                return sb2.toString();
            }
        }
    }
}
