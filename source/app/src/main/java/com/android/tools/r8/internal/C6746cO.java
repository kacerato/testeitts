package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.objectweb.asm.Opcodes;

public final class C6746cO extends AbstractC6055Uw {

    public final InterfaceC8413mO f47029c;

    public final String f47030d;

    public final String f47031e;

    public final String f47032f;

    public final D50 f47033g;

    public C6746cO(C50 c50, InterfaceC8413mO interfaceC8413mO, String str, String str2, String str3) {
        super(Opcodes.ASM9, null);
        this.f47029c = interfaceC8413mO;
        this.f47030d = str;
        this.f47031e = str2;
        this.f47032f = str3;
        this.f47033g = new D50(c50, str2, str3);
    }

    public static R2 a(String str, boolean z10, boolean z11, Consumer consumer, B50 b50, final String str2, final String str3, final String str4, Consumer consumer2) {
        if (z10 || !z11) {
            return null;
        }
        if (!"Landroidx/annotation/keep/KeepEdge;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/KeepEdge;".equals(str)) {
            if (!"Landroidx/annotation/keep/UsesReflection;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/UsesReflection;".equals(str)) {
                if (!"Landroidx/annotation/keep/KeepForApi;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/KeepForApi;".equals(str)) {
                    if (!"Landroidx/annotation/keep/UsedByReflection;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/UsedByReflection;".equals(str) && !"Landroidx/annotation/keep/UsedByNative;".equals(str) && !"Lcom/android/tools/r8/keepanno/annotations/UsedByNative;".equals(str)) {
                        return null;
                    }
                    Objects.requireNonNull(consumer);
                    return new C8747oO(b50, new C51(consumer), consumer2, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            LO a10;
                            a10 = C6746cO.a(String.this, str3, str4, (C8914pO) obj);
                            return a10;
                        }
                    });
                }
                Objects.requireNonNull(consumer);
                return new VN(b50, new C51(consumer), consumer2, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        LO a10;
                        a10 = C6746cO.a(String.this, str3, str4, (C8914pO) obj);
                        return a10;
                    }
                });
            }
            Objects.requireNonNull(consumer);
            return new C9081qO(b50, new C51(consumer), consumer2, new Function() {
                @Override
                public final Object apply(Object obj) {
                    FO a10;
                    a10 = C6746cO.a(String.this, str3, str4, (C8914pO) obj);
                    return a10;
                }
            });
        }
        Objects.requireNonNull(consumer);
        return new C7079eO(b50, new C51(consumer), consumer2);
    }

    public static LO a(String str, String str2, String str3, C8914pO c8914pO) {
        AbstractC10583zO a10 = AbstractC10583zO.a(DP.a(str3));
        NO no = NO.f42575d;
        YM ym2 = YM.f45975c;
        C8415mP.a();
        CO co = CO.f39210c;
        C9864v40 c9864v40 = C9864v40.f53012b;
        C8415mP a11 = C8415mP.a(str);
        if (!a11.c() || !co.f39212a.c()) {
            ym2 = new YM(a11, co);
        }
        WM wm2 = new WM(ym2, c9864v40);
        c8914pO.f51511a.getClass();
        PM pm2 = new PM(SuffixConstants.EXTENSION_CLASS);
        c8914pO.f51511a.a(pm2, wm2);
        UM um2 = new UM(pm2);
        C9748uO c9748uO = C9748uO.f52842h;
        C9915vO c9915vO = C9915vO.f53087b;
        C10416yO c10416yO = C10416yO.f54005b;
        C9917vP a12 = C9917vP.a(str2);
        if (!a12.b()) {
            c9915vO = new C9915vO(a12);
        }
        return new LO(um2, new C10249xO(c9864v40, c9748uO, c9915vO, a10));
    }

    public final void a(GN gn2) {
        String b10 = AbstractC9414sO.b(this.f47030d);
        String str = this.f47031e;
        String str2 = this.f47032f;
        gn2.getClass();
        gn2.f40471b = new KN(b10, str, str2);
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        final InterfaceC8413mO interfaceC8413mO = this.f47029c;
        Objects.requireNonNull(interfaceC8413mO);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC8413mO.this.accept((DN) obj);
            }
        };
        D50 d50 = this.f47033g;
        d50.getClass();
        return a(str, z10, true, consumer, new B50(d50, str), this.f47030d, this.f47031e, this.f47032f, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6746cO.this.a((GN) obj);
            }
        });
    }
}
