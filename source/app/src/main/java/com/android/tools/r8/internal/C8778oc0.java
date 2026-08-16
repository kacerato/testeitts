package com.android.tools.r8.internal;

public final class C8778oc0 implements InterfaceC5407Jq0 {
    @Override
    public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
        return a((String[]) obj, (String[]) obj2);
    }

    @Override
    public final void a(Object obj, AbstractC9213rA abstractC9213rA) {
        for (String str : (String[]) obj) {
            abstractC9213rA.a(str);
        }
    }

    public static int a(String[] strArr, String[] strArr2) {
        return AbstractC8619nf.a(new Jo1()).compare(strArr, strArr2);
    }
}
