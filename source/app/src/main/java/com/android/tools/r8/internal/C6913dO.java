package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.objectweb.asm.Opcodes;

public final class C6913dO extends DX {

    public final InterfaceC8413mO f47390c;

    public final String f47391d;

    public final String f47392e;

    public final String f47393f;

    public final G50 f47394g;

    public C6913dO(C50 c50, InterfaceC8413mO interfaceC8413mO, String str, String str2, String str3) {
        super(Opcodes.ASM9, null);
        this.f47390c = interfaceC8413mO;
        this.f47391d = str;
        this.f47392e = str2;
        this.f47393f = str3;
        this.f47394g = new G50(c50, str2, str3);
    }

    public static R2 a(String str, boolean z10, boolean z11, final Consumer consumer, B50 b50, final String str2, final String str3, final String str4, Consumer consumer2) {
        if (z10 || !z11) {
            return null;
        }
        if (!"Landroidx/annotation/keep/KeepEdge;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/KeepEdge;".equals(str)) {
            if (!"Landroidx/annotation/keep/UsesReflection;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/UsesReflection;".equals(str)) {
                if (!"Landroidx/annotation/keep/KeepForApi;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/KeepForApi;".equals(str)) {
                    if (!"Landroidx/annotation/keep/UsedByReflection;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/UsedByReflection;".equals(str) && !"Landroidx/annotation/keep/UsedByNative;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/UsedByNative;".equals(str)) {
                        if (!"Landroidx/annotation/keep/CheckRemoved;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/CheckRemoved;".equals(str)) {
                            if (!"Landroidx/annotation/keep/CheckOptimizedOut;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/CheckOptimizedOut;".equals(str)) {
                                return null;
                            }
                            Objects.requireNonNull(consumer);
                            return new PN(b50, new InterfaceC8413mO() {
                                @Override
                                public final void accept(Object obj) {
                                    Consumer.this.accept((BN) obj);
                                }
                            }, consumer2, new Function() {
                                @Override
                                public final Object apply(Object obj) {
                                    LO a10;
                                    a10 = C6913dO.a(String.this, str3, str4, (C8914pO) obj);
                                    return a10;
                                }
                            }, 2);
                        }
                        Objects.requireNonNull(consumer);
                        return new PN(b50, new InterfaceC8413mO() {
                            @Override
                            public final void accept(Object obj) {
                                Consumer.this.accept((BN) obj);
                            }
                        }, consumer2, new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                LO a10;
                                a10 = C6913dO.a(String.this, str3, str4, (C8914pO) obj);
                                return a10;
                            }
                        }, 1);
                    }
                    Objects.requireNonNull(consumer);
                    return new C8747oO(b50, new C51(consumer), consumer2, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            LO a10;
                            a10 = C6913dO.a(String.this, str3, str4, (C8914pO) obj);
                            return a10;
                        }
                    });
                }
                Objects.requireNonNull(consumer);
                return new VN(b50, new C51(consumer), consumer2, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        LO a10;
                        a10 = C6913dO.a(String.this, str3, str4, (C8914pO) obj);
                        return a10;
                    }
                });
            }
            Objects.requireNonNull(consumer);
            return new C9081qO(b50, new C51(consumer), consumer2, new Function() {
                @Override
                public final Object apply(Object obj) {
                    FO a10;
                    a10 = C6913dO.a(String.this, str3, str4, (C8914pO) obj);
                    return a10;
                }
            });
        }
        Objects.requireNonNull(consumer);
        return new C7079eO(b50, new C51(consumer), consumer2);
    }

    public static LO a(String str, String str2, String str3, C8914pO c8914pO) {
        ZO xo;
        TO to;
        String b10 = C9663tt0.a(str3, C9663tt0.e(str3), str3.length()).b();
        C9663tt0[] b11 = C9663tt0.b(str3);
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int length = b11.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            DP a10 = DP.a(b11[i11].b());
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = a10;
            i11++;
            i12 = i13;
        }
        if ("V".equals(b10)) {
            xo = YO.f45982a;
        } else {
            DP a11 = DP.a(b10);
            if (a11 instanceof C10585zP) {
                xo = XO.f45678b;
            } else {
                xo = new XO(a11);
            }
        }
        NO no = NO.f42575d;
        YM ym2 = YM.f45975c;
        C8415mP.a();
        CO co = CO.f39210c;
        C9864v40 c9864v40 = C9864v40.f53012b;
        C8415mP a12 = C8415mP.a(str);
        if (!a12.c() || !co.f39212a.c()) {
            ym2 = new YM(a12, co);
        }
        WM wm2 = new WM(ym2, c9864v40);
        c8914pO.f51511a.getClass();
        PM pm2 = new PM(SuffixConstants.EXTENSION_CLASS);
        c8914pO.f51511a.a(pm2, wm2);
        UM um2 = new UM(pm2);
        QO qo = QO.f43567k;
        RO ro = RO.f43886b;
        XO xo2 = XO.f45678b;
        RO a13 = RO.a(C9917vP.a(str2));
        AbstractC7552hC b12 = AbstractC7552hC.b(i12, objArr);
        if (b12.isEmpty()) {
            to = TO.f44459b;
        } else {
            to = new TO(b12);
        }
        a13.getClass();
        if (RO.f43887c == a13 || RO.f43888d == a13) {
            if (!xo.b() && !(xo instanceof YO)) {
                throw new FN("Method constructor pattern must match 'void' type.");
            }
            xo = YO.f45982a;
        }
        return new LO(um2, new WO(c9864v40, qo, a13, xo, to));
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        InterfaceC8413mO interfaceC8413mO = this.f47390c;
        Objects.requireNonNull(interfaceC8413mO);
        C10369y51 c10369y51 = new C10369y51(interfaceC8413mO);
        G50 g50 = this.f47394g;
        g50.getClass();
        return a(str, z10, true, c10369y51, new B50(g50, str), this.f47391d, this.f47392e, this.f47393f, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6913dO.this.a((GN) obj);
            }
        });
    }

    public final void a(GN gn2) {
        String b10 = AbstractC9414sO.b(this.f47391d);
        String str = this.f47392e;
        String str2 = this.f47393f;
        gn2.getClass();
        int length = str2.length();
        C9663tt0[] b11 = C9663tt0.b(str2.substring(0, length));
        ArrayList arrayList = new ArrayList(b11.length);
        for (C9663tt0 c9663tt0 : b11) {
            arrayList.add(c9663tt0.b());
        }
        String substring = str2.substring(0, length);
        gn2.f40471b = new LN(b10, str, C9663tt0.a(substring, C9663tt0.e(substring), substring.length()).b(), arrayList);
    }
}
