package net.jpountz.xxhash;

import net.jpountz.xxhash.c;

public final class d extends c {

    public long f98130c;

    public static class a implements c.b {

        public static final c.b f98131a = new a();

        @Override
        public c a(int i10) {
            return new d(i10);
        }
    }

    public d(int i10) {
        super(i10);
        this.f98130c = XXHashJNI.XXH32_init(i10);
    }

    @Override
    public synchronized void close() {
        if (this.f98130c != 0) {
            super.close();
            XXHashJNI.XXH32_free(this.f98130c);
            this.f98130c = 0L;
        }
    }

    @Override
    public synchronized int d() {
        g();
        return XXHashJNI.XXH32_digest(this.f98130c);
    }

    @Override
    public synchronized void e() {
        g();
        XXHashJNI.XXH32_free(this.f98130c);
        this.f98130c = XXHashJNI.XXH32_init(this.f98128b);
    }

    @Override
    public synchronized void f(byte[] bArr, int i10, int i11) {
        g();
        XXHashJNI.XXH32_update(this.f98130c, bArr, i10, i11);
    }

    public synchronized void finalize() throws Throwable {
        super.finalize();
        long j10 = this.f98130c;
        if (j10 != 0) {
            XXHashJNI.XXH32_free(j10);
            this.f98130c = 0L;
        }
    }

    public final void g() {
        if (this.f98130c == 0) {
            throw new AssertionError((Object) "Already finalized");
        }
    }
}
