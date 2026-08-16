package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.WB;
import java.lang.reflect.GenericSignatureFormatError;
import java.nio.CharBuffer;
import java.util.Arrays;
import java.util.function.Consumer;
import w2.C15883c;

public final class K3 {

    public static final boolean f36528g = true;

    public char f36529a;

    public String f36530b;

    public boolean f36531c;

    public char[] f36532d;

    public int f36533e;

    public final C4724u1 f36534f;

    public K3(C4724u1 c4724u1) {
        this.f36534f = c4724u1;
    }

    public final H3.b a(String str) {
        try {
            this.f36532d = str.toCharArray();
            this.f36531c = false;
            this.f36533e = 0;
            this.f36529a = (char) 0;
            this.f36530b = null;
            f();
            return a();
        } catch (GenericSignatureFormatError e10) {
            throw e10;
        } catch (Throwable th2) {
            GenericSignatureFormatError genericSignatureFormatError = new GenericSignatureFormatError("Unknown error parsing class signature: " + th2.getMessage());
            genericSignatureFormatError.addSuppressed(th2);
            throw genericSignatureFormatError;
        }
    }

    public final H3.e b(String str) {
        try {
            this.f36532d = str.toCharArray();
            this.f36531c = false;
            this.f36533e = 0;
            this.f36529a = (char) 0;
            this.f36530b = null;
            f();
            return c();
        } catch (GenericSignatureFormatError e10) {
            throw e10;
        } catch (Throwable th2) {
            GenericSignatureFormatError genericSignatureFormatError = new GenericSignatureFormatError("Unknown error parsing field signature: " + th2.getMessage());
            genericSignatureFormatError.addSuppressed(th2);
            throw genericSignatureFormatError;
        }
    }

