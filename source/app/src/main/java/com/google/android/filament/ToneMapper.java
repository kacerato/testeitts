package com.google.android.filament;

public class ToneMapper {

    public final long f60172a;

    public static class a extends ToneMapper {
        public a() {
            super(ToneMapper.b());
        }
    }

    public static class b extends ToneMapper {
        public b() {
            super(ToneMapper.a());
        }
    }

    public static class c extends ToneMapper {

        public enum a {
            NONE,
            PUNCHY,
            GOLDEN
        }

        public c() {
            this(a.NONE);
        }

        public c(a aVar) {
            super(ToneMapper.nCreateAgxToneMapper(aVar.ordinal()));
        }
    }

    public static class d extends ToneMapper {
        public d() {
            super(ToneMapper.d());
        }
    }

    public static class e extends ToneMapper {
        public e() {
            super(ToneMapper.e());
        }
    }

    public static class f extends ToneMapper {
        public f() {
            this(1.55f, 0.18f, 0.215f, 10.0f);
        }

        public float r() {
            return ToneMapper.nGenericGetContrast(q());
        }

        public float s() {
            return ToneMapper.nGenericGetHdrMax(q());
        }

        public float t() {
            return ToneMapper.nGenericGetMidGrayIn(q());
        }

        public float u() {
            return ToneMapper.nGenericGetMidGrayOut(q());
        }

        public void v(float f10) {
            ToneMapper.nGenericSetContrast(q(), f10);
        }

        public void w(float f10) {
            ToneMapper.nGenericSetHdrMax(q(), f10);
        }

        public void x(float f10) {
            ToneMapper.nGenericSetMidGrayIn(q(), f10);
        }

        public void y(float f10) {
            ToneMapper.nGenericSetMidGrayOut(q(), f10);
        }

        public f(float f10, float f11, float f12, float f13) {
            super(ToneMapper.nCreateGenericToneMapper(f10, f11, f12, f13));
        }
    }

    public static class g extends ToneMapper {
        public g() {
            super(ToneMapper.g());
        }
    }

    public static class h extends ToneMapper {
        public h() {
            super(ToneMapper.h());
        }
    }

    public static long a() {
        return nCreateACESLegacyToneMapper();
    }

    public static long b() {
        return nCreateACESToneMapper();
    }

    public static long d() {
        return nCreateFilmicToneMapper();
    }

    public static long e() {
        return nCreateGT7ToneMapper();
    }

    public static long g() {
        return nCreateLinearToneMapper();
    }

    public static long h() {
        return nCreatePBRNeutralToneMapper();
    }

    private static native long nCreateACESLegacyToneMapper();

    private static native long nCreateACESToneMapper();

    public static native long nCreateAgxToneMapper(int i10);

    private static native long nCreateFilmicToneMapper();

    private static native long nCreateGT7ToneMapper();

    public static native long nCreateGenericToneMapper(float f10, float f11, float f12, float f13);

    private static native long nCreateLinearToneMapper();

    private static native long nCreatePBRNeutralToneMapper();

    private static native void nDestroyToneMapper(long j10);

    public static native float nGenericGetContrast(long j10);

    public static native float nGenericGetHdrMax(long j10);

    public static native float nGenericGetMidGrayIn(long j10);

    public static native float nGenericGetMidGrayOut(long j10);

    public static native void nGenericSetContrast(long j10, float f10);

    public static native void nGenericSetHdrMax(long j10, float f10);

    public static native void nGenericSetMidGrayIn(long j10, float f10);

    public static native void nGenericSetMidGrayOut(long j10, float f10);

    public void finalize() throws Throwable {
        try {
            super.finalize();
        } finally {
            nDestroyToneMapper(this.f60172a);
        }
    }

    public long q() {
        long j10 = this.f60172a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed ToneMapper");
    }

    public ToneMapper(long j10) {
        this.f60172a = j10;
    }
}
