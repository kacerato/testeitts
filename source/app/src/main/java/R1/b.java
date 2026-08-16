package r1;

import B0.C2324i;
import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import r1.C15144a;

public final class b extends AsyncTask {

    public final Context f108546a;

    public final C15144a.InterfaceC1973a f108547b;

    public b(Context context, C15144a.InterfaceC1973a interfaceC1973a) {
        this.f108546a = context;
        this.f108547b = interfaceC1973a;
    }

    @Override
    public final Object doInBackground(Object[] objArr) {
        try {
            C15144a.a(this.f108546a);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e10) {
            return Integer.valueOf(e10.errorCode);
        } catch (GooglePlayServicesRepairableException e11) {
            return Integer.valueOf(e11.getConnectionStatusCode());
        }
    }

    @Override
    public final void onPostExecute(Object obj) {
        C2324i c2324i;
        Integer num = (Integer) obj;
        if (num.intValue() == 0) {
            this.f108547b.b();
            return;
        }
        Context context = this.f108546a;
        c2324i = C15144a.f108542b;
        this.f108547b.a(num.intValue(), c2324i.e(context, num.intValue(), "pi"));
    }
}
