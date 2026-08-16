package G0;

import B0.C2318c;
import G0.AbstractC2564f;
import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

public final class E0 extends h1.v {

    public final AbstractC2564f f7286b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E0(AbstractC2564f abstractC2564f, Looper looper) {
        super(looper);
        this.f7286b = abstractC2564f;
    }

    public static final void a(Message message) {
        F0 f02 = (F0) message.obj;
        f02.b();
        f02.e();
    }

    public static final boolean b(Message message) {
        int i10 = message.what;
        return i10 == 2 || i10 == 1 || i10 == 7;
    }

    @Override
    public final void handleMessage(Message message) {
        AbstractC2564f.a aVar;
        AbstractC2564f.a aVar2;
        C2318c c2318c;
        C2318c c2318c2;
        boolean z10;
        if (this.f7286b.f7375F.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        int i10 = message.what;
        if ((i10 == 1 || i10 == 7 || ((i10 == 4 && !this.f7286b.A()) || message.what == 5)) && !this.f7286b.f()) {
            a(message);
            return;
        }
        int i11 = message.what;
        if (i11 == 4) {
            this.f7286b.f7372C = new C2318c(message.arg2);
            if (AbstractC2564f.q0(this.f7286b)) {
                AbstractC2564f abstractC2564f = this.f7286b;
                z10 = abstractC2564f.f7373D;
                if (!z10) {
                    abstractC2564f.r0(3, null);
                    return;
                }
            }
            AbstractC2564f abstractC2564f2 = this.f7286b;
            c2318c2 = abstractC2564f2.f7372C;
            C2318c c2318c3 = c2318c2 != null ? abstractC2564f2.f7372C : new C2318c(8);
            this.f7286b.f7391r.b(c2318c3);
            this.f7286b.U(c2318c3);
            return;
        }
        if (i11 == 5) {
            AbstractC2564f abstractC2564f3 = this.f7286b;
            c2318c = abstractC2564f3.f7372C;
            C2318c c2318c4 = c2318c != null ? abstractC2564f3.f7372C : new C2318c(8);
            this.f7286b.f7391r.b(c2318c4);
            this.f7286b.U(c2318c4);
            return;
        }
        if (i11 == 3) {
            Object obj = message.obj;
            C2318c c2318c5 = new C2318c(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            this.f7286b.f7391r.b(c2318c5);
            this.f7286b.U(c2318c5);
            return;
        }
        if (i11 == 6) {
            this.f7286b.r0(5, null);
            AbstractC2564f abstractC2564f4 = this.f7286b;
            aVar = abstractC2564f4.f7396w;
            if (aVar != null) {
                aVar2 = abstractC2564f4.f7396w;
                aVar2.k(message.arg2);
            }
            this.f7286b.V(message.arg2);
            AbstractC2564f.p0(this.f7286b, 5, 1, null);
            return;
        }
        if (i11 == 2 && !this.f7286b.isConnected()) {
            a(message);
            return;
        }
        if (b(message)) {
            ((F0) message.obj).c();
            return;
        }
        Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
    }
}
