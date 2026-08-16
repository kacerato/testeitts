package Tg;

import java.io.IOException;

public final class r {

    public final long f25041a;

    public boolean f25043c;

    public boolean f25044d;

    public final C3089c f25042b = new C3089c();

    public final x f25045e = new a();

    public final y f25046f = new b();

    public final class a implements x {

        public final z f25047b = new z();

        public a() {
        }

        @Override
        public z a0() {
            return this.f25047b;
        }

        @Override
        public void close() throws IOException {
            synchronized (r.this.f25042b) {
                try {
                    r rVar = r.this;
                    if (rVar.f25043c) {
                        return;
                    }
                    if (rVar.f25044d && rVar.f25042b.Q() > 0) {
                        throw new IOException("source is closed");
                    }
                    r rVar2 = r.this;
                    rVar2.f25043c = true;
                    rVar2.f25042b.notifyAll();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void flush() throws IOException {
            synchronized (r.this.f25042b) {
                try {
                    r rVar = r.this;
                    if (rVar.f25043c) {
                        throw new IllegalStateException("closed");
                    }
                    if (rVar.f25044d && rVar.f25042b.Q() > 0) {
                        throw new IOException("source is closed");
                    }
                } finally {
                }
            }
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            synchronized (r.this.f25042b) {
                try {
                    if (r.this.f25043c) {
                        throw new IllegalStateException("closed");
                    }
                    while (j10 > 0) {
                        r rVar = r.this;
                        if (rVar.f25044d) {
                            throw new IOException("source is closed");
                        }
                        long Q10 = rVar.f25041a - rVar.f25042b.Q();
                        if (Q10 == 0) {
                            this.f25047b.j(r.this.f25042b);
                        } else {
                            long min = Math.min(Q10, j10);
                            r.this.f25042b.h0(c3089c, min);
                            j10 -= min;
                            r.this.f25042b.notifyAll();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final class b implements y {

        public final z f25049b = new z();

        public b() {
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            synchronized (r.this.f25042b) {
                try {
                    if (r.this.f25044d) {
                        throw new IllegalStateException("closed");
                    }
                    while (r.this.f25042b.Q() == 0) {
                        r rVar = r.this;
                        if (rVar.f25043c) {
                            return -1L;
                        }
                        this.f25049b.j(rVar.f25042b);
                    }
                    long K10 = r.this.f25042b.K(c3089c, j10);
                    r.this.f25042b.notifyAll();
                    return K10;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public z a0() {
            return this.f25049b;
        }

        @Override
        public void close() throws IOException {
            synchronized (r.this.f25042b) {
                r rVar = r.this;
                rVar.f25044d = true;
                rVar.f25042b.notifyAll();
            }
        }
    }

    public r(long j10) {
        if (j10 >= 1) {
            this.f25041a = j10;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize < 1: " + j10);
    }

    public final x a() {
        return this.f25045e;
    }

    public final y b() {
        return this.f25046f;
    }
}
