package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C6580bO extends AbstractC7449ge {

    public final boolean f46751c;

    public final InterfaceC8413mO f46752d;

    public String f46753e;

    public C50 f46754f;

    public C6580bO(InterfaceC8413mO interfaceC8413mO) {
        super(null);
        this.f46751c = true;
        this.f46752d = interfaceC8413mO;
    }

    public static FO a(String str, C8914pO c8914pO) {
        YM ym2 = YM.f45975c;
        C8415mP.a();
        CO co = CO.f39210c;
        C9864v40 c9864v40 = C9864v40.f53012b;
        C8415mP a10 = C8415mP.a(str);
        if (!a10.c() || !co.f39212a.c()) {
            ym2 = new YM(a10, co);
        }
        return new WM(ym2, c9864v40);
    }

    @Override
    public final void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        super.a(i10, i11, str, str2, str3, strArr);
        String replace = str.replace('/', '.');
        this.f46753e = replace;
        this.f46754f = new C50(replace);
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        boolean z11 = this.f46751c;
        InterfaceC8413mO interfaceC8413mO = this.f46752d;
        Objects.requireNonNull(interfaceC8413mO);
        C10369y51 c10369y51 = new C10369y51(interfaceC8413mO);
        C50 c50 = this.f46754f;
        c50.getClass();
        return a(str, z10, z11, c10369y51, new B50(c50, str), this.f46753e, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6580bO.this.a((GN) obj);
            }
        });
    }

    public static R2 a(String str, boolean z10, boolean z11, final Consumer consumer, B50 b50, final String str2, Consumer consumer2) {
        if (z10 || !z11 || !AbstractC9247rO.a(str)) {
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
                            return new ON(b50, new InterfaceC8413mO() {
                                @Override
                                public final void accept(Object obj) {
                                    Consumer.this.accept((TM) obj);
                                }
                            }, consumer2, str2, 2);
                        }
                        Objects.requireNonNull(consumer);
                        return new ON(b50, new InterfaceC8413mO() {
                            @Override
                            public final void accept(Object obj) {
                                Consumer.this.accept((TM) obj);
                            }
                        }, consumer2, str2, 1);
                    }
                    Objects.requireNonNull(consumer);
                    return new C8580nO(b50, new C51(consumer), consumer2, str2);
                }
                Objects.requireNonNull(consumer);
                return new UN(b50, new C51(consumer), consumer2, str2);
            }
            Objects.requireNonNull(consumer);
            return new C9081qO(b50, new C51(consumer), consumer2, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C6580bO.a(String.this, (C8914pO) obj);
                }
            });
        }
        Objects.requireNonNull(consumer);
        return new C7079eO(b50, new C51(consumer), consumer2);
    }

    public final void a(GN gn2) {
        String b10 = AbstractC9414sO.b(this.f46753e);
        gn2.getClass();
        gn2.f40471b = new HN(b10);
    }

    @Override
    public final DX a(int i10, String str, String str2, String str3, String[] strArr) {
        if (!this.f46751c) {
            return null;
        }
        C50 c50 = this.f46754f;
        final InterfaceC8413mO interfaceC8413mO = this.f46752d;
        Objects.requireNonNull(interfaceC8413mO);
        return new C6913dO(c50, new InterfaceC8413mO() {
            @Override
            public final void accept(Object obj) {
                InterfaceC8413mO.this.accept((BN) obj);
            }
        }, this.f46753e, str, str2);
    }

    @Override
    public final AbstractC6055Uw a(int i10, String str, String str2, String str3, Object obj) {
        if (!this.f46751c) {
            return null;
        }
        C50 c50 = this.f46754f;
        final InterfaceC8413mO interfaceC8413mO = this.f46752d;
        Objects.requireNonNull(interfaceC8413mO);
        return new C6746cO(c50, new InterfaceC8413mO() {
            @Override
            public final void accept(Object obj2) {
                InterfaceC8413mO.this.accept((DN) obj2);
            }
        }, this.f46753e, str, str2);
    }
}
