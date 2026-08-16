package k0;

import com.google.ai.edge.litertlm.LiteRtLmJni;
import com.google.ai.edge.litertlm.LiteRtLmJniException;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nCapabilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Capabilities.kt\ncom/google/ai/edge/litertlm/Capabilities\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"})
public final class C13910c implements AutoCloseable {

    @NotNull
    public final Object f94411b;

    @Nullable
    public volatile Long f94412c;

    public C13910c(@NotNull String modelPath) {
        M.p(modelPath, "modelPath");
        this.f94411b = new Object();
        long nativeCreateCapabilities = LiteRtLmJni.f59865a.nativeCreateCapabilities(modelPath);
        if (nativeCreateCapabilities != 0) {
            this.f94412c = Long.valueOf(nativeCreateCapabilities);
            return;
        }
        throw new LiteRtLmJniException("Failed to load capabilities for model: " + modelPath);
    }

    public final void c() {
        if (this.f94412c == null) {
            throw new IllegalStateException("Capabilities instance is already closed.");
        }
    }

    @Override
    public void close() {
        synchronized (this.f94411b) {
            c();
            LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
            Long l10 = this.f94412c;
            M.m(l10);
            liteRtLmJni.nativeDeleteCapabilities(l10.longValue());
            this.f94412c = null;
            P0 p02 = P0.f98194a;
        }
    }

    public final boolean d() {
        boolean nativeHasSpeculativeDecodingSupport;
        synchronized (this.f94411b) {
            c();
            LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
            Long l10 = this.f94412c;
            M.m(l10);
            nativeHasSpeculativeDecodingSupport = liteRtLmJni.nativeHasSpeculativeDecodingSupport(l10.longValue());
        }
        return nativeHasSpeculativeDecodingSupport;
    }
}
