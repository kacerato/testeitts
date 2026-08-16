package Ng;

import Ng.b;
import Tg.C3087a;
import Tg.C3089c;
import Tg.x;
import Tg.y;
import Tg.z;
import com.tonyodev.fetch2core.FetchErrorStrings;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.u;

public final class h {

    public static final boolean f16320m = false;

    public long f16321a = 0;

    public long f16322b;

    public final int f16323c;

    public final f f16324d;

    public final Deque<u> f16325e;

    public b.a f16326f;

    public boolean f16327g;

    public final b f16328h;

    public final a f16329i;

    public final c f16330j;

    public final c f16331k;

    public Ng.a f16332l;

    public final class a implements x {

        public static final long f16333f = 16384;

        public static final boolean f16334g = false;

        public final C3089c f16335b = new C3089c();

        public boolean f16336c;

        public boolean f16337d;

        public a() {
        }

        public final void a(boolean z10) throws IOException {
            h hVar;
            long min;
            h hVar2;
            synchronized (h.this) {
                h.this.f16331k.m();
                while (true) {
                    try {
                        hVar = h.this;
                        if (hVar.f16322b > 0 || this.f16337d || this.f16336c || hVar.f16332l != null) {
                            break;
                        } else {
                            hVar.w();
                        }
                    } finally {
                        h.this.f16331k.w();
                    }
                }
                hVar.f16331k.w();
                h.this.e();
                min = Math.min(h.this.f16322b, this.f16335b.Q());
                hVar2 = h.this;
                hVar2.f16322b -= min;
            }
            hVar2.f16331k.m();
            try {
                h hVar3 = h.this;
                hVar3.f16324d.B(hVar3.f16323c, z10 && min == this.f16335b.Q(), this.f16335b, min);
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public z a0() {
            return h.this.f16331k;
        }

        @Override
        public void close() throws IOException {
            synchronized (h.this) {
                try {
                    if (this.f16336c) {
                        return;
                    }
                    if (!h.this.f16329i.f16337d) {
                        if (this.f16335b.Q() > 0) {
                            while (this.f16335b.Q() > 0) {
                                a(true);
                            }
                        } else {
                            h hVar = h.this;
                            hVar.f16324d.B(hVar.f16323c, true, null, 0L);
                        }
                    }
                    synchronized (h.this) {
                        this.f16336c = true;
                    }
                    h.this.f16324d.flush();
                    h.this.d();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void flush() throws IOException {
            synchronized (h.this) {
                h.this.e();
            }
            while (this.f16335b.Q() > 0) {
                a(false);
                h.this.f16324d.flush();
            }
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            this.f16335b.h0(c3089c, j10);
            while (this.f16335b.Q() >= 16384) {
                a(false);
            }
        }
    }

    public final class b implements y {

        public static final boolean f16339h = false;

        public final C3089c f16340b = new C3089c();

        public final C3089c f16341c = new C3089c();

        public final long f16342d;

        public boolean f16343e;

        public boolean f16344f;

        public b(long j10) {
            this.f16342d = j10;
        }

        /* JADX WARN: Code restructure failed: missing block: B:61:0x00d9, code lost:
        
            throw new java.io.IOException("stream closed");
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long K(C3089c c3089c, long j10) throws IOException {
            Ng.a aVar;
            long K10;
            u uVar;
            b.a aVar2;
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            while (true) {
                synchronized (h.this) {
                    try {
                        h.this.f16330j.m();
                        try {
                            h hVar = h.this;
                            aVar = hVar.f16332l;
                            if (aVar == null) {
                                aVar = null;
                            }
                            if (!this.f16343e) {
                                if (!hVar.f16325e.isEmpty() && h.this.f16326f != null) {
                                    uVar = (u) h.this.f16325e.removeFirst();
                                    aVar2 = h.this.f16326f;
                                } else if (this.f16341c.Q() > 0) {
                                    C3089c c3089c2 = this.f16341c;
                                    K10 = c3089c2.K(c3089c, Math.min(j10, c3089c2.Q()));
                                    h hVar2 = h.this;
                                    long j11 = hVar2.f16321a + K10;
                                    hVar2.f16321a = j11;
                                    if (aVar == null && j11 >= hVar2.f16324d.f16261o.e() / 2) {
                                        h hVar3 = h.this;
                                        hVar3.f16324d.S(hVar3.f16323c, hVar3.f16321a);
                                        h.this.f16321a = 0L;
                                    }
                                    uVar = null;
                                    aVar2 = null;
                                    if (uVar == null || aVar2 == null) {
                                        break;
                                    }
                                    aVar2.a(uVar);
                                } else if (this.f16344f || aVar != null) {
                                    uVar = null;
                                    aVar2 = null;
                                } else {
                                    h.this.w();
                                    h.this.f16330j.w();
                                }
                                K10 = -1;
                                if (uVar == null) {
                                    break;
                                }
                                break;
                            }
                            break;
                        } finally {
                            h.this.f16330j.w();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (K10 != -1) {
                b(K10);
                return K10;
            }
            if (aVar == null) {
                return -1L;
            }
            throw new StreamResetException(aVar);
        }

        public void a(Tg.e eVar, long j10) throws IOException {
            boolean z10;
            boolean z11;
            while (j10 > 0) {
                synchronized (h.this) {
                    z10 = this.f16344f;
                    z11 = this.f16341c.Q() + j10 > this.f16342d;
                }
                if (z11) {
                    eVar.skip(j10);
                    h.this.h(Ng.a.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    eVar.skip(j10);
                    return;
                }
                long K10 = eVar.K(this.f16340b, j10);
                if (K10 == -1) {
                    throw new EOFException();
                }
                j10 -= K10;
                synchronized (h.this) {
                    try {
                        boolean z12 = this.f16341c.Q() == 0;
                        this.f16341c.H(this.f16340b);
                        if (z12) {
                            h.this.notifyAll();
                        }
                    } finally {
                    }
                }
            }
        }

        @Override
        public z a0() {
            return h.this.f16330j;
        }

        public final void b(long j10) {
            h.this.f16324d.A(j10);
        }

        @Override
        public void close() throws IOException {
            long Q10;
            ArrayList arrayList;
            b.a aVar;
            synchronized (h.this) {
                try {
                    this.f16343e = true;
                    Q10 = this.f16341c.Q();
                    this.f16341c.c();
                    if (h.this.f16325e.isEmpty() || h.this.f16326f == null) {
                        arrayList = null;
                        aVar = null;
                    } else {
                        arrayList = new ArrayList(h.this.f16325e);
                        h.this.f16325e.clear();
                        aVar = h.this.f16326f;
                    }
                    h.this.notifyAll();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (Q10 > 0) {
                b(Q10);
            }
            h.this.d();
            if (aVar != null) {
                Iterator<E> it = arrayList.iterator();
                while (it.hasNext()) {
                    aVar.a((u) it.next());
                }
            }
        }
    }

    public class c extends C3087a {
        public c() {
        }

        @Override
        public IOException q(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException(FetchErrorStrings.CONNECTION_TIMEOUT);
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override
        public void v() {
            h.this.h(Ng.a.CANCEL);
        }

        public void w() throws IOException {
            if (p()) {
                throw q(null);
            }
        }
    }

    public h(int i10, f fVar, boolean z10, boolean z11, @Nullable u uVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f16325e = arrayDeque;
        this.f16330j = new c();
        this.f16331k = new c();
        this.f16332l = null;
        if (fVar == null) {
            throw new NullPointerException("connection == null");
        }
        this.f16323c = i10;
        this.f16324d = fVar;
        this.f16322b = fVar.f16262p.e();
        b bVar = new b(fVar.f16261o.e());
        this.f16328h = bVar;
        a aVar = new a();
        this.f16329i = aVar;
        bVar.f16344f = z11;
        aVar.f16337d = z10;
        if (uVar != null) {
            arrayDeque.add(uVar);
        }
        if (n() && uVar != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!n() && uVar == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    public void c(long j10) {
        this.f16322b += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public void d() throws IOException {
        boolean z10;
        boolean o10;
        synchronized (this) {
            try {
                b bVar = this.f16328h;
                if (!bVar.f16344f && bVar.f16343e) {
                    a aVar = this.f16329i;
                    if (!aVar.f16337d) {
                        if (aVar.f16336c) {
                        }
                    }
                    z10 = true;
                    o10 = o();
                }
                z10 = false;
                o10 = o();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            f(Ng.a.CANCEL);
        } else {
            if (o10) {
                return;
            }
            this.f16324d.w(this.f16323c);
        }
    }

    public void e() throws IOException {
        a aVar = this.f16329i;
        if (aVar.f16336c) {
            throw new IOException("stream closed");
        }
        if (aVar.f16337d) {
            throw new IOException("stream finished");
        }
        if (this.f16332l != null) {
            throw new StreamResetException(this.f16332l);
        }
    }

    public void f(Ng.a aVar) throws IOException {
        if (g(aVar)) {
            this.f16324d.Q(this.f16323c, aVar);
        }
    }

    public final boolean g(Ng.a aVar) {
        synchronized (this) {
            try {
                if (this.f16332l != null) {
                    return false;
                }
                if (this.f16328h.f16344f && this.f16329i.f16337d) {
                    return false;
                }
                this.f16332l = aVar;
                notifyAll();
                this.f16324d.w(this.f16323c);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void h(Ng.a aVar) {
        if (g(aVar)) {
            this.f16324d.R(this.f16323c, aVar);
        }
    }

    public f i() {
        return this.f16324d;
    }

    public synchronized Ng.a j() {
        return this.f16332l;
    }

    public int k() {
        return this.f16323c;
    }

    public x l() {
        synchronized (this) {
            try {
                if (!this.f16327g && !n()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f16329i;
    }

    public y m() {
        return this.f16328h;
    }

    public boolean n() {
        return this.f16324d.f16248b == ((this.f16323c & 1) == 1);
    }

    public synchronized boolean o() {
        try {
            if (this.f16332l != null) {
                return false;
            }
            b bVar = this.f16328h;
            if (!bVar.f16344f) {
                if (bVar.f16343e) {
                }
                return true;
            }
            a aVar = this.f16329i;
            if (aVar.f16337d || aVar.f16336c) {
                if (this.f16327g) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public z p() {
        return this.f16330j;
    }

    public void q(Tg.e eVar, int i10) throws IOException {
        this.f16328h.a(eVar, i10);
    }

    public void r() {
        boolean o10;
        synchronized (this) {
            this.f16328h.f16344f = true;
            o10 = o();
            notifyAll();
        }
        if (o10) {
            return;
        }
        this.f16324d.w(this.f16323c);
    }

    public void s(List<Ng.b> list) {
        boolean o10;
        synchronized (this) {
            this.f16327g = true;
            this.f16325e.add(Gg.c.I(list));
            o10 = o();
            notifyAll();
        }
        if (o10) {
            return;
        }
        this.f16324d.w(this.f16323c);
    }

    public synchronized void t(Ng.a aVar) {
        if (this.f16332l == null) {
            this.f16332l = aVar;
            notifyAll();
        }
    }

    public synchronized void u(b.a aVar) {
        this.f16326f = aVar;
        if (!this.f16325e.isEmpty() && aVar != null) {
            notifyAll();
        }
    }

    public synchronized u v() throws IOException {
        this.f16330j.m();
        while (this.f16325e.isEmpty() && this.f16332l == null) {
            try {
                w();
            } catch (Throwable th2) {
                this.f16330j.w();
                throw th2;
            }
        }
        this.f16330j.w();
        if (this.f16325e.isEmpty()) {
            throw new StreamResetException(this.f16332l);
        }
        return this.f16325e.removeFirst();
    }

    public void w() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public void x(List<Ng.b> list, boolean z10) throws IOException {
        boolean z11;
        boolean z12;
        boolean z13;
        if (list == null) {
            throw new NullPointerException("headers == null");
        }
        synchronized (this) {
            z11 = true;
            try {
                this.f16327g = true;
                if (z10) {
                    z12 = false;
                } else {
                    this.f16329i.f16337d = true;
                    z12 = true;
                }
                z13 = z12;
            } finally {
            }
        }
        if (!z12) {
            synchronized (this.f16324d) {
                if (this.f16324d.f16260n != 0) {
                    z11 = false;
                }
            }
            z12 = z11;
        }
        this.f16324d.N(this.f16323c, z13, list);
        if (z12) {
            this.f16324d.flush();
        }
    }

    public z y() {
        return this.f16331k;
    }
}
