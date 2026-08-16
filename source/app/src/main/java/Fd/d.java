package fd;

import android.content.ContentResolver;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import fd.b;
import fd.e;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.C;
import okhttp3.E;
import okhttp3.InterfaceC14585e;
import okhttp3.InterfaceC14586f;
import okhttp3.y;
import okhttp3.z;

public class d {

    public final hd.d f86218a;

    public String f86219b;

    public class a implements e.a {

        public int f86220a = -1;

        public final b.a f86221b;

        public a(final b.a val$listener) {
            this.f86221b = val$listener;
        }

        @Override
        public void a(long count, long max, double percent) {
            int i10 = (int) percent;
            b.a aVar = this.f86221b;
            if (aVar == null || i10 == this.f86220a) {
                return;
            }
            this.f86220a = i10;
            aVar.a(count, max, percent);
        }
    }

    public class b implements InterfaceC14586f {
        public b() {
        }

        @Override
        public void a(InterfaceC14585e call, IOException e10) {
            d.this.f86219b = "@error@upload failed";
            e10.printStackTrace();
            d.this.g(false);
        }

        @Override
        public void b(InterfaceC14585e call, E response) throws IOException {
            d.this.f86219b = response.c().o();
            d.this.g(true);
        }
    }

    public d(hd.d postAsyncResponse) {
        this.f86218a = postAsyncResponse;
    }

    public void d(fd.b parameters) {
        h(parameters);
    }

    public final void e(boolean z10) {
        f(z10 ? this.f86219b : "");
    }

    public void f(String result) {
        if (this.f86218a == null) {
            System.out.println("upload failed, missing delegate");
            return;
        }
        if (result == null || result.contains("@no_ethernet@") || result.contains("@errorcheckingconnection@") || result.contains("@error@")) {
            this.f86218a.a(result);
            return;
        }
        try {
            if (FirebaseAnalytics.d.f67668H.equalsIgnoreCase(hd.c.g(hd.c.h(result), "status"))) {
                this.f86218a.b(result);
            } else {
                this.f86218a.a(result);
            }
        } catch (Exception unused) {
            this.f86218a.a(result);
        }
    }

    public final void g(final boolean responseReceived) {
        N7.c.j0(new Runnable() {
            @Override
            public final void run() {
                d.this.e(responseReceived);
            }
        });
    }

    public final void h(fd.b parameters) {
        File c10 = parameters.c();
        String h10 = parameters.h();
        HashMap<String, String> f10 = parameters.f();
        b.a e10 = parameters.e();
        z.b bVar = new z.b();
        long a10 = parameters.a();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        z d10 = bVar.i(a10, timeUnit).C(parameters.g(), timeUnit).d();
        y.a g10 = new y.a().g(y.f99488j);
        for (Map.Entry<String, String> entry : f10.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null && value != null) {
                String trim = key.replaceAll("[\\p{Cntrl}&&[^\t]]", "").trim();
                String trim2 = value.replaceAll("[\\p{Cntrl}&&[^\t]]", "").trim();
                try {
                    g10.a(trim, trim2);
                } catch (Exception e11) {
                    Log.e("UploadForm", "Invalid form field: " + trim + "=" + trim2, e11);
                }
            }
        }
        try {
            g10.b(ContentResolver.SCHEME_FILE, c10.getName().replaceAll("[\\p{Cntrl}&&[^\t]]", "").trim(), new e(c10, "application/octet-stream", new a(e10)));
        } catch (Exception e12) {
            Log.e("UploadForm", "Invalid form field: file=" + c10.getName(), e12);
        }
        d10.a(new C.a().q(h10).l(g10.f()).b()).V4(new b());
    }
}
