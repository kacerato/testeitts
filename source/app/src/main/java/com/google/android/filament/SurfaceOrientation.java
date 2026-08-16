package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import java.nio.Buffer;

public class SurfaceOrientation {

    public long f60092a;

    public static class a {

        public int f60093a;

        public int f60094b;

        public Buffer f60095c;

        public int f60096d;

        public Buffer f60097e;

        public int f60098f;

        public Buffer f60099g;

        public int f60100h;

        public Buffer f60101i;

        public int f60102j;

        public Buffer f60103k;

        public Buffer f60104l;

        public long f60105m;

        public int f60106n;

        public long f60107o;

        public int f60108p;

        public long f60109q;

        public int f60110r;

        public long f60111s;

        public int f60112t;

        public long f60113u;

        public int f60114v;

        public long f60115w;

        public int f60116x;

        @NonNull
        public SurfaceOrientation a() {
            long p10 = SurfaceOrientation.p();
            SurfaceOrientation.nBuilderVertexCount(p10, this.f60093a);
            SurfaceOrientation.nBuilderTriangleCount(p10, this.f60094b);
            Buffer buffer = this.f60095c;
            if (buffer != null) {
                SurfaceOrientation.nBuilderNormals(p10, buffer, buffer.remaining(), this.f60096d);
            } else {
                long j10 = this.f60105m;
                if (j10 != 0) {
                    SurfaceOrientation.nBuilderNormalsDirect(p10, j10, this.f60106n, this.f60096d);
                }
            }
            Buffer buffer2 = this.f60097e;
            if (buffer2 != null) {
                SurfaceOrientation.nBuilderTangents(p10, buffer2, buffer2.remaining(), this.f60098f);
            } else {
                long j11 = this.f60107o;
                if (j11 != 0) {
                    SurfaceOrientation.nBuilderTangentsDirect(p10, j11, this.f60108p, this.f60098f);
                }
            }
            Buffer buffer3 = this.f60099g;
            if (buffer3 != null) {
                SurfaceOrientation.nBuilderUVs(p10, buffer3, buffer3.remaining(), this.f60100h);
            } else {
                long j12 = this.f60109q;
                if (j12 != 0) {
                    SurfaceOrientation.nBuilderUVsDirect(p10, j12, this.f60110r, this.f60100h);
                }
            }
            Buffer buffer4 = this.f60101i;
            if (buffer4 != null) {
                SurfaceOrientation.nBuilderPositions(p10, buffer4, buffer4.remaining(), this.f60102j);
            } else {
                long j13 = this.f60111s;
                if (j13 != 0) {
                    SurfaceOrientation.nBuilderPositionsDirect(p10, j13, this.f60112t, this.f60102j);
                }
            }
            Buffer buffer5 = this.f60103k;
            if (buffer5 != null) {
                SurfaceOrientation.nBuilderTriangles16(p10, buffer5, buffer5.remaining());
            } else {
                long j14 = this.f60113u;
                if (j14 != 0) {
                    SurfaceOrientation.nBuilderTriangles16Direct(p10, j14, this.f60114v);
                }
            }
            Buffer buffer6 = this.f60104l;
            if (buffer6 != null) {
                SurfaceOrientation.nBuilderTriangles32(p10, buffer6, buffer6.remaining());
            } else {
                long j15 = this.f60115w;
                if (j15 != 0) {
                    SurfaceOrientation.nBuilderTriangles32Direct(p10, j15, this.f60116x);
                }
            }
            long nBuilderBuild = SurfaceOrientation.nBuilderBuild(p10);
            SurfaceOrientation.nDestroyBuilder(p10);
            if (nBuilderBuild != 0) {
                return new SurfaceOrientation(nBuilderBuild);
            }
            throw new IllegalStateException("Could not create SurfaceOrientation");
        }

        @NonNull
        public a b(long j10, @IntRange(from = 0) int i10) {
            this.f60095c = null;
            this.f60105m = j10;
            this.f60106n = i10;
            this.f60096d = 0;
            return this;
        }

        @NonNull
        public a c(@NonNull Buffer buffer) {
            this.f60095c = buffer;
            this.f60105m = 0L;
            this.f60106n = 0;
            this.f60096d = 0;
            return this;
        }

        @NonNull
        public a d(long j10, @IntRange(from = 0) int i10) {
            this.f60101i = null;
            this.f60111s = j10;
            this.f60112t = i10;
            this.f60102j = 0;
            return this;
        }

        @NonNull
        public a e(@NonNull Buffer buffer) {
            this.f60101i = buffer;
            this.f60111s = 0L;
            this.f60112t = 0;
            this.f60102j = 0;
            return this;
        }

