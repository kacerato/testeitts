package D0;

import B0.C2318c;
import B0.C2323h;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.api.AbstractC11908l;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public final class P0 extends U0 {

    public final SparseArray f4593g;

    public P0(InterfaceC2448i interfaceC2448i) {
        super(interfaceC2448i, C2323h.x());
        this.f4593g = new SparseArray();
        this.f4660b.c("AutoManageHelper", this);
    }

    public static P0 u(C2444g c2444g) {
        InterfaceC2448i c10 = C2446h.c(c2444g);
        P0 p02 = (P0) c10.a("AutoManageHelper", P0.class);
        return p02 != null ? p02 : new P0(c10);
    }

    @Override
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i10 = 0; i10 < this.f4593g.size(); i10++) {
            O0 x10 = x(i10);
            if (x10 != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(x10.f4588e);
                printWriter.println(b3.s.f32937c);
                x10.f4589f.j(String.valueOf(str).concat(GlideException.a.f59088e), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override
    public final void k() {
        super.k();
        SparseArray sparseArray = this.f4593g;
        Log.d("AutoManageHelper", "onStart " + this.f4612c + " " + String.valueOf(sparseArray));
        if (this.f4613d.get() == null) {
            for (int i10 = 0; i10 < this.f4593g.size(); i10++) {
                O0 x10 = x(i10);
                if (x10 != null) {
                    x10.f4589f.g();
                }
            }
        }
    }

    @Override
    public final void l() {
        super.l();
        for (int i10 = 0; i10 < this.f4593g.size(); i10++) {
            O0 x10 = x(i10);
            if (x10 != null) {
                x10.f4589f.i();
            }
        }
    }

    @Override
    public final void n(C2318c c2318c, int i10) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i10 < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        O0 o02 = (O0) this.f4593g.get(i10);
        if (o02 != null) {
            w(i10);
            AbstractC11908l.c cVar = o02.f4590g;
            if (cVar != null) {
                cVar.t(c2318c);
            }
        }
    }

    @Override
    public final void o() {
        for (int i10 = 0; i10 < this.f4593g.size(); i10++) {
            O0 x10 = x(i10);
            if (x10 != null) {
                x10.f4589f.g();
            }
        }
    }

    public final void v(int i10, AbstractC11908l abstractC11908l, @Nullable AbstractC11908l.c cVar) {
        G0.A.s(abstractC11908l, "GoogleApiClient instance cannot be null");
        G0.A.y(this.f4593g.indexOfKey(i10) < 0, "Already managing a GoogleApiClient with id " + i10);
        R0 r02 = (R0) this.f4613d.get();
        Log.d("AutoManageHelper", "starting AutoManage for client " + i10 + " " + this.f4612c + " " + String.valueOf(r02));
        O0 o02 = new O0(this, i10, abstractC11908l, cVar);
        abstractC11908l.C(o02);
        this.f4593g.put(i10, o02);
        if (this.f4612c && r02 == null) {
            Log.d("AutoManageHelper", "connecting ".concat(abstractC11908l.toString()));
            abstractC11908l.g();
        }
    }

    public final void w(int i10) {
        O0 o02 = (O0) this.f4593g.get(i10);
        this.f4593g.remove(i10);
        if (o02 != null) {
            o02.f4589f.G(o02);
            o02.f4589f.i();
        }
    }

    @Nullable
    public final O0 x(int i10) {
        if (this.f4593g.size() <= i10) {
            return null;
        }
        SparseArray sparseArray = this.f4593g;
        return (O0) sparseArray.get(sparseArray.keyAt(i10));
    }
}
