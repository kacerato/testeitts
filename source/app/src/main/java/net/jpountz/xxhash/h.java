package net.jpountz.xxhash;

import net.jpountz.xxhash.g;

public final class h extends g {

    public long f98136c;

    public static class a implements g.b {

        public static final g.b f98137a = new a();

        @Override
        public g a(long j10) {
            return new h(j10);
        }
    }

    public h(long j10) {
        super(j10);
        this.f98136c = XXHashJNI.XXH64_init(j10);
    }

    @Override
    public synchronized void close() {
        if (this.f98136c != 0) {
            super.close();
            XXHashJNI.XXH64_free(this.f98136c);
            this.f98136c = 0L;
        }
    }

    @Override
    public synchronized long d() {
        g();
        return XXHashJNI.XXH64_digest(this.f98136c);
    }

    @Override
    public synchronized void e() {
        g();
        XXHashJNI.XXH64_free(this.f98136c);
        this.f98136c = XXHashJNI.XXH64_init(this.f98134b);
    }

    @Override
    public synchronized void f(byte[] bArr, int i10, int i11) {
        g();
        XXHashJNI.XXH64_update(this.f98136c, bArr, i10, i11);
    }

    public synchronized void finalize() throws Throwable {
        super.finalize();
        long j10 = this.f98136c;
        if (j10 != 0) {
            XXHashJNI.XXH64_free(j10);
            this.f98136c = 0L;
        }
    }

    public final void g() {
        if (this.f98136c == 0) {
            throw new AssertionError((Object) "Already finalized");
        }
    }
}
