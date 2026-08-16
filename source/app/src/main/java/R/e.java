package R;

import R.c;
import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.NonNull;

public final class e implements c {

    public static final String f22500g = "ConnectivityMonitor";

    public final Context f22501b;

    public final c.a f22502c;

    public boolean f22503d;

    public boolean f22504e;

    public final BroadcastReceiver f22505f = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override
        public void onReceive(@NonNull Context context, Intent intent) {
            e eVar = e.this;
            boolean z10 = eVar.f22503d;
            eVar.f22503d = eVar.d(context);
            if (z10 != e.this.f22503d) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + e.this.f22503d);
                }
                e eVar2 = e.this;
                eVar2.f22502c.a(eVar2.f22503d);
            }
        }
    }

    public e(@NonNull Context context, @NonNull c.a aVar) {
        this.f22501b = context.getApplicationContext();
        this.f22502c = aVar;
    }

    @Override
    public void b() {
    }

    @Override
    public void c() {
        j();
    }

    @SuppressLint({"MissingPermission"})
    public boolean d(@NonNull Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) Y.k.d((ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE))).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e10) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e10);
            }
            return true;
        }
    }

    public final void e() {
        if (this.f22504e) {
            return;
        }
        this.f22503d = d(this.f22501b);
        try {
            this.f22501b.registerReceiver(this.f22505f, new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION));
            this.f22504e = true;
        } catch (SecurityException e10) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register", e10);
            }
        }
    }

    public final void j() {
        if (this.f22504e) {
            this.f22501b.unregisterReceiver(this.f22505f);
            this.f22504e = false;
        }
    }

    @Override
    public void onStart() {
        e();
    }
}
