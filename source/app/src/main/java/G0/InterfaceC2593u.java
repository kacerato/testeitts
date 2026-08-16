package G0;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface InterfaceC2593u extends IInterface {

    public static abstract class a extends Binder implements InterfaceC2593u {
        public a() {
            attachInterface(this, "com.google.android.gms.common.internal.IGmsServiceBroker");
        }

        @Override
        @NonNull
        @C0.a
        public IBinder asBinder() {
            return this;
        }

        @Override
        public final boolean onTransact(int i10, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i11) throws RemoteException {
            InterfaceC2591t c2592t0;
            if (i10 <= 0 || i10 > 16777215) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c2592t0 = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                c2592t0 = queryLocalInterface instanceof InterfaceC2591t ? (InterfaceC2591t) queryLocalInterface : new C2592t0(readStrongBinder);
            }
            if (i10 == 46) {
                T0(c2592t0, parcel.readInt() != 0 ? C2578m.CREATOR.createFromParcel(parcel) : null);
                A.r(parcel2);
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 47) {
                if (parcel.readInt() != 0) {
                    C0.CREATOR.createFromParcel(parcel);
                }
                throw new UnsupportedOperationException();
            }
            parcel.readInt();
            if (i10 != 4) {
                parcel.readString();
                if (i10 != 1) {
                    if (i10 != 2 && i10 != 23 && i10 != 25 && i10 != 27) {
                        if (i10 != 30) {
                            if (i10 == 34) {
                                parcel.readString();
                            } else if (i10 != 41 && i10 != 43 && i10 != 37 && i10 != 38) {
                                switch (i10) {
                                    case 9:
                                        parcel.readString();
                                        parcel.createStringArray();
                                        parcel.readString();
                                        parcel.readStrongBinder();
                                        parcel.readString();
                                        if (parcel.readInt() != 0) {
                                            Bundle.CREATOR.createFromParcel(parcel);
                                            break;
                                        }
                                        break;
                                    case 10:
                                        parcel.readString();
                                        parcel.createStringArray();
                                        break;
                                    case 19:
                                        parcel.readStrongBinder();
                                        if (parcel.readInt() != 0) {
                                            Bundle.CREATOR.createFromParcel(parcel);
                                            break;
                                        }
                                        break;
                                }
                            }
                        }
                        parcel.createStringArray();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                    }
                    if (parcel.readInt() != 0) {
                        Bundle.CREATOR.createFromParcel(parcel);
                    }
                } else {
                    parcel.readString();
                    parcel.createStringArray();
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                        Bundle.CREATOR.createFromParcel(parcel);
                    }
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    @C0.a
    void T0(@NonNull InterfaceC2591t interfaceC2591t, @Nullable C2578m c2578m) throws RemoteException;
}
