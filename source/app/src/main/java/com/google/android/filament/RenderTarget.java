package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.filament.Texture;

public class RenderTarget {

    public static final int f60043c = a.values().length;

    public static final Texture.c[] f60044d = Texture.c.values();

    public long f60045a;

    public final Texture[] f60046b;

    public enum a {
        COLOR,
        COLOR1,
        COLOR2,
        COLOR3,
        COLOR4,
        COLOR5,
        COLOR6,
        COLOR7,
        DEPTH
    }

    public static class b {

        public final a f60047a;

        public final long f60048b;

        public final Texture[] f60049c = new Texture[RenderTarget.f60043c];

        public static class a {

            public final long f60050a;

            public a(long j10) {
                this.f60050a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                RenderTarget.nDestroyBuilder(this.f60050a);
            }
        }

        public b() {
            long g10 = RenderTarget.g();
            this.f60048b = g10;
            this.f60047a = new a(g10);
        }

        @NonNull
        public RenderTarget b(@NonNull Engine engine) {
            long nBuilderBuild = RenderTarget.nBuilderBuild(this.f60048b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new RenderTarget(nBuilderBuild, this);
            }
            throw new IllegalStateException("Couldn't create RenderTarget");
        }

        @NonNull
        public b c(@NonNull a aVar, Texture.c cVar) {
            RenderTarget.nBuilderFace(this.f60048b, aVar.ordinal(), cVar.ordinal());
            return this;
        }

        @NonNull
        public b d(@NonNull a aVar, @IntRange(from = 0) int i10) {
            RenderTarget.nBuilderLayer(this.f60048b, aVar.ordinal(), i10);
            return this;
        }

        @NonNull
        public b e(@NonNull a aVar, @IntRange(from = 0) int i10) {
            RenderTarget.nBuilderMipLevel(this.f60048b, aVar.ordinal(), i10);
            return this;
        }

        @NonNull
        public b f(@NonNull a aVar, @Nullable Texture texture) {
            this.f60049c[aVar.ordinal()] = texture;
            RenderTarget.nBuilderTexture(this.f60048b, aVar.ordinal(), texture != null ? texture.getNativeObject() : 0L);
            return this;
        }
    }

    public static long g() {
        return nCreateBuilder();
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderFace(long j10, int i10, int i11);

    public static native void nBuilderLayer(long j10, int i10, int i11);

    public static native void nBuilderMipLevel(long j10, int i10, int i11);

    public static native void nBuilderTexture(long j10, int i10, long j11);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native int nGetFace(long j10, int i10);

    private static native int nGetLayer(long j10, int i10);

    private static native int nGetMipLevel(long j10, int i10);

    public void i() {
        this.f60045a = 0L;
    }

    public Texture.c j(a aVar) {
        return f60044d[nGetFace(m(), aVar.ordinal())];
    }

    @IntRange(from = 0)
    public int k(@NonNull a aVar) {
        return nGetLayer(m(), aVar.ordinal());
    }

    @IntRange(from = 0)
    public int l(@NonNull a aVar) {
        return nGetMipLevel(m(), aVar.ordinal());
    }

    public long m() {
        long j10 = this.f60045a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed RenderTarget");
    }

    @Nullable
    public Texture n(@NonNull a aVar) {
        return this.f60046b[aVar.ordinal()];
    }

    public RenderTarget(long j10, b bVar) {
        int i10 = f60043c;
        Texture[] textureArr = new Texture[i10];
        this.f60046b = textureArr;
        this.f60045a = j10;
        System.arraycopy(bVar.f60049c, 0, textureArr, 0, i10);
    }
}