        @NonNull
        public a f(long j10, @IntRange(from = 0) int i10) {
            this.f60097e = null;
            this.f60107o = j10;
            this.f60108p = i10;
            this.f60098f = 0;
            return this;
        }

        @NonNull
        public a g(@NonNull Buffer buffer) {
            this.f60097e = buffer;
            this.f60107o = 0L;
            this.f60108p = 0;
            this.f60098f = 0;
            return this;
        }

        @NonNull
        public a h(int i10) {
            this.f60094b = i10;
            return this;
        }

        @NonNull
        public a i(long j10, @IntRange(from = 0) int i10) {
            this.f60103k = null;
            this.f60113u = j10;
            this.f60114v = i10;
            return this;
        }

        @NonNull
        public a j(@NonNull Buffer buffer) {
            this.f60103k = buffer;
            this.f60113u = 0L;
            this.f60114v = 0;
            return this;
        }

        @NonNull
        public a k(long j10, @IntRange(from = 0) int i10) {
            this.f60104l = null;
            this.f60115w = j10;
            this.f60116x = i10;
            return this;
        }

        @NonNull
        public a l(@NonNull Buffer buffer) {
            this.f60104l = buffer;
            this.f60115w = 0L;
            this.f60116x = 0;
            return this;
        }

        @NonNull
        public a m(long j10, @IntRange(from = 0) int i10) {
            this.f60099g = null;
            this.f60109q = j10;
            this.f60110r = i10;
            this.f60100h = 0;
            return this;
        }

        @NonNull
        public a n(@NonNull Buffer buffer) {
            this.f60099g = buffer;
            this.f60109q = 0L;
            this.f60110r = 0;
            this.f60100h = 0;
            return this;
        }

        @NonNull
        public a o(@IntRange(from = 1) int i10) {
            this.f60093a = i10;
            return this;
        }
    }

    public static native long nBuilderBuild(long j10);

    public static native void nBuilderNormals(long j10, Buffer buffer, int i10, int i11);

    public static native void nBuilderNormalsDirect(long j10, long j11, int i10, int i11);

    public static native void nBuilderPositions(long j10, Buffer buffer, int i10, int i11);

    public static native void nBuilderPositionsDirect(long j10, long j11, int i10, int i11);

    public static native void nBuilderTangents(long j10, Buffer buffer, int i10, int i11);

    public static native void nBuilderTangentsDirect(long j10, long j11, int i10, int i11);

    public static native void nBuilderTriangleCount(long j10, int i10);

    public static native void nBuilderTriangles16(long j10, Buffer buffer, int i10);

    public static native void nBuilderTriangles16Direct(long j10, long j11, int i10);

    public static native void nBuilderTriangles32(long j10, Buffer buffer, int i10);

    public static native void nBuilderTriangles32Direct(long j10, long j11, int i10);

    public static native void nBuilderUVs(long j10, Buffer buffer, int i10, int i11);

    public static native void nBuilderUVsDirect(long j10, long j11, int i10, int i11);

    public static native void nBuilderVertexCount(long j10, int i10);

    private static native long nCreateBuilder();

    private static native void nDestroy(long j10);

    public static native void nDestroyBuilder(long j10);

    private static native void nGetQuatsAsFloat(long j10, Buffer buffer, int i10);

    private static native void nGetQuatsAsHalf(long j10, Buffer buffer, int i10);

    private static native void nGetQuatsAsShort(long j10, Buffer buffer, int i10);

    private static native void nGetQuatsAsShortDirect(long j10, long j11, int i10);

    private static native int nGetVertexCount(long j10);

    public static long p() {
        return nCreateBuilder();
    }

    public void r() {
        nDestroy(this.f60092a);
        this.f60092a = 0L;
    }

    public long s() {
        long j10 = this.f60092a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed SurfaceOrientation");
    }

    @NonNull
    public void t(@NonNull Buffer buffer) {
        nGetQuatsAsFloat(this.f60092a, buffer, buffer.remaining());
    }

    @NonNull
    public void u(@NonNull Buffer buffer) {
        nGetQuatsAsHalf(this.f60092a, buffer, buffer.remaining());
    }

    @NonNull
    public void v(long j10, @IntRange(from = 0) int i10) {
        nGetQuatsAsShortDirect(this.f60092a, j10, i10);
    }

    @NonNull
    public void w(@NonNull Buffer buffer) {
        nGetQuatsAsShort(this.f60092a, buffer, buffer.remaining());
    }

    @IntRange(from = 0)
    public int x() {
        return nGetVertexCount(this.f60092a);
    }

    public SurfaceOrientation(long j10) {
        this.f60092a = j10;
    }
}
