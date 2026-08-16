package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import ag.P;
import com.google.ai.edge.litertlm.SamplerConfig;
import java.util.Arrays;
import java.util.List;
import k0.AbstractC13908a;
import k0.C;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class l {

    @NotNull
    public static final a f69900a = new a(null);

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public static k0.h e(a aVar, String str, int i10, AbstractC13908a abstractC13908a, String str2, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = 32000;
            }
            return aVar.d(str, i10, abstractC13908a, str2);
        }

        public final k0.f a(int i10, String str, String str2, List<? extends C> list, boolean z10) {
            StringBuilder sb2 = new StringBuilder();
            if (str != null && !P.Q3(str)) {
                sb2.append(str);
            }
            if (str2 != null && !P.Q3(str2)) {
                sb2.append("\nConversation JSON:\n");
                sb2.append(str2);
                sb2.append("\nUse this as the previous conversation history. Answer the latest user message sent after this context.\n");
            }
            return new k0.f(com.google.ai.edge.litertlm.b.f59880b.b(sb2.toString()), null, list, new SamplerConfig(64, 0.95d, 1.0d, i10), z10, null, null, 98, null);
        }

        @Lf.o
        @NotNull
        public final k0.f b(int i10, @Nullable g gVar, @Nullable String str, @NotNull w toolToChat) {
            M.p(toolToChat, "toolToChat");
            List<C> a10 = f.a(gVar, toolToChat);
            String c10 = j.c(gVar);
            M.m(a10);
            return a(i10, c10, str, a10, true);
        }

        @Lf.o
        @NotNull
        public final k0.f c(int i10, @Nullable String str, @Nullable String str2, @Nullable v[] vVarArr) {
            if (vVarArr == null) {
                vVarArr = new v[0];
            }
            List<C> c10 = f.c((v[]) Arrays.copyOf(vVarArr, vVarArr.length));
            M.m(c10);
            return a(i10, str, str2, c10, !c10.isEmpty());
        }

        @Lf.o
        @NotNull
        public final k0.h d(@NotNull String modelPath, int i10, @NotNull AbstractC13908a backend, @NotNull String cacheDir) {
            M.p(modelPath, "modelPath");
            M.p(backend, "backend");
            M.p(cacheDir, "cacheDir");
            return new k0.h(modelPath, backend, null, null, Integer.valueOf(i10), null, cacheDir, 44, null);
        }

        public a() {
        }
    }

    @Lf.o
    @NotNull
    public static final k0.f a(int i10, @Nullable g gVar, @Nullable String str, @NotNull w wVar) {
        return f69900a.b(i10, gVar, str, wVar);
    }

    @Lf.o
    @NotNull
    public static final k0.f b(int i10, @Nullable String str, @Nullable String str2, @Nullable v[] vVarArr) {
        return f69900a.c(i10, str, str2, vVarArr);
    }

    @Lf.o
    @NotNull
    public static final k0.h c(@NotNull String str, int i10, @NotNull AbstractC13908a abstractC13908a, @NotNull String str2) {
        return f69900a.d(str, i10, abstractC13908a, str2);
    }
}
