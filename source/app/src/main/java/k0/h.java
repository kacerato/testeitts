package k0;

import k0.AbstractC13908a;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class h {

    @NotNull
    public final String f94427a;

    @NotNull
    public final AbstractC13908a f94428b;

    @Nullable
    public final AbstractC13908a f94429c;

    @Nullable
    public final AbstractC13908a f94430d;

    @Nullable
    public final Integer f94431e;

    @Nullable
    public final Integer f94432f;

    @Nullable
    public final String f94433g;

    public h(@NotNull String modelPath, @NotNull AbstractC13908a backend, @Nullable AbstractC13908a visionBackend, @Nullable AbstractC13908a audioBackend, @Nullable Integer maxNumTokens, @Nullable Integer maxNumImages, @Nullable String cacheDir) {
        M.p(modelPath, "modelPath");
        M.p(backend, "backend");
        this.f94427a = modelPath;
        this.f94428b = backend;
        this.f94429c = visionBackend;
        this.f94430d = audioBackend;
        this.f94431e = maxNumTokens;
        this.f94432f = maxNumImages;
        this.f94433g = cacheDir;
        if (maxNumTokens != null && maxNumTokens.intValue() <= 0) {
            throw new IllegalArgumentException("maxNumToken must be positive or null (use the default from model or engine).");
        }
        if (maxNumImages != null && maxNumImages.intValue() <= 0) {
            throw new IllegalArgumentException("maxNumImages must be positive or null (use the default from model or engine).");
        }
    }

    public static h i(h hVar, String str, AbstractC13908a abstractC13908a, AbstractC13908a abstractC13908a2, AbstractC13908a abstractC13908a3, Integer num, Integer num2, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = hVar.f94427a;
        }
        if ((i10 & 2) != 0) {
            abstractC13908a = hVar.f94428b;
        }
        AbstractC13908a abstractC13908a4 = abstractC13908a;
        if ((i10 & 4) != 0) {
            abstractC13908a2 = hVar.f94429c;
        }
        AbstractC13908a abstractC13908a5 = abstractC13908a2;
        if ((i10 & 8) != 0) {
            abstractC13908a3 = hVar.f94430d;
        }
        AbstractC13908a abstractC13908a6 = abstractC13908a3;
        if ((i10 & 16) != 0) {
            num = hVar.f94431e;
        }
        Integer num3 = num;
        if ((i10 & 32) != 0) {
            num2 = hVar.f94432f;
        }
        Integer num4 = num2;
        if ((i10 & 64) != 0) {
            str2 = hVar.f94433g;
        }
        return hVar.h(str, abstractC13908a4, abstractC13908a5, abstractC13908a6, num3, num4, str2);
    }

    @NotNull
    public final String a() {
        return this.f94427a;
    }

    @NotNull
    public final AbstractC13908a b() {
        return this.f94428b;
    }

    @Nullable
    public final AbstractC13908a c() {
        return this.f94429c;
    }

    @Nullable
    public final AbstractC13908a d() {
        return this.f94430d;
    }

    @Nullable
    public final Integer e() {
        return this.f94431e;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof h)) {
            return false;
        }
        h hVar = (h) other;
        return M.g(this.f94427a, hVar.f94427a) && M.g(this.f94428b, hVar.f94428b) && M.g(this.f94429c, hVar.f94429c) && M.g(this.f94430d, hVar.f94430d) && M.g(this.f94431e, hVar.f94431e) && M.g(this.f94432f, hVar.f94432f) && M.g(this.f94433g, hVar.f94433g);
    }

    @Nullable
    public final Integer f() {
        return this.f94432f;
    }

    @Nullable
    public final String g() {
        return this.f94433g;
    }

    @NotNull
    public final h h(@NotNull String modelPath, @NotNull AbstractC13908a backend, @Nullable AbstractC13908a visionBackend, @Nullable AbstractC13908a audioBackend, @Nullable Integer maxNumTokens, @Nullable Integer maxNumImages, @Nullable String cacheDir) {
        M.p(modelPath, "modelPath");
        M.p(backend, "backend");
        return new h(modelPath, backend, visionBackend, audioBackend, maxNumTokens, maxNumImages, cacheDir);
    }

    public int hashCode() {
        int hashCode = ((this.f94427a.hashCode() * 31) + this.f94428b.hashCode()) * 31;
        AbstractC13908a abstractC13908a = this.f94429c;
        int hashCode2 = (hashCode + (abstractC13908a == null ? 0 : abstractC13908a.hashCode())) * 31;
        AbstractC13908a abstractC13908a2 = this.f94430d;
        int hashCode3 = (hashCode2 + (abstractC13908a2 == null ? 0 : abstractC13908a2.hashCode())) * 31;
        Integer num = this.f94431e;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f94432f;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.f94433g;
        return hashCode5 + (str != null ? str.hashCode() : 0);
    }

    @Nullable
    public final AbstractC13908a j() {
        return this.f94430d;
    }

    @NotNull
    public final AbstractC13908a k() {
        return this.f94428b;
    }

    @Nullable
    public final String l() {
        return this.f94433g;
    }

    @Nullable
    public final Integer m() {
        return this.f94432f;
    }

    @Nullable
    public final Integer n() {
        return this.f94431e;
    }

    @NotNull
    public final String o() {
        return this.f94427a;
    }

    @Nullable
    public final AbstractC13908a p() {
        return this.f94429c;
    }

    @NotNull
    public String toString() {
        String str = this.f94427a;
        AbstractC13908a abstractC13908a = this.f94428b;
        AbstractC13908a abstractC13908a2 = this.f94429c;
        AbstractC13908a abstractC13908a3 = this.f94430d;
        Integer num = this.f94431e;
        Integer num2 = this.f94432f;
        return "EngineConfig(modelPath=" + str + ", backend=" + ((Object) abstractC13908a) + ", visionBackend=" + ((Object) abstractC13908a2) + ", audioBackend=" + ((Object) abstractC13908a3) + ", maxNumTokens=" + ((Object) num) + ", maxNumImages=" + ((Object) num2) + ", cacheDir=" + this.f94433g + ")";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public h(String str, AbstractC13908a abstractC13908a, AbstractC13908a abstractC13908a2, AbstractC13908a abstractC13908a3, Integer num, Integer num2, String str2, int i10, C14026x c14026x) {
        this(str, r0, (i10 & 4) != 0 ? null : abstractC13908a2, (i10 & 8) != 0 ? null : abstractC13908a3, (i10 & 16) != 0 ? null : num, (i10 & 32) != 0 ? null : num2, (i10 & 64) == 0 ? str2 : null);
        AbstractC13908a abstractC13908a4;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if ((i10 & 2) != 0) {
            abstractC13908a4 = new AbstractC13908a.C1829a(objArr2 == true ? 1 : 0, 1, objArr == true ? 1 : 0);
        } else {
            abstractC13908a4 = abstractC13908a;
        }
    }
}
