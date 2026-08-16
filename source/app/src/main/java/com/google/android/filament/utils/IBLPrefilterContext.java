package com.google.android.filament.utils;

import com.google.android.filament.Engine;
import com.google.android.filament.Texture;

public class IBLPrefilterContext {

    public long f60387a;

    public static class a {

        public long f60388a;

        public a(IBLPrefilterContext iBLPrefilterContext) {
            this.f60388a = IBLPrefilterContext.nCreateEquirectHelper(iBLPrefilterContext.h());
        }

        public void a() {
            IBLPrefilterContext.nDestroyEquirectHelper(b());
            this.f60388a = 0L;
        }

        public long b() {
            long j10 = this.f60388a;
            if (j10 != 0) {
                return j10;
            }
            throw new IllegalStateException("Calling method on destroyed EquirectangularToCubemap");
        }

        public Texture c(Texture texture) {
            return new Texture(IBLPrefilterContext.nEquirectHelperRun(b(), texture.getNativeObject()));
        }
    }

    public static class b {

        public long f60389a;

        public b(IBLPrefilterContext iBLPrefilterContext) {
            this.f60389a = IBLPrefilterContext.nCreateSpecularFilter(iBLPrefilterContext.h());
        }

        public void a() {
            IBLPrefilterContext.nDestroySpecularFilter(b());
            this.f60389a = 0L;
        }

        public long b() {
            long j10 = this.f60389a;
            if (j10 != 0) {
                return j10;
            }
            throw new IllegalStateException("Calling method on destroyed SpecularFilter");
        }

        public Texture c(Texture texture) {
            return new Texture(IBLPrefilterContext.nSpecularFilterRun(b(), texture.getNativeObject()));
        }
    }

    public IBLPrefilterContext(Engine engine) {
        long nCreate = nCreate(engine.getNativeObject());
        this.f60387a = nCreate;
        if (nCreate == 0) {
            throw new IllegalStateException("Couldn't create IBLPrefilterContext");
        }
    }

    private static native long nCreate(long j10);

    public static native long nCreateEquirectHelper(long j10);

    public static native long nCreateSpecularFilter(long j10);

    private static native void nDestroy(long j10);

    public static native void nDestroyEquirectHelper(long j10);

    public static native void nDestroySpecularFilter(long j10);

    public static native long nEquirectHelperRun(long j10, long j11);

    public static native long nSpecularFilterRun(long j10, long j11);

    public void g() {
        nDestroy(h());
        this.f60387a = 0L;
    }

    public long h() {
        long j10 = this.f60387a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed IBLPrefilterContext");
    }
}