    public final H3.g c(String str) {
        try {
            this.f36532d = str.toCharArray();
            this.f36531c = false;
            this.f36533e = 0;
            this.f36529a = (char) 0;
            this.f36530b = null;
            f();
            return d();
        } catch (GenericSignatureFormatError e10) {
            throw e10;
        } catch (Throwable th2) {
            GenericSignatureFormatError genericSignatureFormatError = new GenericSignatureFormatError("Unknown error parsing method signature: " + th2.getMessage());
            genericSignatureFormatError.addSuppressed(th2);
            throw genericSignatureFormatError;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a3, code lost:
    
        if (r10.f36529a == '^') goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a5, code lost:
    
        f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ac, code lost:
    
        if (r10.f36529a != 'T') goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ae, code lost:
    
        a('T');
        e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
    
        if (com.android.tools.r8.graph.K3.f36528g != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ba, code lost:
    
        if (r10.f36530b == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c2, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c3, code lost:
    
        a(';');
        r3.a(new com.android.tools.r8.graph.H3.j(r10.f36530b, com.android.tools.r8.graph.H3.k.f36403b));
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00de, code lost:
    
        if (r10.f36529a == '^') goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
    
        r3.a(b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f1, code lost:
    
        return new com.android.tools.r8.graph.H3.g(r0.a(), com.android.tools.r8.internal.AbstractC7552hC.b(r2, r1), r9, r3.a());
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final H3.g d() {
        H3.h hVar;
        H3.i iVar;
        H3.i iVar2;
        int i10;
        int i11 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a((H3.f) obj);
            }
        });
        a('(');
        Object[] objArr = new Object[4];
        int i12 = 0;
        while (true) {
            char c10 = this.f36529a;
            if (c10 != ')' && c10 > 0) {
                if (c10 != 'F' && c10 != 'S' && c10 != 'Z' && c10 != 'I' && c10 != 'J') {
                    switch (c10) {
                        case 'B':
                        case 'C':
                        case 'D':
                            break;
                        default:
                            iVar2 = c();
                            break;
                    }
                    i10 = i12 + 1;
                    if (objArr.length >= i10) {
                        objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i10));
                    }
                    objArr[i12] = iVar2;
                    i12 = i10;
                }
                H3.i i32 = new I3(this.f36534f.d(String.valueOf(c10)));
                f();
                iVar2 = i32;
                i10 = i12 + 1;
                if (objArr.length >= i10) {
                }
                objArr[i12] = iVar2;
                i12 = i10;
            }
        }
        a(')');
        char c11 = this.f36529a;
        if (c11 != 'V') {
            if (c11 != 'F' && c11 != 'S' && c11 != 'Z' && c11 != 'I' && c11 != 'J') {
                switch (c11) {
                    case 'B':
                    case 'C':
                    case 'D':
                        break;
                    default:
                        iVar = c();
                        break;
                }
                hVar = new H3.h(iVar);
            }
            H3.i i33 = new I3(this.f36534f.d(String.valueOf(c11)));
            f();
            iVar = i33;
            hVar = new H3.h(iVar);
        } else {
            f();
            hVar = H3.h.f36399b;
        }
        C7051eC c7051eC2 = new C7051eC();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x004c. Please report as an issue. */
    public final void e() {
        int i10;
        if (this.f36531c || this.f36533e >= this.f36532d.length) {
            a(this.f36533e, "Unexpected end of signature");
            throw null;
        }
        StringBuilder sb2 = new StringBuilder(32);
        char c10 = this.f36529a;
        if (c10 != '.' && c10 != '/') {
            switch (c10) {
                case ':':
                case ';':
                case '<':
                    break;
                default:
                    sb2.append(c10);
                    char[] cArr = this.f36532d;
                    if (!f36528g && cArr == null) {
                        throw new AssertionError();
                    }
                    do {
                        char c11 = cArr[this.f36533e];
                        if ((c11 < 'a' || c11 > 'z') && (c11 < 'A' || c11 > 'Z')) {
                            if (c11 != '.' && c11 != '/') {
                                switch (c11) {
                                }
                            }
                            this.f36530b = sb2.toString();
                            f();
                            return;
                        }
                        sb2.append(c11);
                        i10 = this.f36533e + 1;
                        this.f36533e = i10;
                    } while (i10 != cArr.length);
                    this.f36530b = sb2.toString();
                    this.f36529a = (char) 0;
                    this.f36531c = true;
                    return;
            }
        }
        this.f36529a = (char) 0;
        this.f36531c = true;
        a(this.f36533e, "Unexpected");
        throw null;
    }

    public final void f() {
        if (this.f36531c) {
            a(this.f36533e, "Unexpected end of signature");
            throw null;
        }
        if (!f36528g && this.f36532d == null) {
            throw new AssertionError();
        }
        int i10 = this.f36533e;
        char[] cArr = this.f36532d;
        if (i10 < cArr.length) {
            this.f36529a = cArr[i10];
            this.f36533e = i10 + 1;
        } else {
            this.f36529a = (char) 0;
            this.f36531c = true;
        }
    }

    public final AbstractC7552hC g() {
        H3.e a10;
        H3.e a11;
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        if (this.f36529a == '<') {
            f();
            char c10 = this.f36529a;
            if (c10 == '*') {
                f();
                a10 = L3.f36563b;
            } else if (c10 == '+') {
                f();
                a10 = c().a(H3.k.f36406e);
            } else if (c10 == '-') {
                f();
                a10 = c().a(H3.k.f36405d);
            } else {
                a10 = c().a(H3.k.f36404c);
            }
            c7051eC.a(a10);
            while (true) {
                char c11 = this.f36529a;
                if (c11 == '>' || c11 <= 0) {
                    break;
                }
                if (c11 == '*') {
                    f();
                    a11 = L3.f36563b;
                } else if (c11 == '+') {
                    f();
                    a11 = c().a(H3.k.f36406e);
                } else if (c11 == '-') {
                    f();
                    a11 = c().a(H3.k.f36405d);
                } else {
                    a11 = c().a(H3.k.f36404c);
                }
                c7051eC.a(a11);
            }
            a('>');
        }
        return c7051eC.a();
    }

    public final M2 a(String str, M2 m22) {
        if (m22 == null) {
            return null;
        }
        if (!f36528g && !m22.I0()) {
            throw new AssertionError();
        }
        String V02 = m22.V0();
        return this.f36534f.d(C4932Bl.k(C4932Bl.h(V02) + "$" + str));
    }

    public final H3.c b() {
        a('L');
        StringBuilder sb2 = new StringBuilder();
        e();
        if (!f36528g && this.f36530b == null) {
            throw new AssertionError();
        }
        while (this.f36529a == '/') {
            sb2.append(this.f36530b);
            sb2.append(this.f36529a);
            f();
            e();
            if (!f36528g && this.f36530b == null) {
                throw new AssertionError();
            }
        }
        sb2.append(this.f36530b);
        M2 d10 = this.f36534f.d(C4932Bl.k(sb2.toString()));
        AbstractC7552hC g10 = g();
        if (g10.isEmpty()) {
            g10 = H3.f36373b;
        }
        H3.c cVar = null;
        H3.c cVar2 = new H3.c(d10, g10, null, H3.k.f36403b);
        while (this.f36529a == '.') {
            f();
            e();
            if (!f36528g && this.f36530b == null) {
                throw new AssertionError();
            }
            d10 = a(this.f36530b, d10);
            AbstractC7552hC g11 = g();
            if (g11.isEmpty()) {
                g11 = H3.f36373b;
            }
            cVar = new H3.c(d10, g11, cVar2, H3.k.f36403b);
            cVar2 = cVar;
        }
        a(';');
        return cVar != null ? cVar : cVar2;
    }

    public final H3.e c() {
        H3.i iVar;
        char c10 = this.f36529a;
        if (c10 == 'L') {
            return b();
        }
        if (c10 == 'T') {
            a('T');
            e();
            if (!f36528g && this.f36530b == null) {
                throw new AssertionError();
            }
            a(';');
            return new H3.j(this.f36530b, H3.k.f36403b);
        }
        if (c10 == '[') {
            f();
            char c11 = this.f36529a;
            if (c11 != 'F' && c11 != 'S' && c11 != 'Z' && c11 != 'I' && c11 != 'J') {
                switch (c11) {
                    case 'B':
                    case 'C':
                    case 'D':
                        break;
                    default:
                        iVar = c();
                        break;
                }
                H3.a f10 = iVar.f();
                f10.getClass();
                return f10;
            }
            H3.i i32 = new I3(this.f36534f.d(String.valueOf(c11)));
            f();
            iVar = i32;
            H3.a f102 = iVar.f();
            f102.getClass();
            return f102;
        }
        a(this.f36533e, "Expected L, [ or T");
        throw null;
    }

    public final H3.b a() {
        H3.b bVar = H3.b.f36379d;
        final J3 j32 = new J3();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J3.this.a((H3.f) obj);
            }
        });
        j32.f36498b = b();
        while (this.f36529a > 0) {
            j32.f36499c.add(b());
        }
        return j32.a(this.f36534f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x006d, code lost:
    
        a('>');
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0070, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Consumer consumer) {
        H3.f fVar;
        if (this.f36529a != '<') {
            return;
        }
        f();
        while (true) {
            char c10 = this.f36529a;
            if (c10 == '>' || c10 <= 0) {
                break;
            }
            e();
            if (!f36528g && this.f36530b == null) {
                throw new AssertionError();
            }
            String str = this.f36530b;
            a(':');
            H3.e eVar = H3.f36376e;
            char c11 = this.f36529a;
            if (c11 == 'L' || c11 == '[' || c11 == 'T') {
                eVar = c();
            }
            C7051eC c7051eC = null;
            while (this.f36529a == ':') {
                if (c7051eC == null) {
                    c7051eC = new C7051eC();
                }
                f();
                c7051eC.a(c());
            }
            if (c7051eC == null) {
                fVar = new H3.f(str, eVar, H3.f36373b);
            } else {
                fVar = new H3.f(str, eVar, c7051eC.a());
            }
            consumer.accept(fVar);
        }
    }

    public final void a(char c10) {
        if (!this.f36531c) {
            if (this.f36529a == c10) {
                f();
                return;
            }
            a(this.f36533e - 1, "Expected " + c10);
            throw null;
        }
        a(this.f36533e, "Unexpected end of signature");
        throw null;
    }

    public final void a(int i10, String str) {
        String str2 = CharBuffer.allocate(i10).toString().replace((char) 0, C15883c.f126249O) + "^";
        throw new GenericSignatureFormatError(str + " at position " + (i10 + 1) + System.lineSeparator() + String.valueOf(this.f36532d) + System.lineSeparator() + str2);
    }
}
