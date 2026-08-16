package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R2;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C8085kR {

    public static final C8085kR f49623j = new C8085kR(null, null, null, null, null, null, null, null, null);

    public static final boolean f49624k = true;

    public final String f49625a;

    public final com.android.tools.r8.graph.A2 f49626b;

    public final com.android.tools.r8.graph.I2 f49627c;

    public final com.android.tools.r8.graph.C2 f49628d;

    public final ArrayList f49629e;

    public final Set f49630f;

    public final com.android.tools.r8.graph.O2 f49631g;

    public final com.android.tools.r8.graph.L4 f49632h;

    public final com.android.tools.r8.graph.M2 f49633i;

    public C8085kR(C4798y c4798y, C4514j c4514j, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D0 d02, com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.I2 i22, com.android.tools.r8.graph.I2 i23, com.android.tools.r8.graph.C2 c22, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.O2 o22) {
        boolean z10 = f49624k;
        if (!z10 && c4514j == null) {
            throw new AssertionError();
        }
        if (!z10 && d02 == null) {
            throw new AssertionError();
        }
        if (!z10 && l22 == null) {
            throw new AssertionError();
        }
        if (!z10 && i22 == null) {
            throw new AssertionError();
        }
        if (!z10 && i23 == null) {
            throw new AssertionError();
        }
        if (!z10 && c22 == null) {
            throw new AssertionError();
        }
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        if (!z10 && o22 == null) {
            throw new AssertionError();
        }
        this.f49626b = c4514j.b().a(m22, i22, l22);
        d02.getClass();
        com.android.tools.r8.graph.C0 c02 = new com.android.tools.r8.graph.C0(d02);
        try {
            c02.f36187a = new ByteArrayOutputStream();
            c02.f36188b = new ObjectOutputStream(c02.f36187a);
            c02.a(d02.f36212e);
            c02.a(d02.f36213f);
            c02.a(d02.f36214g);
            c02.a(d02.f36215h);
            c02.f36188b.close();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(c02.f36187a.toByteArray());
            L5 l52 = N5.f42495a;
            this.f49625a = (l52.f42160c == null ? l52 : l52.a(l52.f42159b)).a(messageDigest.digest());
            this.f49627c = i23;
            this.f49628d = c22;
            this.f49631g = o22;
            this.f49630f = AbstractC5513Ll0.c();
            ArrayList arrayList = new ArrayList();
            this.f49629e = arrayList;
            arrayList.add(m22);
            com.android.tools.r8.graph.H0 a10 = h52 == null ? null : a(c4798y, c4514j, h52);
            if (a10 != null) {
                com.android.tools.r8.graph.L4 accessFlags = a10.getAccessFlags();
                this.f49632h = new com.android.tools.r8.graph.L4(accessFlags.f37196b, accessFlags.f37197c);
                this.f49633i = a10.p();
            } else {
                this.f49632h = null;
                this.f49633i = null;
            }
        } catch (IOException | NoSuchAlgorithmException unused) {
            throw new C5417Jv0("Cannot get SHA-1 message digest");
        }
    }

    public static C8085kR b(com.android.tools.r8.graph.D0 d02, C4798y c4798y, C4514j c4514j, com.android.tools.r8.graph.H5 h52) {
        C8085kR a10 = a(d02, c4798y, c4514j, h52);
        if (a10 == f49623j) {
            return null;
        }
        return a10;
    }

    public final void a(BiConsumer biConsumer) {
        com.android.tools.r8.graph.I2 y02 = this.f49626b.y0();
        biConsumer.accept(y02.o0(), this.f49627c.o0());
        for (int i10 = 0; i10 < this.f49627c.m0(); i10++) {
            biConsumer.accept(y02.f36441f.f36675b[i10], this.f49627c.f36441f.f36675b[i10]);
        }
    }

    public final com.android.tools.r8.graph.M2 a() {
        com.android.tools.r8.graph.M2[] m2Arr = this.f49627c.f36441f.f36675b;
        com.android.tools.r8.graph.M2[] m2Arr2 = this.f49631g.f36675b;
        if (f49624k || m2Arr2.length > 0 || m2Arr.length > 0) {
            return m2Arr2.length > 0 ? m2Arr2[0] : m2Arr[0];
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x010f, code lost:
    
        if (a(r2) != false) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.H0 a(C4798y c4798y, C4514j c4514j, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.Z4 a10;
        boolean z10 = f49624k;
        if (!z10 && h52 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 m02 = this.f49628d.m0();
        switch (this.f49628d.f36190e.ordinal()) {
            case 4:
                c4514j.getClass();
                com.android.tools.r8.graph.H2 holder = h52.getHolder();
                if (!C4514j.f37304i) {
                    c4514j.c();
                }
                com.android.tools.r8.graph.H0 b10 = c4514j.f(m02).b(holder, c4798y, c4514j);
                if (z10 || b10 == null || b10.getAccessFlags().n()) {
                    return b10;
                }
                throw new AssertionError();
            case 5:
            case 7:
                com.android.tools.r8.graph.M2 a11 = a();
                boolean z11 = this.f49628d.f36192g;
                boolean z12 = C4514j.f37304i;
                if (!z12) {
                    c4514j.c();
                }
                if (z11) {
                    a10 = c4514j.c(a11, m02);
                } else {
                    a10 = c4514j.a(a11, m02);
                }
                com.android.tools.r8.graph.H0 p10 = a10.p();
                if (p10 == null) {
                    com.android.tools.r8.graph.H2 holder2 = h52.getHolder();
                    if (!z12) {
                        c4514j.c();
                    }
                    p10 = c4514j.f(m02).a(holder2, c4798y, c4514j);
                }
                if (!z10 && p10 != null) {
                    com.android.tools.r8.graph.B2 b22 = this.f49628d.f36190e;
                    b22.getClass();
                    if (b22 != com.android.tools.r8.graph.B2.f36152h || (!a(p10) && !p10.getAccessFlags().n())) {
                        if (!this.f49628d.f36190e.b() || !p10.getAccessFlags().h() || !a(p10)) {
                            if (this.f49628d.f36190e.b()) {
                                C4516j1 d10 = p10.d();
                                d10.L0();
                                if (d10.f37314g.i()) {
                                    break;
                                }
                            }
                            throw new AssertionError();
                        }
                        return p10;
                    }
                }
                return p10;
            case 6:
                c4514j.getClass();
                com.android.tools.r8.graph.H2 holder3 = h52.getHolder();
                if (!C4514j.f37304i) {
                    c4514j.c();
                }
                com.android.tools.r8.graph.H0 a12 = c4514j.f(m02).a(holder3, c4798y, c4514j);
                if (z10 || a12 == null || AbstractC4458g.d(a12.getAccessFlags().f37197c, 65536)) {
                    return a12;
                }
                throw new AssertionError();
            case 8:
                com.android.tools.r8.graph.H0 p11 = c4514j.c(a(), m02).p();
                if (z10 || p11 == null || a(p11)) {
                    return p11;
                }
                throw new AssertionError();
            default:
                throw new C5417Jv0("Unexpected method handle kind in " + ((Object) this.f49628d));
        }
    }

    public C8085kR(String str, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, com.android.tools.r8.graph.C2 c22, ArrayList arrayList, Set set, com.android.tools.r8.graph.O2 o22, com.android.tools.r8.graph.L4 l42, com.android.tools.r8.graph.M2 m22) {
        this.f49625a = str;
        this.f49626b = a22;
        this.f49627c = i22;
        this.f49628d = c22;
        this.f49629e = arrayList;
        this.f49630f = set;
        this.f49631g = o22;
        this.f49632h = l42;
        this.f49633i = m22;
    }

    public static boolean a(com.android.tools.r8.graph.H0 h02) {
        return (AbstractC4458g.d(h02.getAccessFlags().f37197c, 65536) || h02.getAccessFlags().n()) ? false : true;
    }

    public static C8085kR a(com.android.tools.r8.graph.D0 d02, C4798y c4798y, C4514j c4514j, com.android.tools.r8.graph.H5 h52) {
        int i10;
        if (d02.f36214g.f36190e.c()) {
            C4724u1 b10 = c4514j.b();
            com.android.tools.r8.graph.A2 m02 = d02.f36214g.m0();
            if (m02 == b10.f38168u6 || m02 == b10.f38176v6) {
                C4724u1 b11 = c4514j.b();
                com.android.tools.r8.graph.A2 m03 = d02.f36214g.m0();
                com.android.tools.r8.graph.L2 l22 = d02.f36212e;
                com.android.tools.r8.graph.Y2 y22 = (com.android.tools.r8.graph.Y2) a(d02.f36215h, 0, com.android.tools.r8.graph.Y2.class);
                boolean z10 = true;
                com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) ((com.android.tools.r8.graph.X2) a(d02.f36215h, 1, com.android.tools.r8.graph.X2.class)).f36759d;
                com.android.tools.r8.graph.Y2 y23 = (com.android.tools.r8.graph.Y2) a(d02.f36215h, 2, com.android.tools.r8.graph.Y2.class);
                com.android.tools.r8.graph.I2 i22 = (com.android.tools.r8.graph.I2) y23.f36759d;
                com.android.tools.r8.graph.I2 i23 = (com.android.tools.r8.graph.I2) y22.f36759d;
                com.android.tools.r8.graph.A2 m04 = c22.m0();
                com.android.tools.r8.graph.M2 m22 = i22.f36440e;
                com.android.tools.r8.graph.M2 m23 = i23.f36440e;
                com.android.tools.r8.graph.M2 z02 = m04.z0();
                if (!a(b11, m22, m23)) {
                    z10 = m22.P0() ? AbstractC9087qR.a(b11, z02, m22) : false;
                }
                if (z10) {
                    com.android.tools.r8.graph.M2[] m2Arr = i22.f36441f.f36675b;
                    com.android.tools.r8.graph.M2[] m2Arr2 = i23.f36441f.f36675b;
                    int length = m2Arr.length;
                    if (length == m2Arr2.length) {
                        for (int i11 = 0; i11 < length; i11++) {
                            if (a(b11, m2Arr[i11], m2Arr2[i11])) {
                            }
                        }
                        com.android.tools.r8.graph.I2 i24 = d02.f36213f;
                        final C8085kR c8085kR = new C8085kR(c4798y, c4514j, h52, d02, l22, (com.android.tools.r8.graph.I2) y22.f36759d, (com.android.tools.r8.graph.I2) y23.f36759d, c22, i24.f36440e, i24.f36441f);
                        if (b11.f38168u6.a(m03)) {
                            if (d02.f36215h.size() != 3) {
                                throw new C5417Jv0("Unexpected number of metafactory method arguments in " + d02.toString());
                            }
                        } else {
                            List list = d02.f36215h;
                            Consumer consumer = new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C8085kR.a(C8085kR.this, (com.android.tools.r8.graph.M2) obj);
                                }
                            };
                            final Set set = c8085kR.f49630f;
                            Objects.requireNonNull(set);
                            Consumer consumer2 = new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    Set.this.add((com.android.tools.r8.graph.I2) obj);
                                }
                            };
                            int i12 = ((R2.h) a(list, 3, R2.h.class)).f36754d;
                            if (!f49624k && (i12 & (-8)) != 0) {
                                throw new AssertionError();
                            }
                            if ((i12 & 2) != 0) {
                                int i13 = ((R2.h) a(list, 4, R2.h.class)).f36754d;
                                i10 = 5;
                                int i14 = 0;
                                while (i14 < i13) {
                                    consumer.accept((com.android.tools.r8.graph.M2) ((R2.l) a(list, i10, R2.l.class)).f36759d);
                                    i14++;
                                    i10++;
                                }
                            } else {
                                i10 = 4;
                            }
                            if ((i12 & 1) != 0) {
                                consumer.accept(b11.f38032d6);
                            }
                            if ((i12 & 4) != 0) {
                                int i15 = ((R2.h) a(list, i10, R2.h.class)).f36754d;
                                i10++;
                                int i16 = 0;
                                while (i16 < i15) {
                                    consumer2.accept((com.android.tools.r8.graph.I2) ((com.android.tools.r8.graph.Y2) a(list, i10, com.android.tools.r8.graph.Y2.class)).f36759d);
                                    i16++;
                                    i10++;
                                }
                            }
                            if (list.size() != i10) {
                                throw new C5417Jv0("Unexpected number of metafactory method arguments in DexCallSite");
                            }
                        }
                        return c8085kR;
                    }
                }
                throw new C5417Jv0("Enforced and erased signatures are inconsistent in " + d02.toString());
            }
        }
        return f49623j;
    }

    public static void a(C8085kR c8085kR, com.android.tools.r8.graph.M2 m22) {
        if (c8085kR.f49629e.contains(m22)) {
            return;
        }
        c8085kR.f49629e.add(m22);
    }

    public static com.android.tools.r8.graph.R2 a(List list, int i10, Class cls) {
        if (list.size() >= i10) {
            com.android.tools.r8.graph.R2 r22 = (com.android.tools.r8.graph.R2) list.get(i10);
            if (cls.isAssignableFrom(r22.getClass())) {
                return r22;
            }
            throw new C5417Jv0("Unexpected type of bootstrap arguments #" + i10 + " in DexCallSite");
        }
        throw new C5417Jv0("Expected to find at least " + i10 + " bootstrap arguments in DexCallSite");
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22.a(m23) || (m22.I0() && m23.I0())) {
            return true;
        }
        if (!m22.E0()) {
            return false;
        }
        if (m23.E0()) {
            return a(c4724u1, m22.a(1, c4724u1), m23.a(1, c4724u1));
        }
        return m23.a(c4724u1.f38068i2);
    }

    public final C8085kR a(final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2, final RR rr) {
        String str = this.f49625a;
        com.android.tools.r8.graph.A2 d10 = abstractC5308Hz.d(abstractC5308Hz2, this.f49626b);
        com.android.tools.r8.graph.I2 a10 = rr.a(this.f49627c);
        com.android.tools.r8.graph.C2 a11 = rr.a(this.f49628d, 1, this.f49626b);
        ArrayList arrayList = new ArrayList(C4875Al0.a(this.f49629e, new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 c10;
                c10 = AbstractC5308Hz.this.c(abstractC5308Hz2, (com.android.tools.r8.graph.M2) obj);
                return c10;
            }
        }));
        Set a12 = C4875Al0.a(this.f49630f, new Function() {
            @Override
            public final Object apply(Object obj) {
                return RR.this.a((com.android.tools.r8.graph.I2) obj);
            }
        });
        com.android.tools.r8.graph.O2 o22 = this.f49631g;
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 c10;
                c10 = AbstractC5308Hz.this.c(abstractC5308Hz2, (com.android.tools.r8.graph.M2) obj);
                return c10;
            }
        };
        if (o22.isEmpty()) {
            o22 = com.android.tools.r8.graph.O2.k0();
        } else {
            com.android.tools.r8.graph.M2[] m2Arr = (com.android.tools.r8.graph.M2[]) X3.a((Object[]) o22.f36675b, function, (Object[]) com.android.tools.r8.graph.M2.f36589h);
            if (m2Arr != o22.f36675b) {
                o22 = m2Arr.length == 0 ? com.android.tools.r8.graph.O2.k0() : new com.android.tools.r8.graph.O2(m2Arr);
            }
        }
        com.android.tools.r8.graph.O2 o23 = o22;
        com.android.tools.r8.graph.L4 l42 = this.f49632h;
        com.android.tools.r8.graph.M2 m22 = this.f49633i;
        return new C8085kR(str, d10, a10, a11, arrayList, a12, o23, l42, m22 != null ? abstractC5308Hz.c(abstractC5308Hz2, m22) : null);
    }
}
