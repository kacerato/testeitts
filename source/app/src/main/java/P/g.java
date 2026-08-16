package P;

import C.l;
import Y.m;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.k;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public class g {

    public final B.a f20586a;

    public final Handler f20587b;

    public final List<b> f20588c;

    public final k f20589d;

    public final F.e f20590e;

    public boolean f20591f;

    public boolean f20592g;

    public boolean f20593h;

    public com.bumptech.glide.j<Bitmap> f20594i;

    public a f20595j;

    public boolean f20596k;

    public a f20597l;

    public Bitmap f20598m;

    public l<Bitmap> f20599n;

    public a f20600o;

    @Nullable
    public d f20601p;

    public int f20602q;

    public int f20603r;

    public int f20604s;

    @VisibleForTesting
    public static class a extends V.e<Bitmap> {

        public final Handler f20605e;

        public final int f20606f;

        public final long f20607g;

        public Bitmap f20608h;

        public a(Handler handler, int i10, long j10) {
            this.f20605e = handler;
            this.f20606f = i10;
            this.f20607g = j10;
        }

        public Bitmap d() {
            return this.f20608h;
        }

        @Override
        public void h(@NonNull Bitmap bitmap, @Nullable W.f<? super Bitmap> fVar) {
            this.f20608h = bitmap;
            this.f20605e.sendMessageAtTime(this.f20605e.obtainMessage(1, this), this.f20607g);
        }

        @Override
        public void f(@Nullable Drawable drawable) {
            this.f20608h = null;
        }
    }

    public interface b {
        void a();
    }

    public class c implements Handler.Callback {

        public static final int f20609d = 1;

        public static final int f20610e = 2;

        public c() {
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                g.this.o((a) message.obj);
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            g.this.f20589d.w((a) message.obj);
            return false;
        }
    }

    @VisibleForTesting
    public interface d {
        void a();
    }

    public g(com.bumptech.glide.b bVar, B.a aVar, int i10, int i11, l<Bitmap> lVar, Bitmap bitmap) {
        this(bVar.g(), com.bumptech.glide.b.D(bVar.i()), aVar, null, k(com.bumptech.glide.b.D(bVar.i()), i10, i11), lVar, bitmap);
    }

    public static C.e g() {
        return new X.e(Double.valueOf(Math.random()));
    }

    public static com.bumptech.glide.j<Bitmap> k(k kVar, int i10, int i11) {
        return kVar.s().a(U.h.W0(com.bumptech.glide.load.engine.i.f59186b).P0(true).F0(true).u0(i10, i11));
    }

    public void a() {
        this.f20588c.clear();
        p();
        u();
        a aVar = this.f20595j;
        if (aVar != null) {
            this.f20589d.w(aVar);
            this.f20595j = null;
        }
        a aVar2 = this.f20597l;
        if (aVar2 != null) {
            this.f20589d.w(aVar2);
            this.f20597l = null;
        }
        a aVar3 = this.f20600o;
        if (aVar3 != null) {
            this.f20589d.w(aVar3);
            this.f20600o = null;
        }
        this.f20586a.clear();
        this.f20596k = true;
    }

    public ByteBuffer b() {
        return this.f20586a.getData().asReadOnlyBuffer();
    }

    public Bitmap c() {
        a aVar = this.f20595j;
        return aVar != null ? aVar.d() : this.f20598m;
    }

    public int d() {
        a aVar = this.f20595j;
        if (aVar != null) {
            return aVar.f20606f;
        }
        return -1;
    }

    public Bitmap e() {
        return this.f20598m;
    }

    public int f() {
        return this.f20586a.p();
    }

    public l<Bitmap> h() {
        return this.f20599n;
    }

    public int i() {
        return this.f20604s;
    }

    public int j() {
        return this.f20586a.s();
    }

    public int l() {
        return this.f20586a.n() + this.f20602q;
    }

    public int m() {
        return this.f20603r;
    }

    public final void n() {
        if (!this.f20591f || this.f20592g) {
            return;
        }
        if (this.f20593h) {
            Y.k.a(this.f20600o == null, "Pending target must be null when starting from the first frame");
            this.f20586a.k();
            this.f20593h = false;
        }
        a aVar = this.f20600o;
        if (aVar != null) {
            this.f20600o = null;
            o(aVar);
            return;
        }
        this.f20592g = true;
        long uptimeMillis = SystemClock.uptimeMillis() + this.f20586a.u();
        this.f20586a.g();
        this.f20597l = new a(this.f20587b, this.f20586a.l(), uptimeMillis);
        this.f20594i.a(U.h.n1(g())).e(this.f20586a).e1(this.f20597l);
    }

    @VisibleForTesting
    public void o(a aVar) {
        d dVar = this.f20601p;
        if (dVar != null) {
            dVar.a();
        }
        this.f20592g = false;
        if (this.f20596k) {
            this.f20587b.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.f20591f) {
            this.f20600o = aVar;
            return;
        }
        if (aVar.d() != null) {
            p();
            a aVar2 = this.f20595j;
            this.f20595j = aVar;
            for (int size = this.f20588c.size() - 1; size >= 0; size--) {
                this.f20588c.get(size).a();
            }
            if (aVar2 != null) {
                this.f20587b.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        n();
    }

    public final void p() {
        Bitmap bitmap = this.f20598m;
        if (bitmap != null) {
            this.f20590e.d(bitmap);
            this.f20598m = null;
        }
    }

    public void q(l<Bitmap> lVar, Bitmap bitmap) {
        this.f20599n = (l) Y.k.d(lVar);
        this.f20598m = (Bitmap) Y.k.d(bitmap);
        this.f20594i = this.f20594i.a(new U.h().I0(lVar));
        this.f20602q = m.h(bitmap);
        this.f20603r = bitmap.getWidth();
        this.f20604s = bitmap.getHeight();
    }

    public void r() {
        Y.k.a(!this.f20591f, "Can't restart a running animation");
        this.f20593h = true;
        a aVar = this.f20600o;
        if (aVar != null) {
            this.f20589d.w(aVar);
            this.f20600o = null;
        }
    }

    @VisibleForTesting
    public void s(@Nullable d dVar) {
        this.f20601p = dVar;
    }

    public final void t() {
        if (this.f20591f) {
            return;
        }
        this.f20591f = true;
        this.f20596k = false;
        n();
    }

    public final void u() {
        this.f20591f = false;
    }

    public void v(b bVar) {
        if (this.f20596k) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.f20588c.contains(bVar)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean isEmpty = this.f20588c.isEmpty();
        this.f20588c.add(bVar);
        if (isEmpty) {
            t();
        }
    }

    public void w(b bVar) {
        this.f20588c.remove(bVar);
        if (this.f20588c.isEmpty()) {
            u();
        }
    }

    public g(F.e eVar, k kVar, B.a aVar, Handler handler, com.bumptech.glide.j<Bitmap> jVar, l<Bitmap> lVar, Bitmap bitmap) {
        this.f20588c = new ArrayList();
        this.f20589d = kVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f20590e = eVar;
        this.f20587b = handler;
        this.f20594i = jVar;
        this.f20586a = aVar;
        q(lVar, bitmap);
    }
}
