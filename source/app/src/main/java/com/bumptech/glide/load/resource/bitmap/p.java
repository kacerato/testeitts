package com.bumptech.glide.load.resource.bitmap;

public abstract class p {

    public static final p f59404a = new a();

    public static final p f59405b = new b();

    public static final p f59406c = new e();

    public static final p f59407d = new c();

    public static final p f59408e;

    public static final p f59409f;

    public static final p f59410g;

    public static final C.g<p> f59411h;

    public static final boolean f59412i;

    public static class a extends p {
        @Override
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        @Override
        public float b(int i10, int i11, int i12, int i13) {
            if (Math.min(i11 / i13, i10 / i12) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }
    }

    public static class b extends p {
        @Override
        public g a(int i10, int i11, int i12, int i13) {
            return g.MEMORY;
        }

        @Override
        public float b(int i10, int i11, int i12, int i13) {
            int ceil = (int) Math.ceil(Math.max(i11 / i13, i10 / i12));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(ceil)) >= ceil ? 0 : 1));
        }
    }

    public static class c extends p {
        @Override
        public g a(int i10, int i11, int i12, int i13) {
            return b(i10, i11, i12, i13) == 1.0f ? g.QUALITY : p.f59406c.a(i10, i11, i12, i13);
        }

        @Override
        public float b(int i10, int i11, int i12, int i13) {
            return Math.min(1.0f, p.f59406c.b(i10, i11, i12, i13));
        }
    }

    public static class d extends p {
        @Override
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        @Override
        public float b(int i10, int i11, int i12, int i13) {
            return Math.max(i12 / i10, i13 / i11);
        }
    }

    public static class e extends p {
        @Override
        public g a(int i10, int i11, int i12, int i13) {
            return p.f59412i ? g.QUALITY : g.MEMORY;
        }

        @Override
        public float b(int i10, int i11, int i12, int i13) {
            if (p.f59412i) {
                return Math.min(i12 / i10, i13 / i11);
            }
            if (Math.max(i11 / i13, i10 / i12) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r2);
        }
    }

    public static class f extends p {
        @Override
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        @Override
        public float b(int i10, int i11, int i12, int i13) {
            return 1.0f;
        }
    }

    public enum g {
        MEMORY,
        QUALITY
    }

    static {
        d dVar = new d();
        f59408e = dVar;
        f59409f = new f();
        f59410g = dVar;
        f59411h = C.g.g("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", dVar);
        f59412i = true;
    }

    public abstract g a(int i10, int i11, int i12, int i13);

    public abstract float b(int i10, int i11, int i12, int i13);
}
