package W0;

import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.NonNull;

public interface d extends IInterface {

    public static abstract class a extends h1.p implements d {
        public a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        @NonNull
        public static d k(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof d ? (d) queryLocalInterface : new r(iBinder);
        }
    }
}
