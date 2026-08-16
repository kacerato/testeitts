package com.android.tools.r8.dex;

import com.android.dx.rop.code.AccessFlags;
import com.android.tools.r8.C10895l2;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.dex.C4325z;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.B2;
import com.android.tools.r8.graph.C2;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4441f1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4763w2;
import com.android.tools.r8.graph.C4782x2;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4801y2;
import com.android.tools.r8.graph.C4817z;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.D0;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.graph.T2;
import com.android.tools.r8.graph.U2;
import com.android.tools.r8.graph.V2;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.graph.W2;
import com.android.tools.r8.graph.X0;
import com.android.tools.r8.graph.X2;
import com.android.tools.r8.graph.Y2;
import com.android.tools.r8.graph.Z2;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC5635Np;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.AbstractC8737oJ;
import com.android.tools.r8.internal.BR;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5751Pp;
import com.android.tools.r8.internal.C6899dH;
import com.android.tools.r8.internal.C7407gL;
import com.android.tools.r8.internal.C7664hu;
import com.android.tools.r8.internal.C7741iL;
import com.android.tools.r8.internal.C8407mL;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8798oj;
import com.android.tools.r8.internal.D20;
import com.android.tools.r8.internal.EnumC5372Jb0;
import com.android.tools.r8.internal.ME;
import com.android.tools.r8.internal.X3;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.jme3.audio.openal.AL;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import u.C15520i;

public class C<T extends E0> {

    public static final boolean f35669m = true;

    public final Origin f35670a;

    public final D f35671b;

    public final ArrayList f35672c;

    public final int f35673d;

    public final int[] f35674e;

    public final com.android.tools.r8.graph.V f35675f;

    public final C8570nJ f35676g;

    public D20 f35677h;

    public final C4785x5 f35678i = new C4785x5();

    public final C6899dH f35679j = new C6899dH(16);

    public final C6899dH f35680k = new C6899dH(16);

    public final C4724u1 f35681l;

    public C(D d10, com.android.tools.r8.graph.V v10, C8570nJ c8570nJ, int i10, C c10) {
        if (!f35669m && d10.f35893a == null) {
            throw new AssertionError();
        }
        this.f35670a = d10.f35893a;
        this.f35671b = d10;
        this.f35673d = i10;
        this.f35681l = c8570nJ.f50660a;
        d10.f35894b.a(ByteOrder.LITTLE_ENDIAN);
        int b10 = d10.f35894b.b(40);
        if (b10 == 2018915346) {
            d10.f35894b.a(ByteOrder.BIG_ENDIAN);
        } else if (b10 != 305419896) {
            throw new C5325If("Unable to determine endianess for reading dex file.");
        }
        this.f35672c = i();
        if (c10 == null) {
            E f10 = f(1);
            int i11 = f10.f35685b;
            this.f35674e = new int[i11];
            if (i11 != 0) {
                d10.b(f10.f35686c);
                for (int i12 = 0; i12 < f10.f35685b; i12++) {
                    this.f35674e[i12] = this.f35671b.a();
                }
            }
        } else {
            this.f35674e = c10.f35674e;
        }
        this.f35675f = v10;
        this.f35676g = c8570nJ;
    }

    public static List<E> a(Path path) throws IOException {
        return new C(new D(new PathOrigin(path), AbstractC6706c8.a(Files.newInputStream(path, new OpenOption[0]))), com.android.tools.r8.graph.V.f36877c, new C8570nJ(), 0, null).f35672c;
    }

    public final C4723u0 b() {
        int i10;
        M2 m22;
        int a10 = this.f35671b.a();
        int[] iArr = new int[a10];
        for (int i11 = 0; i11 < a10; i11++) {
            iArr[i11] = this.f35671b.a();
        }
        C4666r0[] c4666r0Arr = new C4666r0[a10];
        int i12 = 0;
        for (0; i10 < a10; i10 + 1) {
            C4666r0 a11 = a(iArr[i10]);
            if (a11.f37692b == 0) {
                i10 = C4666r0.a(this.f35676g, a11.f37693c.f37142b) ? 0 : i10 + 1;
            }
            c4666r0Arr[i12] = a11;
            i12++;
        }
        if (i12 < a10) {
            C4666r0[] c4666r0Arr2 = new C4666r0[i12];
            System.arraycopy(c4666r0Arr, 0, c4666r0Arr2, 0, i12);
            c4666r0Arr = c4666r0Arr2;
        }
        C4723u0[] c4723u0Arr = C4723u0.f37803f;
        List asList = Arrays.asList(c4666r0Arr);
        Set c10 = AbstractC5513Ll0.c();
        Iterator it = asList.iterator();
        while (true) {
            if (!it.hasNext()) {
                m22 = null;
                break;
            }
            C4666r0 c4666r0 = (C4666r0) it.next();
            if (!C4723u0.f37805h && c4666r0.n0()) {
                throw new AssertionError();
            }
            if (!c10.add(c4666r0.f37693c.f37142b)) {
                m22 = c4666r0.f37693c.f37142b;
                break;
            }
        }
        if (m22 == null) {
            boolean z10 = X3.f45604a;
            return c4666r0Arr.length == 0 ? C4723u0.l0() : new C4723u0(c4666r0Arr);
        }
        throw new C5325If("Multiple annotations of type `" + m22.j0() + "`");
    }

