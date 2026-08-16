package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public abstract class AbstractC9247rO {
    public static void a(String str, GN gn2) {
        String a10 = AbstractC9414sO.a(str.replace('.', '/'));
        gn2.getClass();
        gn2.f40471b = new HN(a10);
    }

    public static void b(String str, String str2, String str3, GN gn2) {
        String a10 = AbstractC9414sO.a(str.replace('.', '/'));
        gn2.getClass();
        int length = str3.length();
        C9663tt0[] b10 = C9663tt0.b(str3.substring(0, length));
        ArrayList arrayList = new ArrayList(b10.length);
        for (C9663tt0 c9663tt0 : b10) {
            arrayList.add(c9663tt0.b());
        }
        String substring = str3.substring(0, length);
        gn2.f40471b = new LN(a10, str2, C9663tt0.a(substring, C9663tt0.e(substring), substring.length()).b(), arrayList);
    }

    public static void a(String str, String str2, String str3, GN gn2) {
        String a10 = AbstractC9414sO.a(str.replace('.', '/'));
        gn2.getClass();
        gn2.f40471b = new KN(a10, str2, str3);
    }

    public static boolean a(String str) {
        return "Landroidx/annotation/keep/KeepEdge;".equals(str) || "Lcom/android/tools/r8/keepanno/annotations/KeepEdge;".equals(str) || "Landroidx/annotation/keep/UsesReflection;".equals(str) || "Lcom/android/tools/r8/keepanno/annotations/UsesReflection;".equals(str) || "Landroidx/annotation/keep/KeepForApi;".equals(str) || "Lcom/android/tools/r8/keepanno/annotations/KeepForApi;".equals(str) || "Landroidx/annotation/keep/UsedByReflection;".equals(str) || "Lcom/android/tools/r8/keepanno/annotations/UsedByReflection;".equals(str) || "Landroidx/annotation/keep/UsedByNative;".equals(str) || "Lcom/android/tools/r8/keepanno/annotations/UsedByNative;".equals(str) || "Landroidx/annotation/keep/CheckRemoved;".equals(str) || "Lcom/android/tools/r8/keepanno/annotations/CheckRemoved;".equals(str) || "Landroidx/annotation/keep/CheckOptimizedOut;".equals(str) || "Lcom/android/tools/r8/keepanno/annotations/CheckOptimizedOut;".equals(str);
    }

    public static R2 b(String str, boolean z10, boolean z11, final String str2, final String str3, final String str4, B50 b50, final Consumer consumer) {
        Objects.requireNonNull(consumer);
        return C6913dO.a(str, z10, z11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept((BN) obj);
            }
        }, b50, str2, str3, str4, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9247rO.b(String.this, str3, str4, (GN) obj);
            }
        });
    }

    public static ArrayList a(byte[] bArr) {
        int length = bArr.length;
        C6072Vd c6072Vd = new C6072Vd(bArr, true);
        final ArrayList arrayList = new ArrayList();
        c6072Vd.a(new C6580bO(new InterfaceC8413mO() {
            @Override
            public final void accept(Object obj) {
                List.this.add((BN) obj);
            }
        }), new K4[0], 1);
        return arrayList;
    }

    public static R2 a(String str, boolean z10, boolean z11, final String str2, B50 b50, Consumer consumer) {
        return C6580bO.a(str, z10, z11, consumer, b50, str2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9247rO.a(String.this, (GN) obj);
            }
        });
    }

    public static R2 a(String str, boolean z10, boolean z11, final String str2, final String str3, final String str4, B50 b50, final Consumer consumer) {
        Objects.requireNonNull(consumer);
        return C6746cO.a(str, z10, z11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept((DN) obj);
            }
        }, b50, str2, str3, str4, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9247rO.a(String.this, str3, str4, (GN) obj);
            }
        });
    }
}
