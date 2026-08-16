package k0;

import com.google.ai.edge.litertlm.SamplerConfig;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class u {

    @Nullable
    public final SamplerConfig f94634a;

    /* JADX WARN: Multi-variable type inference failed */
    public u() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static u c(u uVar, SamplerConfig samplerConfig, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            samplerConfig = uVar.f94634a;
        }
        return uVar.b(samplerConfig);
    }

    @Nullable
    public final SamplerConfig a() {
        return this.f94634a;
    }

    @NotNull
    public final u b(@Nullable SamplerConfig samplerConfig) {
        return new u(samplerConfig);
    }

    @Nullable
    public final SamplerConfig d() {
        return this.f94634a;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof u) && M.g(this.f94634a, ((u) other).f94634a);
    }

    public int hashCode() {
        SamplerConfig samplerConfig = this.f94634a;
        if (samplerConfig == null) {
            return 0;
        }
        return samplerConfig.hashCode();
    }

    @NotNull
    public String toString() {
        return "SessionConfig(samplerConfig=" + ((Object) this.f94634a) + ")";
    }

    public u(@Nullable SamplerConfig samplerConfig) {
        this.f94634a = samplerConfig;
    }

    public u(SamplerConfig samplerConfig, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? null : samplerConfig);
    }
}