    public final C4823z5 c(int i10) {
        return (C4823z5) a(i10, new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.dex.C.this.c();
            }
        });
    }

    public final C4325z d(int i10) {
        Object a10;
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.dex.C.this.d();
            }
        };
        Supplier supplier2 = new Supplier() {
            @Override
            public final Object get() {
                return C4325z.a();
            }
        };
        if (i10 == 0) {
            a10 = supplier2.get();
        } else {
            a10 = a(i10, supplier);
        }
        return (C4325z) a10;
    }

    public final C4441f1 e(int i10) {
        return (C4441f1) a(i10, new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.dex.C.this.g();
            }
        });
    }

    public final C4422e1 f() {
        D d10 = this.f35671b;
        d10.getClass();
        int b10 = BR.b(d10);
        D d11 = this.f35671b;
        d11.getClass();
        int b11 = BR.b(d11);
        C4704t0[] c4704t0Arr = new C4704t0[b11];
        for (int i10 = 0; i10 < b11; i10++) {
            D d12 = this.f35671b;
            d12.getClass();
            int b12 = BR.b(d12);
            c4704t0Arr[i10] = new C4704t0(this.f35678i.d(b12), h());
        }
        return new C4422e1(this.f35678i.e(b10), c4704t0Arr);
    }

    public final C4441f1 g() {
        D d10 = this.f35671b;
        d10.getClass();
        int b10 = BR.b(d10);
        R2[] r2Arr = new R2[b10];
        for (int i10 = 0; i10 < b10; i10++) {
            r2Arr[i10] = h();
        }
        return new C4441f1(r2Arr);
    }

    public final O2 h(int i10) {
        if (i10 == 0) {
            return O2.k0();
        }
        return (O2) a(i10, new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.dex.C.this.j();
            }
        });
    }

    public final ArrayList i() {
        this.f35671b.b(this.f35671b.a(this.f35673d + 52));
        int a10 = this.f35671b.a();
        ArrayList arrayList = new ArrayList(a10);
        int i10 = 0;
        for (int i11 = 0; i11 < a10; i11++) {
            int c10 = this.f35671b.c();
            int c11 = this.f35671b.c();
            int a11 = this.f35671b.a();
            int a12 = this.f35671b.a();
            if (a12 + a11 > this.f35671b.f35894b.b()) {
                throw new C5325If(this.f35670a, "The dex file had an offset + size that pointed past the end of the dex file.\nSection type: " + E.a(c10) + "\nSection offset: " + a12 + "\nSection size: " + a11 + "\nFile size: " + this.f35671b.f35894b.b(), null);
            }
            arrayList.add(new E(c10, c11, a11, a12));
        }
        while (true) {
            int i12 = a10 - 1;
            if (i10 >= i12) {
                ((E) arrayList.get(i12)).f35687d = this.f35671b.f35894b.b();
                return arrayList;
            }
            E e10 = (E) arrayList.get(i10);
            i10++;
            e10.f35687d = ((E) arrayList.get(i10)).f35686c;
        }
    }

    public final O2 j() {
        int a10 = this.f35671b.a();
        M2[] m2Arr = new M2[a10];
        for (int i10 = 0; i10 < a10; i10++) {
            m2Arr[i10] = this.f35678i.e(this.f35671b.c());
        }
        return new O2(m2Arr);
    }

    public final void k() {
        D0 d02;
        B2 b22;
        AbstractC4744v2 a10;
        C2 a11;
        A2 a12;
        I2 a13;
        C4554l1 a14;
        byte b10;
        L2 a15;
        C4785x5 c4785x5 = this.f35678i;
        int length = this.f35674e.length;
        if (C4785x5.f38371i) {
            c4785x5.getClass();
        } else if (c4785x5.f38377f != null) {
            throw new AssertionError();
        }
        c4785x5.f38377f = new L2[length];
        int i10 = 0;
        while (true) {
            int[] iArr = this.f35674e;
            if (i10 < iArr.length) {
                C4785x5 c4785x52 = this.f35678i;
                this.f35671b.b(iArr[i10]);
                D d10 = this.f35671b;
                d10.getClass();
                int b11 = BR.b(d10);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                do {
                    b10 = this.f35671b.f35894b.a().get();
                    byteArrayOutputStream.write(b10);
                } while (b10 != 0);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (W.a(byteArray)) {
                    C4724u1 c4724u1 = this.f35681l;
                    a15 = c4724u1.a(b11, byteArray);
                    if (W.a(a15.f36562f)) {
                        c4724u1.f38009b.put(a15, a15);
                    }
                } else {
                    a15 = this.f35681l.a(b11, byteArray);
                }
                if (!C4785x5.f38371i && c4785x52.f38377f[i10] != null) {
                    throw new AssertionError();
                }
                c4785x52.f38377f[i10] = a15;
                i10++;
            } else {
                C4314n c4314n = new C4314n();
                for (int length2 = this.f35674e.length - 1; length2 >= 0; length2--) {
                    L2 d11 = this.f35678i.d(length2);
                    if (C4314n.a(d11)) {
                        break;
                    }
                    if (d11.f36561e > 2) {
                        byte[] bArr = d11.f36562f;
                        if (bArr[0] == 126 && bArr[1] == 126 && bArr[2] == 126) {
                            try {
                                AbstractC6907dL a16 = C7741iL.a(d11.toString().substring(3));
                                if (a16 instanceof C7407gL) {
                                    c4314n.a(a16.d());
                                }
                            } catch (C8407mL unused) {
                            }
                        }
                    }
                }
                this.f35677h = c4314n.f35896a;
                E f10 = f(2);
                if (!f35669m) {
                    a(f10);
                }
                C8570nJ c8570nJ = this.f35676g;
                com.android.tools.r8.graph.B c4817z = new C4817z();
                if (AbstractC8737oJ.a(c8570nJ.k()) && !c8570nJ.f50599F1.f50919z0) {
                    c4817z = new com.android.tools.r8.graph.A(c8570nJ.m());
                }
                C4785x5 c4785x53 = this.f35678i;
                int i11 = f10.f35685b;
                if (C4785x5.f38371i) {
                    c4785x53.getClass();
                } else if (c4785x53.f38376e != null) {
                    throw new AssertionError();
                }
                c4785x53.f38376e = new M2[i11];
                int i12 = 0;
                while (true) {
                    if (i12 >= f10.f35685b) {
                        E f11 = f(4);
                        if (!f35669m && f11.f35685b >= 2) {
                            int i13 = f11.f35686c;
                            this.f35671b.b(i13);
                            int c10 = this.f35671b.c();
                            int c11 = this.f35671b.c();
                            int a17 = this.f35671b.a();
                            int i14 = 1;
                            while (i14 < f11.f35685b) {
                                this.f35671b.b((i14 * 8) + i13);
                                int c12 = this.f35671b.c();
                                int c13 = this.f35671b.c();
                                int a18 = this.f35671b.a();
                                boolean z10 = c12 != c10 ? c12 > c10 : !(a18 != a17 ? a18 <= a17 : c13 <= c11);
                                if (!f35669m && !z10) {
                                    String j02 = this.f35681l.a(this.f35678i.e(c10), this.f35678i.e(c11), this.f35678i.d(a17)).j0();
                                    String j03 = this.f35681l.a(this.f35678i.e(c12), this.f35678i.e(c13), this.f35678i.d(a18)).j0();
                                    StringBuilder sb2 = new StringBuilder("Out-of-order field ids (field #");
                                    sb2.append(i14 - 1);
                                    sb2.append(": `");
                                    sb2.append(j02);
                                    sb2.append("`, field #");
                                    sb2.append(i14);
                                    sb2.append(": `");
                                    sb2.append(j03);
                                    sb2.append("`)");
                                    throw new AssertionError((Object) sb2.toString());
                                }
                                i14++;
                                a17 = a18;
                                c10 = c12;
                                c11 = c13;
                            }
                        }
                        C4785x5 c4785x54 = this.f35678i;
                        int i15 = f11.f35685b;
                        if (C4785x5.f38371i) {
                            c4785x54.getClass();
                        } else if (c4785x54.f38375d != null) {
                            throw new AssertionError();
                        }
                        c4785x54.f38375d = new C4554l1[i15];
                        for (int i16 = 0; i16 < f11.f35685b; i16++) {
                            C4785x5 c4785x55 = this.f35678i;
                            E f12 = f(4);
                            if (i16 >= f12.f35685b) {
                                a14 = null;
                            } else {
                                this.f35671b.b((i16 * 8) + f12.f35686c);
                                a14 = this.f35681l.a(this.f35678i.e(this.f35671b.c()), this.f35678i.e(this.f35671b.c()), this.f35678i.d(this.f35671b.a()));
                            }
                            if (!C4785x5.f38371i && c4785x55.f38375d[i16] != null) {
                                throw new AssertionError();
                            }
                            c4785x55.f38375d[i16] = a14;
                        }
                        E f13 = f(3);
                        C4785x5 c4785x56 = this.f35678i;
                        int i17 = f13.f35685b;
                        if (C4785x5.f38371i) {
                            c4785x56.getClass();
                        } else if (c4785x56.f38374c != null) {
                            throw new AssertionError();
                        }
                        c4785x56.f38374c = new I2[i17];
                        for (int i18 = 0; i18 < f13.f35685b; i18++) {
                            C4785x5 c4785x57 = this.f35678i;
                            E f14 = f(3);
                            if (i18 >= f14.f35685b) {
                                a13 = null;
                            } else {
                                this.f35671b.b((i18 * 12) + f14.f35686c);
                                this.f35671b.a();
                                a13 = this.f35681l.a(this.f35678i.e(this.f35671b.a()), h(this.f35671b.a()));
                            }
                            if (!C4785x5.f38371i && c4785x57.f38374c[i18] != null) {
                                throw new AssertionError();
                            }
                            c4785x57.f38374c[i18] = a13;
                        }
                        E f15 = f(5);
                        if (!f35669m && f15.f35685b >= 2) {
                            int i19 = f15.f35686c;
                            this.f35671b.b(i19);
                            int c14 = this.f35671b.c();
                            int c15 = this.f35671b.c();
                            int a19 = this.f35671b.a();
                            int i20 = 1;
                            while (i20 < f15.f35685b) {
                                this.f35671b.b((i20 * 8) + i19);
                                int c16 = this.f35671b.c();
                                int c17 = this.f35671b.c();
                                int a20 = this.f35671b.a();
                                boolean z11 = c16 != c14 ? c16 > c14 : !(a20 != a19 ? a20 <= a19 : c17 <= c15);
                                if (!f35669m && !z11) {
                                    String j04 = this.f35681l.a(this.f35678i.e(c14), this.f35678i.c(c15), this.f35678i.d(a19)).j0();
                                    String j05 = this.f35681l.a(this.f35678i.e(c16), this.f35678i.c(c17), this.f35678i.d(a20)).j0();
                                    StringBuilder sb3 = new StringBuilder("Out-of-order method ids (method #");
                                    sb3.append(i20 - 1);
                                    sb3.append(": `");
                                    sb3.append(j04);
                                    sb3.append("`, method #");
                                    sb3.append(i20);
                                    sb3.append(": `");
                                    sb3.append(j05);
                                    sb3.append("`)");
                                    throw new AssertionError((Object) sb3.toString());
                                }
                                i20++;
                                c14 = c16;
                                c15 = c17;
                                a19 = a20;
                            }
                        }
                        C4785x5 c4785x58 = this.f35678i;
                        int i21 = f15.f35685b;
                        if (C4785x5.f38371i) {
                            c4785x58.getClass();
                        } else if (c4785x58.f38373b != null) {
                            throw new AssertionError();
                        }
                        c4785x58.f38373b = new A2[i21];
                        for (int i22 = 0; i22 < f15.f35685b; i22++) {
                            C4785x5 c4785x59 = this.f35678i;
                            E f16 = f(5);
                            if (i22 >= f16.f35685b) {
                                a12 = null;
                            } else {
                                this.f35671b.b((i22 * 8) + f16.f35686c);
                                a12 = this.f35681l.a(this.f35678i.e(this.f35671b.c()), this.f35678i.c(this.f35671b.c()), this.f35678i.d(this.f35671b.a()));
                            }
                            if (!C4785x5.f38371i && c4785x59.f38373b[i22] != null) {
                                throw new AssertionError();
                            }
                            c4785x59.f38373b[i22] = a12;
                        }
                        E f17 = f(8);
                        C4785x5 c4785x510 = this.f35678i;
                        int i23 = f17.f35685b;
                        if (C4785x5.f38371i) {
                            c4785x510.getClass();
                        } else if (c4785x510.f38379h != null) {
                            throw new AssertionError();
                        }
                        c4785x510.f38379h = new C2[i23];
                        for (int i24 = 0; i24 < f17.f35685b; i24++) {
                            C4785x5 c4785x511 = this.f35678i;
                            E f18 = f(8);
                            if (i24 >= f18.f35685b) {
                                a11 = null;
                            } else {
                                this.f35671b.b((i24 * 8) + f18.f35686c);
                                int c18 = this.f35671b.c();
                                switch (c18) {
                                    case 0:
                                        b22 = B2.f36147c;
                                        break;
                                    case 1:
                                        b22 = B2.f36148d;
                                        break;
                                    case 2:
                                        b22 = B2.f36149e;
                                        break;
                                    case 3:
                                        b22 = B2.f36150f;
                                        break;
                                    case 4:
                                        b22 = B2.f36151g;
                                        break;
                                    case 5:
                                        b22 = B2.f36152h;
                                        break;
                                    case 6:
                                        b22 = B2.f36153i;
                                        break;
                                    case 7:
                                        b22 = B2.f36154j;
                                        break;
                                    case 8:
                                        b22 = B2.f36155k;
                                        break;
                                    case 9:
                                        b22 = B2.f36156l;
                                        break;
                                    default:
                                        B2 b23 = B2.f36147c;
                                        throw new AssertionError();
                                }
                                if (!B2.f36157m && b22.f36158b != c18) {
                                    throw new AssertionError();
                                }
                                this.f35671b.c();
                                int c19 = this.f35671b.c();
                                switch (b22.ordinal()) {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                        a10 = this.f35678i.a(c19);
                                        break;
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                        a10 = this.f35678i.b(c19);
                                        break;
                                    default:
                                        throw new AssertionError((Object) "Method handle type unsupported in a dex file.");
                                }
                                this.f35671b.c();
                                a11 = this.f35681l.a(b22, a10, b22 == B2.f36155k, (A2) null);
                            }
                            if (!C4785x5.f38371i && c4785x511.f38379h[i24] != null) {
                                throw new AssertionError();
                            }
                            c4785x511.f38379h[i24] = a11;
                        }
                        E f19 = f(7);
                        C4785x5 c4785x512 = this.f35678i;
                        int i25 = f19.f35685b;
                        if (C4785x5.f38371i) {
                            c4785x512.getClass();
                        } else if (c4785x512.f38378g != null) {
                            throw new AssertionError();
                        }
                        c4785x512.f38378g = new D0[i25];
                        for (int i26 = 0; i26 < f19.f35685b; i26++) {
                            C4785x5 c4785x513 = this.f35678i;
                            E f20 = f(7);
                            if (i26 >= f20.f35685b) {
                                d02 = null;
                            } else {
                                R2[] r2Arr = e(this.f35671b.a((i26 * 4) + f20.f35686c)).f37169b;
                                boolean z12 = f35669m;
                                if (!z12) {
                                    R2 r22 = r2Arr[0];
                                    r22.getClass();
                                    if (!(r22 instanceof X2)) {
                                        throw new AssertionError();
                                    }
                                }
                                if (!z12 && !r2Arr[1].R0()) {
                                    throw new AssertionError();
                                }
                                if (!z12) {
                                    R2 r23 = r2Arr[2];
                                    r23.getClass();
                                    if (!(r23 instanceof Y2)) {
                                        throw new AssertionError();
                                    }
                                }
                                C4724u1 c4724u12 = this.f35681l;
                                L2 l22 = (L2) r2Arr[1].D0().f36759d;
                                I2 i27 = (I2) r2Arr[2].A0().f36759d;
                                C2 c22 = (C2) r2Arr[0].z0().f36759d;
                                List asList = Arrays.asList((R2[]) Arrays.copyOfRange(r2Arr, 3, r2Arr.length));
                                c4724u12.getClass();
                                d02 = new D0(l22, i27, c22, asList);
                            }
                            if (!C4785x5.f38371i && c4785x513.f38378g[i26] != null) {
                                throw new AssertionError();
                            }
                            c4785x513.f38378g[i26] = d02;
                        }
                        return;
                    }
                    E f21 = f(2);
                    M2 b12 = c4817z.b(i12 < f21.f35685b ? this.f35681l.c(this.f35678i.d(this.f35671b.a((i12 * 4) + f21.f35686c))) : null);
                    C4785x5 c4785x514 = this.f35678i;
                    if (!C4785x5.f38371i && c4785x514.f38376e[i12] != null) {
                        throw new AssertionError();
                    }
                    c4785x514.f38376e[i12] = b12;
                    i12++;
                }
            }
        }
    }

    public final C4823z5 c() {
        int a10 = this.f35671b.a();
        int[] iArr = new int[a10];
        for (int i10 = 0; i10 < a10; i10++) {
            iArr[i10] = this.f35671b.a();
        }
        C4723u0[] c4723u0Arr = new C4723u0[a10];
        for (int i11 = 0; i11 < a10; i11++) {
            c4723u0Arr[i11] = b(iArr[i11]);
        }
        return C4823z5.a(c4723u0Arr, 0);
    }

    public final W0 e() {
        return a(true);
    }

    public final R2 h() {
        V2 v22;
        byte b10 = this.f35671b.f35894b.a().get();
        int i10 = (b10 & 255) >> 5;
        int i11 = b10 & 31;
        if (i11 == -2) {
            v22 = V2.f36903v;
        } else if (i11 == -1) {
            v22 = V2.f36902u;
        } else if (i11 == 0) {
            v22 = V2.f36884c;
        } else if (i11 == 2) {
            v22 = V2.f36885d;
        } else if (i11 == 3) {
            v22 = V2.f36886e;
        } else if (i11 == 4) {
            v22 = V2.f36887f;
        } else if (i11 == 6) {
            v22 = V2.f36888g;
        } else if (i11 == 16) {
            v22 = V2.f36889h;
        } else if (i11 != 17) {
            switch (i11) {
                case 21:
                    v22 = V2.f36891j;
                    break;
                case 22:
                    v22 = V2.f36892k;
                    break;
                case 23:
                    v22 = V2.f36893l;
                    break;
                case 24:
                    v22 = V2.f36894m;
                    break;
                case 25:
                    v22 = V2.f36895n;
                    break;
                case 26:
                    v22 = V2.f36896o;
                    break;
                case 27:
                    v22 = V2.f36897p;
                    break;
                case 28:
                    v22 = V2.f36898q;
                    break;
                case 29:
                    v22 = V2.f36899r;
                    break;
                case 30:
                    v22 = V2.f36900s;
                    break;
                case 31:
                    v22 = V2.f36901t;
                    break;
                default:
                    V2 v23 = V2.f36884c;
                    throw new C5417Jv0();
            }
        } else {
            v22 = V2.f36890i;
        }
        switch (v22.ordinal()) {
            case 0:
                if (f35669m || i10 == 0) {
                    return R2.d.a((byte) C7664hu.c(this.f35671b, 1));
                }
                throw new AssertionError();
            case 1:
                short c10 = (short) C7664hu.c(this.f35671b, i10 + 1);
                return c10 == 0 ? R2.j.f36757e : new R2.j(c10);
            case 2:
                char d10 = (char) C7664hu.d(this.f35671b, i10 + 1);
                return d10 == 0 ? R2.e.f36747e : new R2.e(d10);
            case 3:
                return R2.h.j((int) C7664hu.c(this.f35671b, i10 + 1));
            case 4:
                return R2.i.a(C7664hu.c(this.f35671b, i10 + 1));
            case 5:
                return R2.g.a(C7664hu.b(this.f35671b, i10 + 1));
            case 6:
                return R2.f.a(C7664hu.a(this.f35671b, i10 + 1));
            case 7:
                return new Y2(this.f35678i.c((int) C7664hu.d(this.f35671b, i10 + 1)));
            case 8:
                C4785x5 c4785x5 = this.f35678i;
                int d11 = (int) C7664hu.d(this.f35671b, i10 + 1);
                if (C4785x5.f38371i || c4785x5.f38379h[d11] != null) {
                    return new X2(c4785x5.f38379h[d11]);
                }
                throw new AssertionError();
            case 9:
                return new R2.k(this.f35678i.d((int) C7664hu.d(this.f35671b, i10 + 1)));
            case 10:
                return new R2.l(this.f35678i.e((int) C7664hu.d(this.f35671b, i10 + 1)));
            case 11:
                C4554l1 a10 = this.f35678i.a((int) C7664hu.d(this.f35671b, i10 + 1));
                a(a10.f38298g);
                return new U2(a10);
            case 12:
                A2 b11 = this.f35678i.b((int) C7664hu.d(this.f35671b, i10 + 1));
                a(b11.f38298g);
                return new W2(b11);
            case 13:
                return new T2(this.f35678i.a((int) C7664hu.d(this.f35671b, i10 + 1)));
            case 14:
                if (!f35669m && i10 != 0) {
                    throw new AssertionError();
                }
                D d12 = this.f35671b;
                d12.getClass();
                int b12 = BR.b(d12);
                R2[] r2Arr = new R2[b12];
                for (int i12 = 0; i12 < b12; i12++) {
                    r2Arr[i12] = h();
                }
                return new R2.b(r2Arr);
            case 15:
                if (f35669m || i10 == 0) {
                    return new R2.a(f());
                }
                throw new AssertionError();
            case 16:
                if (f35669m || i10 == 0) {
                    return Z2.f37013d;
                }
                throw new AssertionError();
            case 17:
                return i10 != 0 ? R2.c.f36741e : R2.c.f36742f;
            default:
                throw new IndexOutOfBoundsException();
        }
    }

    public final C4325z d() {
        C4763w2[] c4763w2Arr;
        C4782x2[] c4782x2Arr;
        int a10 = this.f35671b.a();
        int a11 = this.f35671b.a();
        int a12 = this.f35671b.a();
        int a13 = this.f35671b.a();
        C4801y2[] c4801y2Arr = null;
        int i10 = 0;
        if (a11 == 0) {
            c4763w2Arr = null;
        } else {
            int[] iArr = new int[a11];
            int[] iArr2 = new int[a11];
            for (int i11 = 0; i11 < a11; i11++) {
                iArr[i11] = this.f35671b.a();
                iArr2[i11] = this.f35671b.a();
            }
            int position = this.f35671b.f35894b.a().position();
            c4763w2Arr = new C4763w2[a11];
            for (int i12 = 0; i12 < a11; i12++) {
                c4763w2Arr[i12] = new C4763w2(this.f35678i.a(iArr[i12]), b(iArr2[i12]));
            }
            this.f35671b.b(position);
        }
        if (a12 == 0) {
            c4782x2Arr = null;
        } else {
            int[] iArr3 = new int[a12];
            int[] iArr4 = new int[a12];
            for (int i13 = 0; i13 < a12; i13++) {
                iArr3[i13] = this.f35671b.a();
                iArr4[i13] = this.f35671b.a();
            }
            int position2 = this.f35671b.f35894b.a().position();
            c4782x2Arr = new C4782x2[a12];
            for (int i14 = 0; i14 < a12; i14++) {
                c4782x2Arr[i14] = new C4782x2(this.f35678i.b(iArr3[i14]), b(iArr4[i14]));
            }
            this.f35671b.b(position2);
        }
        if (a13 != 0) {
            int[] iArr5 = new int[a13];
            int[] iArr6 = new int[a13];
            for (int i15 = 0; i15 < a13; i15++) {
                iArr5[i15] = this.f35671b.a();
                iArr6[i15] = this.f35671b.a();
            }
            int position3 = this.f35671b.f35894b.a().position();
            C4801y2[] c4801y2Arr2 = new C4801y2[a13];
            int i16 = 0;
            while (i16 < a13) {
                A2 b10 = this.f35678i.b(iArr5[i16]);
                C4823z5 c10 = c(iArr6[i16]);
                int size = b10.f36127i.f36441f.size();
                if (c10 != C4823z5.f38465d) {
                    if (size != c10.size()) {
                        if (size < c10.size()) {
                            C4723u0[] c4723u0Arr = new C4723u0[size];
                            System.arraycopy(c10.f38467b, i10, c4723u0Arr, i10, size);
                            c10 = new C4823z5(c4723u0Arr, i10);
                        } else {
                            C4723u0[] c4723u0Arr2 = c10.f38467b;
                            c10 = new C4823z5(c4723u0Arr2, size - c4723u0Arr2.length);
                        }
                    }
                } else {
                    c10.getClass();
                }
                c4801y2Arr2[i16] = new C4801y2(b10, c10);
                i16++;
                i10 = 0;
            }
            this.f35671b.b(position3);
            c4801y2Arr = c4801y2Arr2;
        }
        return new C4325z(b(a10), c4763w2Arr, c4782x2Arr, c4801y2Arr);
    }

    public final void a(L2 l22) {
        C8570nJ c8570nJ = this.f35676g;
        if (c8570nJ.f50660a.f37846D6 || c8570nJ.c(com.android.tools.r8.internal.C2.R) || l22.c(this.f35676g.z())) {
            return;
        }
        throw new C5325If("Space characters in SimpleName '" + l22.p0() + "' are not allowed prior to DEX version 040");
    }

    public final W0.a g(int i10) {
        this.f35671b.b(i10);
        return a(false).l0();
    }

    public final E f(int i10) {
        ArrayList arrayList = this.f35672c;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            E e10 = (E) obj;
            if (e10.f35684a == i10) {
                return e10;
            }
        }
        return new E(i10, 0, 0, 0);
    }

    public final Object a(int i10, Supplier supplier) {
        if (i10 == 0) {
            return null;
        }
        Object obj = this.f35679j.get(i10);
        if (obj != null) {
            return obj;
        }
        this.f35671b.b(i10);
        Object obj2 = supplier.get();
        this.f35679j.a(i10, obj2);
        if (f35669m || this.f35679j.get(i10) == obj2) {
            return obj2;
        }
        throw new AssertionError();
    }

    public final C4666r0 a() {
        return new C4666r0(this.f35671b.f35894b.a().get(), f());
    }

    public final C4723u0 b(int i10) {
        Object a10;
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.dex.C.this.b();
            }
        };
        C15520i c15520i = new C15520i();
        if (i10 == 0) {
            a10 = c15520i.get();
        } else {
            a10 = a(i10, supplier);
        }
        return (C4723u0) a10;
    }

    public final C4666r0 a(int i10) {
        return (C4666r0) a(i10, new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.dex.C.this.a();
            }
        });
    }

    public final W0 a(int i10, AbstractC5635Np[] abstractC5635NpArr) {
        W0 w02 = (W0) a(i10, new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.dex.C.this.e();
            }
        });
        if (w02 != null && w02.r0()) {
            if (C8798oj.a(abstractC5635NpArr).u() > w02.m0().f36948f) {
                return (W0) this.f35680k.computeIfAbsent(Integer.valueOf(i10), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return com.android.tools.r8.dex.C.this.g(((Integer) obj).intValue());
                    }
                });
            }
        }
        return w02;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0059. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0056 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final W0 a(boolean z10) {
        D d10 = this.f35671b;
        d10.getClass();
        int b10 = BR.b(d10);
        boolean z11 = z10 && b10 == 1;
        D d11 = this.f35671b;
        d11.getClass();
        int b11 = BR.b(d11);
        L2[] l2Arr = new L2[b11];
        for (int i10 = 0; i10 < b11; i10++) {
            int b12 = this.f35671b.b();
            if (b12 != -1) {
                l2Arr[i10] = this.f35678i.d(b12);
                z11 = false;
            }
        }
        ArrayList arrayList = new ArrayList();
        int i11 = this.f35671b.f35894b.a().get() & 255;
        if (!AbstractC4313m.f35892c && i11 < 0) {
            throw new AssertionError();
        }
        while (i11 != 0) {
            switch (i11) {
                case 1:
                    C4724u1 c4724u1 = this.f35681l;
                    D d12 = this.f35671b;
                    d12.getClass();
                    arrayList.add(c4724u1.b(BR.b(d12)));
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c && i11 < 0) {
                        throw new AssertionError();
                    }
                    break;
                case 2:
                    C4724u1 c4724u12 = this.f35681l;
                    D d13 = this.f35671b;
                    d13.getClass();
                    arrayList.add(c4724u12.a(BR.a(d13)));
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                        break;
                    }
                case 3:
                    D d14 = this.f35671b;
                    d14.getClass();
                    int b13 = BR.b(d14);
                    int b14 = this.f35671b.b();
                    int b15 = this.f35671b.b();
                    arrayList.add(new O0.d(b13, b14 == -1 ? null : this.f35678i.d(b14), b15 == -1 ? null : this.f35678i.e(b15), null));
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
                case 4:
                    D d15 = this.f35671b;
                    d15.getClass();
                    int b16 = BR.b(d15);
                    int b17 = this.f35671b.b();
                    int b18 = this.f35671b.b();
                    int b19 = this.f35671b.b();
                    arrayList.add(new O0.d(b16, b17 == -1 ? null : this.f35678i.d(b17), b18 == -1 ? null : this.f35678i.e(b18), b19 != -1 ? this.f35678i.d(b19) : null));
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
                case 5:
                    C4724u1 c4724u13 = this.f35681l;
                    D d16 = this.f35671b;
                    d16.getClass();
                    arrayList.add(c4724u13.d(BR.b(d16)));
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
                case 6:
                    C4724u1 c4724u14 = this.f35681l;
                    D d17 = this.f35671b;
                    d17.getClass();
                    arrayList.add(c4724u14.e(BR.b(d17)));
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
                case 7:
                    arrayList.add(this.f35681l.f38113o);
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
                case 8:
                    arrayList.add(this.f35681l.f38105n);
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
                case 9:
                    int b20 = this.f35671b.b();
                    L2 d18 = b20 != -1 ? this.f35678i.d(b20) : null;
                    if (this.f35676g.f50645V) {
                        arrayList.add(this.f35681l.a(d18));
                    }
                    z11 = false;
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
                default:
                    if (!f35669m && (i11 < 10 || i11 > 255)) {
                        throw new AssertionError();
                    }
                    O0.b c10 = this.f35681l.c(i11);
                    arrayList.add(c10);
                    if (z11) {
                        if (arrayList.size() == 1) {
                            z11 = c10.equals(this.f35681l.f38137r);
                        } else {
                            z11 = c10.equals(this.f35681l.f38145s);
                        }
                    }
                    i11 = this.f35671b.f35894b.a().get() & 255;
                    if (AbstractC4313m.f35892c) {
                    }
                    break;
            }
        }
        if (z11) {
            return new X0(b11, arrayList.size() - 1);
        }
        return new W0.a(b10, l2Arr, (O0[]) arrayList.toArray(O0.f36660b));
    }

    public final C4460g1[] a(int i10, C4763w2[] c4763w2Arr, R2[] r2Arr) {
        C4460g1[] c4460g1Arr = new C4460g1[i10];
        B b10 = new B(c4763w2Arr, new C15520i());
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            D d10 = this.f35671b;
            d10.getClass();
            i12 += BR.b(d10);
            C4554l1 a10 = this.f35678i.a(i12);
            D d11 = this.f35671b;
            d11.getClass();
            C4537k3 c4537k3 = new C4537k3(BR.b(d11) & AccessFlags.FIELD_FLAGS);
            R2 r22 = (!c4537k3.n() || r2Arr == null || i11 >= r2Arr.length) ? null : r2Arr[i11];
            C4723u0 c4723u0 = (C4723u0) b10.a(a10);
            H3.e p10 = H3.e.p();
            if (!this.f35676g.f50736y) {
                C4724u1 c4724u1 = this.f35681l;
                C4666r0[] c4666r0Arr = C4666r0.f37690d;
                C4666r0 a11 = c4723u0.a(c4724u1.f37845D5);
                String a12 = a11 != null ? C4666r0.a(a11) : null;
                if (a12 != null) {
                    c4723u0 = c4723u0.b(this.f35681l.f37845D5);
                    p10 = H3.b(a10.f38298g.toString(), a12, this.f35670a, this.f35681l, this.f35676g.f50691j);
                }
            }
            C4460g1[] c4460g1Arr2 = C4460g1.f37200o;
            C4460g1.a a13 = new C4460g1.a(false).a(a10);
            a13.f37213c = c4537k3;
            a13.f37214d = p10;
            a13.f37212b = c4723u0;
            a13.f37216f = r22;
            c4460g1Arr[i11] = a13.c().a();
            i11++;
        }
        return c4460g1Arr;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0222  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C4516j1[] a(int i10, C4782x2[] c4782x2Arr, C4801y2[] c4801y2Arr, boolean z10) {
        C4516j1[] c4516j1Arr;
        B b10;
        B b11;
        int i11;
        int i12;
        L4 l42;
        J0 j02;
        L4 l43;
        B b12;
        J0.b[] bVarArr;
        int i13;
        int i14;
        int i15;
        int i16;
        J0.b[] bVarArr2;
        int i17;
        int i18 = i10;
        C4516j1[] c4516j1Arr2 = new C4516j1[i18];
        B b13 = new B(c4782x2Arr, new C15520i());
        B b14 = new B(c4801y2Arr, new Supplier() {
            @Override
            public final Object get() {
                return C4823z5.k0();
            }
        });
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (i20 < i18) {
            D d10 = this.f35671b;
            d10.getClass();
            int b15 = i21 + BR.b(d10);
            D d11 = this.f35671b;
            d11.getClass();
            L4 e10 = L4.e(BR.b(d11));
            D d12 = this.f35671b;
            d12.getClass();
            int b16 = BR.b(d12);
            if (z10 || b16 == 0 || this.f35675f == com.android.tools.r8.graph.V.f36879e || f(AL.AL_FREQUENCY).f35685b == 0) {
                c4516j1Arr = c4516j1Arr2;
                b10 = b13;
                b11 = b14;
                i11 = i20;
                i12 = b15;
                l42 = e10;
                j02 = null;
            } else {
                int position = this.f35671b.f35894b.a().position();
                this.f35671b.b(b16);
                D d13 = this.f35671b;
                d13.getClass();
                boolean z11 = AbstractC4313m.f35892c;
                int position2 = d13.f35894b.a().position();
                d13.f35894b.c(position2 + ((4 - (position2 % 4)) & 3));
                int c10 = this.f35671b.c();
                int c11 = this.f35671b.c();
                int c12 = this.f35671b.c();
                int c13 = this.f35671b.c();
                int a10 = this.f35671b.a();
                int a11 = this.f35671b.a();
                short[] sArr = new short[a11];
                c4516j1Arr = c4516j1Arr2;
                J0.a[] aVarArr = new J0.a[c13];
                i11 = i20;
                J0.b[] bVarArr3 = new J0.b[i19];
                if (a11 != 0) {
                    while (i19 < a11) {
                        sArr[i19] = this.f35671b.f35894b.d();
                        i19++;
                        bVarArr3 = bVarArr3;
                    }
                    bVarArr = bVarArr3;
                    if (a11 % 2 != 0) {
                        this.f35671b.c();
                    }
                    if (c13 > 0) {
                        ME me2 = new ME();
                        int i22 = 0;
                        while (i22 < c13) {
                            aVarArr[i22] = new J0.a(this.f35671b.a(), this.f35671b.c(), this.f35671b.c());
                            i22++;
                            b14 = b14;
                            b13 = b13;
                            e10 = e10;
                            b15 = b15;
                        }
                        b10 = b13;
                        b11 = b14;
                        i12 = b15;
                        l42 = e10;
                        int position3 = this.f35671b.f35894b.a().position();
                        D d14 = this.f35671b;
                        d14.getClass();
                        int b17 = BR.b(d14);
                        J0.b[] bVarArr4 = new J0.b[b17];
                        int i23 = 0;
                        while (i23 < b17) {
                            me2.b(this.f35671b.f35894b.a().position() - position3, i23);
                            D d15 = this.f35671b;
                            d15.getClass();
                            int a12 = BR.a(d15);
                            int i24 = position3;
                            int abs = Math.abs(a12);
                            int i25 = b17;
                            J0.b.a[] aVarArr2 = new J0.b.a[abs];
                            int i26 = position;
                            int i27 = 0;
                            while (i27 < abs) {
                                int i28 = abs;
                                D d16 = this.f35671b;
                                d16.getClass();
                                int b18 = BR.b(d16);
                                int i29 = c12;
                                D d17 = this.f35671b;
                                d17.getClass();
                                aVarArr2[i27] = new J0.b.a(BR.b(d17), this.f35678i.e(b18));
                                i27++;
                                abs = i28;
                                c12 = i29;
                                c11 = c11;
                                c10 = c10;
                            }
                            int i30 = c10;
                            int i31 = c11;
                            int i32 = c12;
                            if (a12 <= 0) {
                                D d18 = this.f35671b;
                                d18.getClass();
                                i17 = BR.b(d18);
                            } else {
                                i17 = -1;
                            }
                            bVarArr4[i23] = new J0.b(aVarArr2, i17);
                            i23++;
                            position3 = i24;
                            b17 = i25;
                            c12 = i32;
                            position = i26;
                            c11 = i31;
                            c10 = i30;
                        }
                        i13 = position;
                        i14 = c10;
                        i15 = c11;
                        i16 = c12;
                        for (int i33 = 0; i33 < c13; i33++) {
                            J0.a aVar = aVarArr[i33];
                            aVar.f36473e = me2.get(aVar.f36470b);
                        }
                        bVarArr2 = bVarArr4;
                        i19 = 0;
                        AbstractC5635Np[] a13 = new C5751Pp().a(ShortBuffer.wrap(sArr), 0, a11, this.f35678i);
                        int position4 = this.f35671b.f35894b.a().position();
                        W0 a14 = a(a10, a13);
                        this.f35671b.b(position4);
                        if (this.f35676g.f50599F1.f50894n) {
                            a14 = null;
                        }
                        j02 = new J0(i14, i15, i16, a13, aVarArr, bVarArr2, a14);
                        this.f35671b.b(i13);
                    } else {
                        b10 = b13;
                        b11 = b14;
                    }
                } else {
                    b10 = b13;
                    b11 = b14;
                    bVarArr = bVarArr3;
                }
                i12 = b15;
                l42 = e10;
                i13 = position;
                i14 = c10;
                i15 = c11;
                i16 = c12;
                bVarArr2 = bVarArr;
                i19 = 0;
                AbstractC5635Np[] a132 = new C5751Pp().a(ShortBuffer.wrap(sArr), 0, a11, this.f35678i);
                int position42 = this.f35671b.f35894b.a().position();
                W0 a142 = a(a10, a132);
                this.f35671b.b(position42);
                if (this.f35676g.f50599F1.f50894n) {
                }
                j02 = new J0(i14, i15, i16, a132, aVarArr, bVarArr2, a142);
                this.f35671b.b(i13);
            }
            int i34 = i12;
            A2 b19 = this.f35678i.b(i34);
            C4724u1 c4724u1 = this.f35681l;
            l42.getClass();
            if (c4724u1.a(b19) || b19.f38298g == c4724u1.f38075j1) {
                l43 = l42;
                l43.a(65536);
                b12 = b10;
            } else {
                b12 = b10;
                l43 = l42;
            }
            C4723u0 c4723u0 = (C4723u0) b12.a(b19);
            H3.g d19 = H3.g.d();
            if (!this.f35676g.f50736y) {
                C4724u1 c4724u12 = this.f35681l;
                C4666r0[] c4666r0Arr = C4666r0.f37690d;
                C4666r0 a15 = c4723u0.a(c4724u12.f37845D5);
                String a16 = a15 == null ? null : C4666r0.a(a15);
                if (a16 != null) {
                    c4723u0 = c4723u0.b(this.f35681l.f37845D5);
                    d19 = H3.c(b19.f38298g.toString(), a16, this.f35670a, this.f35681l, this.f35676g.f50691j);
                }
            }
            C4516j1.a a17 = C4516j1.K0().a(b19).a(l43);
            a17.f37332d = d19;
            a17.f37333e = c4723u0;
            B b20 = b11;
            a17.f37335g = (C4823z5) b20.a(b19);
            c4516j1Arr[i11] = a17.a(j02).b().a();
            b13 = b12;
            b14 = b20;
            i21 = i34;
            c4516j1Arr2 = c4516j1Arr;
            i20 = i11 + 1;
            i18 = i10;
        }
        return c4516j1Arr2;
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.B b10) {
        int[] iArr;
        int i10;
        int[] iArr2;
        final Long l10;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        C4460g1[] c4460g1Arr;
        C4460g1[] c4460g1Arr2;
        C4516j1[] c4516j1Arr;
        C4516j1[] c4516j1Arr2;
        int[] iArr6;
        int[] iArr7;
        C4723u0 c4723u0;
        C4723u0 c4723u02;
        E f10 = f(6);
        int i11 = f10.f35685b;
        C4785x5 c4785x5 = this.f35678i;
        if (!C4785x5.f38371i) {
            if (c4785x5.f38372a != null) {
                throw new AssertionError();
            }
        } else {
            c4785x5.getClass();
        }
        c4785x5.f38372a = new H2[i11];
        if (i11 == 0) {
            return;
        }
        this.f35671b.b(f10.f35686c);
        int[] iArr8 = new int[i11];
        int[] iArr9 = new int[i11];
        int[] iArr10 = new int[i11];
        int[] iArr11 = new int[i11];
        int[] iArr12 = new int[i11];
        int[] iArr13 = new int[i11];
        int[] iArr14 = new int[i11];
        int[] iArr15 = new int[i11];
        boolean z10 = false;
        for (int i12 = 0; i12 < i11; i12++) {
            iArr8[i12] = this.f35671b.a();
            iArr9[i12] = this.f35671b.a();
            iArr10[i12] = this.f35671b.f35894b.c();
            iArr11[i12] = this.f35671b.a();
            iArr12[i12] = this.f35671b.f35894b.c();
            iArr13[i12] = this.f35671b.a();
            iArr14[i12] = this.f35671b.a();
            iArr15[i12] = this.f35671b.a();
        }
        int i13 = 0;
        while (i13 < i11) {
            int i14 = iArr10[i13];
            M2 e10 = i14 == -1 ? null : this.f35678i.e(i14);
            int i15 = iArr12[i13];
            L2 d10 = i15 == -1 ? null : this.f35678i.d(i15);
            M2 e11 = this.f35678i.e(iArr8[i13]);
            com.android.tools.r8.graph.Q q10 = new com.android.tools.r8.graph.Q(iArr9[i13] & AccessFlags.INNER_CLASS_FLAGS);
            if (q10.a(C4319t.f35953b, z10)) {
                C4460g1[] c4460g1Arr3 = C4460g1.f37200o;
                C4516j1[] c4516j1Arr3 = C4516j1.f37310u;
                C4325z d11 = d(iArr13[i13]);
                D20 d20 = this.f35677h;
                if (d20 == null || d20.isEmpty()) {
                    iArr = iArr8;
                    i10 = i11;
                    iArr2 = iArr9;
                    l10 = null;
                } else {
                    iArr = iArr8;
                    String V02 = b10.a(e11).V0();
                    i10 = i11;
                    iArr2 = iArr9;
                    l10 = (Long) this.f35677h.getOrDefault(V02, null);
                    if (!this.f35676g.f50642U.test(V02, l10)) {
                        iArr3 = iArr10;
                        iArr6 = iArr11;
                        iArr4 = iArr12;
                        iArr5 = iArr13;
                        iArr7 = iArr14;
                        i13++;
                        iArr8 = iArr;
                        i11 = i10;
                        iArr9 = iArr2;
                        iArr10 = iArr3;
                        iArr12 = iArr4;
                        iArr13 = iArr5;
                        iArr11 = iArr6;
                        iArr14 = iArr7;
                        z10 = false;
                    }
                }
                if (iArr14[i13] != 0) {
                    C4441f1 e12 = e(iArr15[i13]);
                    this.f35671b.b(iArr14[i13]);
                    D d12 = this.f35671b;
                    d12.getClass();
                    int b11 = BR.b(d12);
                    D d13 = this.f35671b;
                    d13.getClass();
                    int b12 = BR.b(d13);
                    iArr3 = iArr10;
                    D d14 = this.f35671b;
                    d14.getClass();
                    int b13 = BR.b(d14);
                    iArr4 = iArr12;
                    D d15 = this.f35671b;
                    d15.getClass();
                    int b14 = BR.b(d15);
                    iArr5 = iArr13;
                    C4460g1[] a10 = a(b11, d11.f35984b, e12 != null ? e12.f37169b : null);
                    C4460g1[] a11 = a(b12, d11.f35984b, null);
                    c4516j1Arr = a(b13, d11.f35985c, d11.f35986d, this.f35675f != com.android.tools.r8.graph.V.f36877c);
                    c4516j1Arr2 = a(b14, d11.f35985c, d11.f35986d, this.f35675f != com.android.tools.r8.graph.V.f36877c);
                    c4460g1Arr = a10;
                    c4460g1Arr2 = a11;
                } else {
                    iArr3 = iArr10;
                    iArr4 = iArr12;
                    iArr5 = iArr13;
                    c4460g1Arr = c4460g1Arr3;
                    c4460g1Arr2 = c4460g1Arr;
                    c4516j1Arr = c4516j1Arr3;
                    c4516j1Arr2 = c4516j1Arr;
                }
                A a12 = new A(e11, this.f35670a, d11.f35983a, this.f35676g);
                H2.a c10895l2 = l10 == null ? new C10895l2() : new H2.a() {
                    @Override
                    public final long a(H2 h22) {
                        long longValue;
                        longValue = Long.this.longValue();
                        return longValue;
                    }
                };
                com.android.tools.r8.graph.V v10 = this.f35675f;
                ProgramResource.Kind kind = ProgramResource.Kind.DEX;
                Origin origin = this.f35670a;
                O2 h10 = h(iArr11[i13]);
                C4615o5 c4615o5 = a12.f35662f;
                List list = a12.f35663g;
                List list2 = a12.f35664h;
                List list3 = a12.f35665i;
                C4500i3 c4500i3 = a12.f35658b;
                iArr6 = iArr11;
                List list4 = a12.f35659c;
                if (list4 == null) {
                    list4 = Collections.EMPTY_LIST;
                }
                List list5 = list4;
                H3.b bVar = a12.f35661e;
                iArr7 = iArr14;
                ArrayList arrayList = a12.f35660d;
                if (arrayList != null) {
                    if (arrayList.size() == 0) {
                        c4723u0 = C4723u0.l0();
                    } else {
                        C4666r0[] c4666r0Arr = (C4666r0[]) a12.f35660d.toArray(C4666r0.f37690d);
                        if (X3.a(c4666r0Arr)) {
                            c4723u0 = C4723u0.l0();
                        } else {
                            c4723u02 = new C4723u0(c4666r0Arr);
                            consumer.accept(v10.f36880a.a(e11, kind, origin, q10, e10, h10, d10, c4615o5, list, list2, list3, c4500i3, list5, bVar, c4723u02, c4460g1Arr, c4460g1Arr2, c4516j1Arr, c4516j1Arr2, this.f35681l.f37846D6, c10895l2, null, EnumC5372Jb0.f41429b));
                            i13++;
                            iArr8 = iArr;
                            i11 = i10;
                            iArr9 = iArr2;
                            iArr10 = iArr3;
                            iArr12 = iArr4;
                            iArr13 = iArr5;
                            iArr11 = iArr6;
                            iArr14 = iArr7;
                            z10 = false;
                        }
                    }
                } else {
                    c4723u0 = a12.f35657a;
                }
                c4723u02 = c4723u0;
                consumer.accept(v10.f36880a.a(e11, kind, origin, q10, e10, h10, d10, c4615o5, list, list2, list3, c4500i3, list5, bVar, c4723u02, c4460g1Arr, c4460g1Arr2, c4516j1Arr, c4516j1Arr2, this.f35681l.f37846D6, c10895l2, null, EnumC5372Jb0.f41429b));
                i13++;
                iArr8 = iArr;
                i11 = i10;
                iArr9 = iArr2;
                iArr10 = iArr3;
                iArr12 = iArr4;
                iArr13 = iArr5;
                iArr11 = iArr6;
                iArr14 = iArr7;
                z10 = false;
            } else {
                throw new C5325If(this.f35670a, "Class " + e11.j0() + " has illegal access flags. Found: " + ((Object) q10), null);
            }
        }
    }

    public final void a(E e10) {
        String str;
        if (e10.f35685b >= 2) {
            int i10 = e10.f35686c;
            this.f35671b.b(i10);
            int a10 = this.f35671b.a();
            int i11 = 1;
            while (i11 < e10.f35685b) {
                this.f35671b.b((i11 * 4) + i10);
                int a11 = this.f35671b.a();
                boolean z10 = a11 > a10;
                if (!f35669m && !z10) {
                    if (this.f35678i.d(a10).equals(this.f35678i.d(a11))) {
                        str = "Duplicate";
                    } else {
                        str = "Out-of-order";
                    }
                    throw new AssertionError((Object) String.format(str + " type ids (type #%s: `%s` string #%s, type #%s: `%s` string #%s)", Integer.valueOf(i11 - 1), this.f35678i.d(a10), Integer.valueOf(a10), Integer.valueOf(i11), this.f35678i.d(a11), Integer.valueOf(a11)));
                }
                i11++;
                a10 = a11;
            }
        }
    }
}
