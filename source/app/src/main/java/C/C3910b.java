package c;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import c.InterfaceC3909a;

public class C3910b implements Parcelable {
    public static final Parcelable.Creator<C3910b> CREATOR = new a();

    public final boolean f33536b;

    public final Handler f33537c;

    public InterfaceC3909a f33538d;

    public class a implements Parcelable.Creator<C3910b> {
        @Override
        public C3910b createFromParcel(Parcel parcel) {
            return new C3910b(parcel);
        }

        @Override
        public C3910b[] newArray(int i10) {
            return new C3910b[i10];
        }
    }

    public class BinderC0895b extends InterfaceC3909a.b {
        public BinderC0895b() {
        }

        @Override
        public void Q(int i10, Bundle bundle) {
            C3910b c3910b = C3910b.this;
            Handler handler = c3910b.f33537c;
            if (handler != null) {
                handler.post(new c(i10, bundle));
            } else {
                c3910b.b(i10, bundle);
            }
        }
    }

    public class c implements Runnable {

        public final int f33540b;

        public final Bundle f33541c;

        public c(int i10, Bundle bundle) {
            this.f33540b = i10;
            this.f33541c = bundle;
        }

        @Override
        public void run() {
            C3910b.this.b(this.f33540b, this.f33541c);
        }
    }

    public C3910b(Handler handler) {
        this.f33536b = true;
        this.f33537c = handler;
    }

    public void b(int i10, Bundle bundle) {
    }

    public void c(int i10, Bundle bundle) {
        if (this.f33536b) {
            Handler handler = this.f33537c;
            if (handler != null) {
                handler.post(new c(i10, bundle));
                return;
            } else {
                b(i10, bundle);
                return;
            }
        }
        InterfaceC3909a interfaceC3909a = this.f33538d;
        if (interfaceC3909a != null) {
            try {
                interfaceC3909a.Q(i10, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            try {
                if (this.f33538d == null) {
                    this.f33538d = new BinderC0895b();
                }
                parcel.writeStrongBinder(this.f33538d.asBinder());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public C3910b(Parcel parcel) {
        this.f33536b = false;
        this.f33537c = null;
        this.f33538d = InterfaceC3909a.b.h(parcel.readStrongBinder());
    }
}
