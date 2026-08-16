package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

@C0.a
public class C11904b {

    @C0.a
    public interface InterfaceC0952b<R> {
        @C0.a
        void a(@NonNull R r10);

        @C0.a
        void b(@NonNull Status status);
    }

    @C0.a
    public static abstract class a<R extends com.google.android.gms.common.api.u, A extends C11894a.b> extends BasePendingResult<R> implements InterfaceC0952b<R> {

        @C0.a
        public final C11894a.c<A> f61125r;

        @Nullable
        @C0.a
        public final C11894a<?> f61126s;

        @C0.a
        @Deprecated
        public a(@NonNull C11894a.c<A> cVar, @NonNull AbstractC11908l abstractC11908l) {
            super((AbstractC11908l) G0.A.s(abstractC11908l, "GoogleApiClient must not be null"));
            this.f61125r = (C11894a.c) G0.A.r(cVar);
            this.f61126s = null;
        }

        @C0.a
        public final void A(@NonNull A a10) throws DeadObjectException {
            try {
                w(a10);
            } catch (DeadObjectException e10) {
                B(e10);
                throw e10;
            } catch (RemoteException e11) {
                B(e11);
            }
        }

        @C0.a
        public final void B(@NonNull RemoteException remoteException) {
            b(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @C0.a
        public void a(@NonNull Object obj) {
            super.o((com.google.android.gms.common.api.u) obj);
        }

        @Override
        @C0.a
        public final void b(@NonNull Status status) {
            G0.A.b(!status.x0(), "Failed result must not be success");
            R k10 = k(status);
            o(k10);
            z(k10);
        }

        @C0.a
        public abstract void w(@NonNull A a10) throws RemoteException;

        @Nullable
        @C0.a
        public final C11894a<?> x() {
            return this.f61126s;
        }

        @NonNull
        @C0.a
        public final C11894a.c<A> y() {
            return this.f61125r;
        }

        @C0.a
        public void z(@NonNull R r10) {
        }

        @C0.a
        public a(@NonNull C11894a<?> c11894a, @NonNull AbstractC11908l abstractC11908l) {
            super((AbstractC11908l) G0.A.s(abstractC11908l, "GoogleApiClient must not be null"));
            G0.A.s(c11894a, "Api must not be null");
            this.f61125r = c11894a.b();
            this.f61126s = c11894a;
        }

        @C0.a
        @VisibleForTesting
        public a(@NonNull BasePendingResult.a<R> aVar) {
            super(aVar);
            this.f61125r = new C11894a.c<>();
            this.f61126s = null;
        }
    }
}
