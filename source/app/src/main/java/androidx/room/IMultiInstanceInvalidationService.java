package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.IMultiInstanceInvalidationCallback;

public interface IMultiInstanceInvalidationService extends IInterface {

    public static class Default implements IMultiInstanceInvalidationService {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void broadcastInvalidation(int clientId, String[] tables) throws RemoteException {
        }

        @Override
        public int registerCallback(IMultiInstanceInvalidationCallback callback, String name) throws RemoteException {
            return 0;
        }

        @Override
        public void unregisterCallback(IMultiInstanceInvalidationCallback callback, int clientId) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IMultiInstanceInvalidationService {
        private static final String DESCRIPTOR = "androidx.room.IMultiInstanceInvalidationService";
        static final int TRANSACTION_broadcastInvalidation = 3;
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_unregisterCallback = 2;

        public static class Proxy implements IMultiInstanceInvalidationService {
            public static IMultiInstanceInvalidationService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public void broadcastInvalidation(int clientId, String[] tables) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(clientId);
                    obtain.writeStringArray(tables);
                    if (this.mRemote.transact(3, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().broadcastInvalidation(clientId, tables);
                } finally {
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override
            public int registerCallback(IMultiInstanceInvalidationCallback callback, String name) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    obtain.writeString(name);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        int registerCallback = Stub.getDefaultImpl().registerCallback(callback, name);
                        obtain2.recycle();
                        obtain.recycle();
                        return registerCallback;
                    }
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    obtain2.recycle();
                    obtain.recycle();
                    return readInt;
                } catch (Throwable th2) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th2;
                }
            }

            @Override
            public void unregisterCallback(IMultiInstanceInvalidationCallback callback, int clientId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    obtain.writeInt(clientId);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                        obtain2.recycle();
                        obtain.recycle();
                    } else {
                        Stub.getDefaultImpl().unregisterCallback(callback, clientId);
                        obtain2.recycle();
                        obtain.recycle();
                    }
                } catch (Throwable th2) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th2;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMultiInstanceInvalidationService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IMultiInstanceInvalidationService)) ? new Proxy(obj) : (IMultiInstanceInvalidationService) queryLocalInterface;
        }

        public static IMultiInstanceInvalidationService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMultiInstanceInvalidationService impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                int registerCallback = registerCallback(IMultiInstanceInvalidationCallback.Stub.asInterface(data.readStrongBinder()), data.readString());
                reply.writeNoException();
                reply.writeInt(registerCallback);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                unregisterCallback(IMultiInstanceInvalidationCallback.Stub.asInterface(data.readStrongBinder()), data.readInt());
                reply.writeNoException();
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                broadcastInvalidation(data.readInt(), data.createStringArray());
                return true;
            }
            if (code != 1598968902) {
                return super.onTransact(code, data, reply, flags);
            }
            reply.writeString(DESCRIPTOR);
            return true;
        }
    }

    void broadcastInvalidation(int clientId, String[] tables) throws RemoteException;

    int registerCallback(IMultiInstanceInvalidationCallback callback, String name) throws RemoteException;

    void unregisterCallback(IMultiInstanceInvalidationCallback callback, int clientId) throws RemoteException;
}
