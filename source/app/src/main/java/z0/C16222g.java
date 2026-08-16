package z0;

import D0.InterfaceC2460o;
import android.content.Context;
import android.util.Log;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.common.api.AbstractC11908l;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class C16222g extends AsyncTaskLoader implements InterfaceC2460o {

    public final Semaphore f130520a;

    public final Set f130521b;

    public C16222g(Context context, Set set) {
        super(context);
        this.f130520a = new Semaphore(0);
        this.f130521b = set;
    }

    @Override
    public final void a() {
        this.f130520a.release();
    }

    @Override
    public final Object loadInBackground() {
        Iterator it = this.f130521b.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (((AbstractC11908l) it.next()).y(this)) {
                i10++;
            }
        }
        try {
            this.f130520a.tryAcquire(i10, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e10) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e10);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override
    public final void onStartLoading() {
        this.f130520a.drainPermits();
        forceLoad();
    }
}
