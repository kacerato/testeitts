package com.google.android.gms.dynamic;

import B0.C2326k;
import C0.a;
import G0.A;
import android.content.Context;
import android.os.IBinder;
import androidx.annotation.NonNull;

@a
public abstract class RemoteCreator<T> {

    public final String f61431a;

    public Object f61432b;

    @a
    public static class RemoteCreatorException extends Exception {
        @a
        public RemoteCreatorException(@NonNull String str) {
            super(str);
        }

        @a
        public RemoteCreatorException(@NonNull String str, @NonNull Throwable th2) {
            super(str, th2);
        }
    }

    @a
    public RemoteCreator(@NonNull String str) {
        this.f61431a = str;
    }

    @NonNull
    @a
    public abstract T a(@NonNull IBinder iBinder);

    @NonNull
    @a
    public final T b(@NonNull Context context) throws RemoteCreatorException {
        if (this.f61432b == null) {
            A.r(context);
            Context i10 = C2326k.i(context);
            if (i10 == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.f61432b = a((IBinder) i10.getClassLoader().loadClass(this.f61431a).newInstance());
            } catch (ClassNotFoundException e10) {
                throw new RemoteCreatorException("Could not load creator class.", e10);
            } catch (IllegalAccessException e11) {
                throw new RemoteCreatorException("Could not access creator.", e11);
            } catch (InstantiationException e12) {
                throw new RemoteCreatorException("Could not instantiate creator.", e12);
            }
        }
        return (T) this.f61432b;
    }
}
