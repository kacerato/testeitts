package com.android.tools.r8.metadata;

import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.C5009Cu0;
import com.android.tools.r8.internal.C5158Fi;
import com.android.tools.r8.internal.C5216Gi;
import com.android.tools.r8.internal.C5332Ii;
import com.android.tools.r8.internal.C5679Oi;
import com.android.tools.r8.internal.C5713Oz;
import com.android.tools.r8.internal.C5771Pz;
import com.android.tools.r8.internal.C6828ct0;
import com.android.tools.r8.internal.C8908pL;
import com.android.tools.r8.internal.C9001pv;
import com.android.tools.r8.internal.InterfaceC6740cL;
import com.android.tools.r8.metadata.D8BuildMetadata;
import java.lang.reflect.Type;

public interface D8BuildMetadata {
    private static InterfaceC6740cL a(final Class cls) {
        return new InterfaceC6740cL() {
            @Override
            public final Object a(AbstractC6907dL abstractC6907dL, Type type, C6828ct0 c6828ct0) {
                Object a10;
                a10 = D8BuildMetadata.a(Class.this, abstractC6907dL, type, c6828ct0);
                return a10;
            }
        };
    }

    static D8BuildMetadata fromJson(String str) {
        C5771Pz c5771Pz = new C5771Pz();
        C9001pv m742clone = c5771Pz.f43417a.m742clone();
        m742clone.f51662b = true;
        c5771Pz.f43417a = m742clone;
        C5771Pz a10 = c5771Pz.a(D8OptionsMetadata.class, a(C5679Oi.class)).a(D8ApiModelingMetadata.class, a(C5158Fi.class)).a(D8LibraryDesugaringMetadata.class, a(C5332Ii.class));
        a10.f43423g = true;
        return (D8BuildMetadata) a10.a().a(str, C5216Gi.class);
    }

    D8OptionsMetadata getOptionsMetadata();

    String getVersion();

    String toJson();

    static Object a(Class cls, AbstractC6907dL abstractC6907dL, Type type, C6828ct0 c6828ct0) {
        C5713Oz c5713Oz = c6828ct0.f47196a.f47796b;
        c5713Oz.getClass();
        C5009Cu0 c5009Cu0 = new C5009Cu0(cls);
        if (abstractC6907dL == null) {
            return null;
        }
        return c5713Oz.a(new C8908pL(abstractC6907dL), c5009Cu0);
    }
}
