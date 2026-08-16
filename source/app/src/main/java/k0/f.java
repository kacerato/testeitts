package k0;

import com.google.ai.edge.litertlm.SamplerConfig;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;
import pf.o0;

public final class f {

    @Nullable
    public final com.google.ai.edge.litertlm.b f94416a;

    @NotNull
    public final List<com.google.ai.edge.litertlm.d> f94417b;

    @NotNull
    public final List<C> f94418c;

    @Nullable
    public final SamplerConfig f94419d;

    public final boolean f94420e;

    @Nullable
    public final List<C13911d> f94421f;

    @NotNull
    public final Map<String, Object> f94422g;

    @Lf.k
    public f() {
        this(null, null, null, null, false, null, null, 127, null);
    }

    public static f i(f fVar, com.google.ai.edge.litertlm.b bVar, List list, List list2, SamplerConfig samplerConfig, boolean z10, List list3, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bVar = fVar.f94416a;
        }
        if ((i10 & 2) != 0) {
            list = fVar.f94417b;
        }
        List list4 = list;
        if ((i10 & 4) != 0) {
            list2 = fVar.f94418c;
        }
        List list5 = list2;
        if ((i10 & 8) != 0) {
            samplerConfig = fVar.f94419d;
        }
        SamplerConfig samplerConfig2 = samplerConfig;
        if ((i10 & 16) != 0) {
            z10 = fVar.f94420e;
        }
        boolean z11 = z10;
        if ((i10 & 32) != 0) {
            list3 = fVar.f94421f;
        }
        List list6 = list3;
        if ((i10 & 64) != 0) {
            map = fVar.f94422g;
        }
        return fVar.h(bVar, list4, list5, samplerConfig2, z11, list6, map);
    }

    @Nullable
    public final com.google.ai.edge.litertlm.b a() {
        return this.f94416a;
    }

    @NotNull
    public final List<com.google.ai.edge.litertlm.d> b() {
        return this.f94417b;
    }

    @NotNull
    public final List<C> c() {
        return this.f94418c;
    }

    @Nullable
    public final SamplerConfig d() {
        return this.f94419d;
    }

    public final boolean e() {
        return this.f94420e;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof f)) {
            return false;
        }
        f fVar = (f) other;
        return M.g(this.f94416a, fVar.f94416a) && M.g(this.f94417b, fVar.f94417b) && M.g(this.f94418c, fVar.f94418c) && M.g(this.f94419d, fVar.f94419d) && this.f94420e == fVar.f94420e && M.g(this.f94421f, fVar.f94421f) && M.g(this.f94422g, fVar.f94422g);
    }

    @Nullable
    public final List<C13911d> f() {
        return this.f94421f;
    }

    @NotNull
    public final Map<String, Object> g() {
        return this.f94422g;
    }

    @NotNull
    public final f h(@Nullable com.google.ai.edge.litertlm.b systemInstruction, @NotNull List<com.google.ai.edge.litertlm.d> initialMessages, @NotNull List<? extends C> tools, @Nullable SamplerConfig samplerConfig, boolean automaticToolCalling, @Nullable List<C13911d> channels, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(initialMessages, "initialMessages");
        M.p(tools, "tools");
        M.p(extraContext, "extraContext");
        return new f(systemInstruction, initialMessages, tools, samplerConfig, automaticToolCalling, channels, extraContext);
    }

    public int hashCode() {
        com.google.ai.edge.litertlm.b bVar = this.f94416a;
        int hashCode = (((((bVar == null ? 0 : bVar.hashCode()) * 31) + this.f94417b.hashCode()) * 31) + this.f94418c.hashCode()) * 31;
        SamplerConfig samplerConfig = this.f94419d;
        int hashCode2 = (((hashCode + (samplerConfig == null ? 0 : samplerConfig.hashCode())) * 31) + Boolean.hashCode(this.f94420e)) * 31;
        List<C13911d> list = this.f94421f;
        return ((hashCode2 + (list != null ? list.hashCode() : 0)) * 31) + this.f94422g.hashCode();
    }

    public final boolean j() {
        return this.f94420e;
    }

    @Nullable
    public final List<C13911d> k() {
        return this.f94421f;
    }

    @NotNull
    public final Map<String, Object> l() {
        return this.f94422g;
    }

    @NotNull
    public final List<com.google.ai.edge.litertlm.d> m() {
        return this.f94417b;
    }

    @Nullable
    public final SamplerConfig n() {
        return this.f94419d;
    }

    @Nullable
    public final com.google.ai.edge.litertlm.b o() {
        return this.f94416a;
    }

    @NotNull
    public final List<C> p() {
        return this.f94418c;
    }

    @NotNull
    public String toString() {
        com.google.ai.edge.litertlm.b bVar = this.f94416a;
        List<com.google.ai.edge.litertlm.d> list = this.f94417b;
        List<C> list2 = this.f94418c;
        SamplerConfig samplerConfig = this.f94419d;
        return "ConversationConfig(systemInstruction=" + ((Object) bVar) + ", initialMessages=" + ((Object) list) + ", tools=" + ((Object) list2) + ", samplerConfig=" + ((Object) samplerConfig) + ", automaticToolCalling=" + this.f94420e + ", channels=" + ((Object) this.f94421f) + ", extraContext=" + ((Object) this.f94422g) + ")";
    }

    @Lf.k
    public f(@Nullable com.google.ai.edge.litertlm.b systemInstruction) {
        this(systemInstruction, null, null, null, false, null, null, 126, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public f(@Nullable com.google.ai.edge.litertlm.b systemInstruction, @NotNull List<com.google.ai.edge.litertlm.d> initialMessages) {
        this(systemInstruction, initialMessages, null, null, false, null, null, 124, null);
        M.p(initialMessages, "initialMessages");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public f(@Nullable com.google.ai.edge.litertlm.b systemInstruction, @NotNull List<com.google.ai.edge.litertlm.d> initialMessages, @NotNull List<? extends C> tools) {
        this(systemInstruction, initialMessages, tools, null, false, null, null, 120, null);
        M.p(initialMessages, "initialMessages");
        M.p(tools, "tools");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public f(@Nullable com.google.ai.edge.litertlm.b systemInstruction, @NotNull List<com.google.ai.edge.litertlm.d> initialMessages, @NotNull List<? extends C> tools, @Nullable SamplerConfig samplerConfig) {
        this(systemInstruction, initialMessages, tools, samplerConfig, false, null, null, 112, null);
        M.p(initialMessages, "initialMessages");
        M.p(tools, "tools");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public f(@Nullable com.google.ai.edge.litertlm.b systemInstruction, @NotNull List<com.google.ai.edge.litertlm.d> initialMessages, @NotNull List<? extends C> tools, @Nullable SamplerConfig samplerConfig, boolean automaticToolCalling) {
        this(systemInstruction, initialMessages, tools, samplerConfig, automaticToolCalling, null, null, 96, null);
        M.p(initialMessages, "initialMessages");
        M.p(tools, "tools");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public f(@Nullable com.google.ai.edge.litertlm.b systemInstruction, @NotNull List<com.google.ai.edge.litertlm.d> initialMessages, @NotNull List<? extends C> tools, @Nullable SamplerConfig samplerConfig, boolean automaticToolCalling, @Nullable List<C13911d> channels) {
        this(systemInstruction, initialMessages, tools, samplerConfig, automaticToolCalling, channels, null, 64, null);
        M.p(initialMessages, "initialMessages");
        M.p(tools, "tools");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Lf.k
    public f(@Nullable com.google.ai.edge.litertlm.b systemInstruction, @NotNull List<com.google.ai.edge.litertlm.d> initialMessages, @NotNull List<? extends C> tools, @Nullable SamplerConfig samplerConfig, boolean automaticToolCalling, @Nullable List<C13911d> channels, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(initialMessages, "initialMessages");
        M.p(tools, "tools");
        M.p(extraContext, "extraContext");
        this.f94416a = systemInstruction;
        this.f94417b = initialMessages;
        this.f94418c = tools;
        this.f94419d = samplerConfig;
        this.f94420e = automaticToolCalling;
        this.f94421f = channels;
        this.f94422g = extraContext;
    }

    public f(com.google.ai.edge.litertlm.b bVar, List list, List list2, SamplerConfig samplerConfig, boolean z10, List list3, Map map, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? null : bVar, (i10 & 2) != 0 ? H.J() : list, (i10 & 4) != 0 ? H.J() : list2, (i10 & 8) != 0 ? null : samplerConfig, (i10 & 16) != 0 ? true : z10, (i10 & 32) == 0 ? list3 : null, (i10 & 64) != 0 ? o0.z() : map);
    }
}
