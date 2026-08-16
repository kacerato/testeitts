package R;

import R.c;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;

public class f implements d {

    public static final String f22507a = "ConnectivityMonitor";

    public static final String f22508b = "android.permission.ACCESS_NETWORK_STATE";

    @Override
    @NonNull
    public c a(@NonNull Context context, @NonNull c.a aVar) {
        boolean z10 = ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z10 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        return z10 ? new e(context, aVar) : new j();
    }
}
