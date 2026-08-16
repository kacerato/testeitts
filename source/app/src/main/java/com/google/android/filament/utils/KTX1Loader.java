package com.google.android.filament.utils;

import com.google.android.filament.Engine;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.Skybox;
import com.google.android.filament.Texture;
import java.nio.Buffer;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class KTX1Loader {

    @NotNull
    public static final KTX1Loader f60401a = new KTX1Loader();

    public static final class a {

        @Nullable
        public final IndirectLight f60402a;

        @Nullable
        public final Texture f60403b;

        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        @Nullable
        public final Texture a() {
            return this.f60403b;
        }

        @Nullable
        public final IndirectLight b() {
            return this.f60402a;
        }

        public a(@Nullable IndirectLight indirectLight, @Nullable Texture texture) {
            this.f60402a = indirectLight;
            this.f60403b = texture;
        }

        public a(IndirectLight indirectLight, Texture texture, int i10, C14026x c14026x) {
            this((i10 & 1) != 0 ? null : indirectLight, (i10 & 2) != 0 ? null : texture);
        }
    }

    public static final class b {

        public boolean f60404a;

        public final boolean a() {
            return this.f60404a;
        }

        public final void b(boolean z10) {
            this.f60404a = z10;
        }
    }

    public static final class c {

        @Nullable
        public final Skybox f60405a;

        @Nullable
        public final Texture f60406b;

        /* JADX WARN: Multi-variable type inference failed */
        public c() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        @Nullable
        public final Texture a() {
            return this.f60406b;
        }

        @Nullable
        public final Skybox b() {
            return this.f60405a;
        }

        public c(@Nullable Skybox skybox, @Nullable Texture texture) {
            this.f60405a = skybox;
            this.f60406b = texture;
        }

        public c(Skybox skybox, Texture texture, int i10, C14026x c14026x) {
            this((i10 & 1) != 0 ? null : skybox, (i10 & 2) != 0 ? null : texture);
        }
    }

    private KTX1Loader() {
    }

    public static a b(KTX1Loader kTX1Loader, Engine engine, Buffer buffer, b bVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bVar = new b();
        }
        return kTX1Loader.a(engine, buffer, bVar);
    }

    public static c d(KTX1Loader kTX1Loader, Engine engine, Buffer buffer, b bVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bVar = new b();
        }
        return kTX1Loader.c(engine, buffer, bVar);
    }

    public static Texture f(KTX1Loader kTX1Loader, Engine engine, Buffer buffer, b bVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bVar = new b();
        }
        return kTX1Loader.e(engine, buffer, bVar);
    }

    private final native long nCreateIndirectLight(long j10, long j11, float[] fArr);

    private final native long nCreateKTXTexture(long j10, Buffer buffer, int i10, boolean z10);

    private final native long nCreateSkybox(long j10, long j11);

    private final native boolean nGetSphericalHarmonics(Buffer buffer, int i10, float[] fArr);

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final a a(@NotNull Engine engine, @NotNull Buffer buffer, @NotNull b options) {
        M.p(engine, "engine");
        M.p(buffer, "buffer");
        M.p(options, "options");
        long nativeObject = engine.getNativeObject();
        float[] g10 = g(buffer);
        if (g10 != null) {
            Texture e10 = e(engine, buffer, options);
            return new a(new IndirectLight(nCreateIndirectLight(nativeObject, e10.getNativeObject(), g10)), e10);
        }
        return new a(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @NotNull
    public final c c(@NotNull Engine engine, @NotNull Buffer buffer, @NotNull b options) {
        M.p(engine, "engine");
        M.p(buffer, "buffer");
        M.p(options, "options");
        long nativeObject = engine.getNativeObject();
        Texture e10 = e(engine, buffer, options);
        return new c(new Skybox(nCreateSkybox(nativeObject, e10.getNativeObject())), e10);
    }

    @NotNull
    public final Texture e(@NotNull Engine engine, @NotNull Buffer buffer, @NotNull b options) {
        M.p(engine, "engine");
        M.p(buffer, "buffer");
        M.p(options, "options");
        return new Texture(nCreateKTXTexture(engine.getNativeObject(), buffer, buffer.remaining(), options.a()));
    }

    @Nullable
    public final float[] g(@NotNull Buffer buffer) {
        M.p(buffer, "buffer");
        float[] fArr = new float[27];
        if (nGetSphericalHarmonics(buffer, buffer.remaining(), fArr)) {
            return fArr;
        }
        return null;
    }
}
