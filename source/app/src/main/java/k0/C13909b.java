package k0;

import com.google.ai.edge.litertlm.BenchmarkInfo;
import com.google.ai.edge.litertlm.LiteRtLmJni;
import com.tonyodev.fetch2.util.FetchDefaults;
import k0.AbstractC13908a;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13909b {
    @i
    @NotNull
    public static final BenchmarkInfo a(@NotNull String modelPath, @NotNull AbstractC13908a backend, int prefillTokens, int decodeTokens, @Nullable String cacheDir) {
        String e10;
        M.p(modelPath, "modelPath");
        M.p(backend, "backend");
        LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
        String a10 = backend.a();
        String str = cacheDir == null ? "" : cacheDir;
        AbstractC13908a.c cVar = backend instanceof AbstractC13908a.c ? (AbstractC13908a.c) backend : null;
        long nativeCreateBenchmark = liteRtLmJni.nativeCreateBenchmark(modelPath, a10, prefillTokens, decodeTokens, str, (cVar == null || (e10 = cVar.e()) == null) ? "" : e10);
        try {
            j jVar = j.f94434a;
            com.google.ai.edge.litertlm.c cVar2 = new com.google.ai.edge.litertlm.c(liteRtLmJni.nativeCreateConversation(nativeCreateBenchmark, null, okhttp3.v.f99450n, okhttp3.v.f99450n, null, FetchDefaults.EMPTY_JSON_OBJECT_STRING, false, jVar.e(), jVar.f()), null, false, 6, null);
            try {
                com.google.ai.edge.litertlm.c.r(cVar2, "Engine ignore this message in this mode.", null, 2, null);
                BenchmarkInfo f10 = cVar2.f();
                Jf.a.c(cVar2, null);
                liteRtLmJni.nativeDeleteEngine(nativeCreateBenchmark);
                return f10;
            } finally {
            }
        } catch (Throwable th2) {
            LiteRtLmJni.f59865a.nativeDeleteEngine(nativeCreateBenchmark);
            throw th2;
        }
    }

    public static BenchmarkInfo b(String str, AbstractC13908a abstractC13908a, int i10, int i11, String str2, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i10 = 256;
        }
        if ((i12 & 8) != 0) {
            i11 = 256;
        }
        if ((i12 & 16) != 0) {
            str2 = null;
        }
        return a(str, abstractC13908a, i10, i11, str2);
    }
}
