package com.android.tools.r8.metadata;

import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.C10611zb0;
import com.android.tools.r8.internal.C4908Bb0;
import com.android.tools.r8.internal.C5009Cu0;
import com.android.tools.r8.internal.C5713Oz;
import com.android.tools.r8.internal.C5771Pz;
import com.android.tools.r8.internal.C6006Ua0;
import com.android.tools.r8.internal.C6064Va0;
import com.android.tools.r8.internal.C6178Xa0;
import com.android.tools.r8.internal.C6235Ya0;
import com.android.tools.r8.internal.C6292Za0;
import com.android.tools.r8.internal.C6441ab0;
import com.android.tools.r8.internal.C6608bb0;
import com.android.tools.r8.internal.C6774cb0;
import com.android.tools.r8.internal.C6828ct0;
import com.android.tools.r8.internal.C6941db0;
import com.android.tools.r8.internal.C7274fb0;
import com.android.tools.r8.internal.C8908pL;
import com.android.tools.r8.internal.C9001pv;
import com.android.tools.r8.internal.C9609tb0;
import com.android.tools.r8.internal.InterfaceC6740cL;
import com.android.tools.r8.metadata.R8BuildMetadata;
import java.lang.reflect.Type;
import java.util.List;

public interface R8BuildMetadata {
    private static InterfaceC6740cL a(final Class cls) {
        return new InterfaceC6740cL() {
            @Override
            public final Object a(AbstractC6907dL abstractC6907dL, Type type, C6828ct0 c6828ct0) {
                Object a10;
                a10 = R8BuildMetadata.a(Class.this, abstractC6907dL, type, c6828ct0);
                return a10;
            }
        };
    }

    static R8BuildMetadata fromJson(String str) {
        C5771Pz c5771Pz = new C5771Pz();
        C9001pv m742clone = c5771Pz.f43417a.m742clone();
        m742clone.f51662b = true;
        c5771Pz.f43417a = m742clone;
        C5771Pz a10 = c5771Pz.a(R8OptionsMetadata.class, a(C7274fb0.class)).a(R8ApiModelingMetadata.class, a(C6006Ua0.class)).a(R8BaselineProfileRewritingMetadata.class, a(C6064Va0.class)).a(R8CompilationMetadata.class, a(C6235Ya0.class)).a(R8DexFileMetadata.class, a(C6292Za0.class)).a(R8StatsMetadata.class, a(C4908Bb0.class)).a(R8FeatureSplitMetadata.class, a(C6441ab0.class)).a(R8FeatureSplitsMetadata.class, a(C6608bb0.class)).a(R8KeepAttributesMetadata.class, a(C6774cb0.class)).a(R8LibraryDesugaringMetadata.class, a(C6941db0.class)).a(R8ResourceOptimizationMetadata.class, a(C9609tb0.class)).a(R8StartupOptimizationMetadata.class, a(C10611zb0.class));
        a10.f43423g = true;
        return (R8BuildMetadata) a10.a().a(str, C6178Xa0.class);
    }

    R8BaselineProfileRewritingMetadata getBaselineProfileRewritingMetadata();

    R8CompilationMetadata getCompilationMetadata();

    List<R8DexFileMetadata> getDexFilesMetadata();

    R8FeatureSplitsMetadata getFeatureSplitsMetadata();

    R8OptionsMetadata getOptionsMetadata();

    R8ResourceOptimizationMetadata getResourceOptimizationMetadata();

    R8StartupOptimizationMetadata getStartupOptizationOptions();

    R8StatsMetadata getStatsMetadata();

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
