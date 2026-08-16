package com.google.android.filament.utils;

import com.google.android.filament.Engine;
import com.google.android.filament.Texture;
import java.nio.Buffer;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class HDRLoader {

    @NotNull
    public static final HDRLoader f60385a = new HDRLoader();

    public static final class a {

        @NotNull
        public Texture.f f60386a = Texture.f.RGB16F;

        @NotNull
        public final Texture.f a() {
            return this.f60386a;
        }

        public final void b(@NotNull Texture.f fVar) {
            M.p(fVar, "<set-?>");
            this.f60386a = fVar;
        }
    }

    private HDRLoader() {
    }

    public static Texture b(HDRLoader hDRLoader, Engine engine, Buffer buffer, a aVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            aVar = new a();
        }
        return hDRLoader.a(engine, buffer, aVar);
    }

    private final native long nCreateHDRTexture(long j10, Buffer buffer, int i10, int i11);

    @Nullable
    public final Texture a(@NotNull Engine engine, @NotNull Buffer buffer, @NotNull a options) {
        M.p(engine, "engine");
        M.p(buffer, "buffer");
        M.p(options, "options");
        long nCreateHDRTexture = nCreateHDRTexture(engine.getNativeObject(), buffer, buffer.remaining(), options.a().ordinal());
        if (nCreateHDRTexture == 0) {
            return null;
        }
        return new Texture(nCreateHDRTexture);
    }
}
