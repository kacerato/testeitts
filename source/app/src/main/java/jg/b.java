package Jg;

import Gg.c;
import Tg.C3089c;
import Tg.f;
import Tg.y;
import Tg.z;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class b {

    public static final int f10555k = 1;

    public static final int f10556l = 2;

    public static final f f10557m = f.m("OkHttp cache v1\n");

    public static final f f10558n = f.m("OkHttp DIRTY :(\n");

    public static final long f10559o = 32;

    public RandomAccessFile f10560a;

    public Thread f10561b;

    public y f10562c;

    public long f10564e;

    public boolean f10565f;

    public final f f10566g;

    public final long f10568i;

    public int f10569j;

    public final C3089c f10563d = new C3089c();

    public final C3089c f10567h = new C3089c();

    public class a implements y {

        public final z f10570b = new z();

        public Jg.a f10571c;

        public long f10572d;

        public a() {
            this.f10571c = new Jg.a(b.this.f10560a.getChannel());
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            b bVar;
            if (this.f10571c == null) {
                throw new IllegalStateException("closed");
            }
            synchronized (b.this) {
                while (true) {
                    try {
                        long j11 = this.f10572d;
                        b bVar2 = b.this;
                        long j12 = bVar2.f10564e;
                        if (j11 != j12) {
                            long Q10 = j12 - bVar2.f10567h.Q();
                            long j13 = this.f10572d;
                            if (j13 < Q10) {
                                long min = Math.min(j10, j12 - j13);
                                this.f10571c.a(this.f10572d + 32, c3089c, min);
                                this.f10572d += min;
                                return min;
                            }
                            long min2 = Math.min(j10, j12 - j13);
                            b.this.f10567h.f(c3089c, this.f10572d - Q10, min2);
                            this.f10572d += min2;
                            return min2;
                        }
                        if (bVar2.f10565f) {
                            return -1L;
                        }
                        if (bVar2.f10561b == null) {
                            bVar2.f10561b = Thread.currentThread();
                            try {
                                b bVar3 = b.this;
                                long K10 = bVar3.f10562c.K(bVar3.f10563d, bVar3.f10568i);
                                if (K10 == -1) {
                                    b.this.a(j12);
                                    synchronized (b.this) {
                                        b bVar4 = b.this;
                                        bVar4.f10561b = null;
                                        bVar4.notifyAll();
                                    }
                                    return -1L;
                                }
                                long min3 = Math.min(K10, j10);
                                b.this.f10563d.f(c3089c, 0L, min3);
                                this.f10572d += min3;
                                this.f10571c.b(j12 + 32, b.this.f10563d.clone(), K10);
                                synchronized (b.this) {
                                    try {
                                        b bVar5 = b.this;
                                        bVar5.f10567h.h0(bVar5.f10563d, K10);
                                        long Q11 = b.this.f10567h.Q();
                                        b bVar6 = b.this;
                                        if (Q11 > bVar6.f10568i) {
                                            C3089c c3089c2 = bVar6.f10567h;
                                            c3089c2.skip(c3089c2.Q() - b.this.f10568i);
                                        }
                                        bVar = b.this;
                                        bVar.f10564e += K10;
                                    } finally {
                                    }
                                }
                                synchronized (bVar) {
                                    b bVar7 = b.this;
                                    bVar7.f10561b = null;
                                    bVar7.notifyAll();
                                }
                                return min3;
                            } catch (Throwable th2) {
                                synchronized (b.this) {
                                    b bVar8 = b.this;
                                    bVar8.f10561b = null;
                                    bVar8.notifyAll();
                                    throw th2;
                                }
                            }
                        }
                        this.f10570b.j(bVar2);
                    } finally {
                    }
                }
            }
        }

        @Override
        public z a0() {
            return this.f10570b;
        }

        @Override
        public void close() throws IOException {
            if (this.f10571c == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.f10571c = null;
            synchronized (b.this) {
                try {
                    b bVar = b.this;
                    int i10 = bVar.f10569j - 1;
                    bVar.f10569j = i10;
                    if (i10 == 0) {
                        RandomAccessFile randomAccessFile2 = bVar.f10560a;
                        bVar.f10560a = null;
                        randomAccessFile = randomAccessFile2;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (randomAccessFile != null) {
                c.g(randomAccessFile);
            }
        }
    }

    public b(RandomAccessFile randomAccessFile, y yVar, long j10, f fVar, long j11) {
        this.f10560a = randomAccessFile;
        this.f10562c = yVar;
        this.f10565f = yVar == null;
        this.f10564e = j10;
        this.f10566g = fVar;
        this.f10568i = j11;
    }

    public static b b(File file, y yVar, f fVar, long j10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        b bVar = new b(randomAccessFile, yVar, 0L, fVar, j10);
        randomAccessFile.setLength(0L);
        bVar.g(f10558n, -1L, -1L);
        return bVar;
    }

    public static b f(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Jg.a aVar = new Jg.a(randomAccessFile.getChannel());
        C3089c c3089c = new C3089c();
        aVar.a(0L, c3089c, 32L);
        if (!c3089c.x1(r2.S()).equals(f10557m)) {
            throw new IOException("unreadable cache file");
        }
        long readLong = c3089c.readLong();
        long readLong2 = c3089c.readLong();
        C3089c c3089c2 = new C3089c();
        aVar.a(readLong + 32, c3089c2, readLong2);
        return new b(randomAccessFile, null, readLong, c3089c2.C1(), 0L);
    }

    public void a(long j10) throws IOException {
        h(j10);
        this.f10560a.getChannel().force(false);
        g(f10557m, j10, this.f10566g.S());
        this.f10560a.getChannel().force(false);
        synchronized (this) {
            this.f10565f = true;
        }
        c.g(this.f10562c);
        this.f10562c = null;
    }

    public boolean c() {
        return this.f10560a == null;
    }

    public f d() {
        return this.f10566g;
    }

    public y e() {
        synchronized (this) {
            try {
                if (this.f10560a == null) {
                    return null;
                }
                this.f10569j++;
                return new a();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void g(f fVar, long j10, long j11) throws IOException {
        C3089c c3089c = new C3089c();
        c3089c.D(fVar);
        c3089c.writeLong(j10);
        c3089c.writeLong(j11);
        if (c3089c.Q() != 32) {
            throw new IllegalArgumentException();
        }
        new Jg.a(this.f10560a.getChannel()).b(0L, c3089c, 32L);
    }

    public final void h(long j10) throws IOException {
        C3089c c3089c = new C3089c();
        c3089c.D(this.f10566g);
        new Jg.a(this.f10560a.getChannel()).b(32 + j10, c3089c, this.f10566g.S());
    }
}
