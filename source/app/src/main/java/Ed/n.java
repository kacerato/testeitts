package ed;

import android.os.AsyncTask;
import com.google.firebase.analytics.FirebaseAnalytics;
import fd.e;
import hd.C13442a;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import okhttp3.C;
import okhttp3.E;
import okhttp3.y;
import okhttp3.z;

public class n extends AsyncTask<C13442a, Void, String> {

    public final hd.d f85523a;

    public int f85524b;

    public String f85525c;

    public n(hd.d postAsyncResponse) {
        this.f85523a = postAsyncResponse;
    }

    public static boolean e(String str, SSLSession sSLSession) {
        return "104.156.226.134".equals(str);
    }

    public static void f(C13442a c13442a, long j10, long j11, double d10) {
        u8.d dVar = c13442a.f90490c;
        if (dVar != null) {
            dVar.onProgressChange((int) ((j10 / 1024) / 1024), 0);
        }
    }

    @Override
    public String doInBackground(C13442a... params) {
        i(params[0]);
        return this.f85525c;
    }

    public final void g(z zVar, C c10, CountDownLatch countDownLatch) {
        E execute;
        try {
            try {
                execute = zVar.a(c10).execute();
            } catch (Exception e10) {
                this.f85525c = "@error@" + e10.getMessage();
                e10.printStackTrace();
            }
            try {
                this.f85524b = execute.g();
                if (execute.o()) {
                    this.f85525c = execute.c().o();
                } else {
                    this.f85525c = "@error@HTTP-CODE:" + this.f85524b;
                }
                execute.close();
            } catch (Throwable th2) {
                if (execute != null) {
                    try {
                        execute.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } finally {
            countDownLatch.countDown();
        }
    }

    @Override
    public void onPostExecute(String result) {
        if (this.f85523a != null) {
            if (result == null || result.contains("@no_ethernet@") || result.contains("@errorcheckingconnection@") || result.contains("@error@")) {
                this.f85523a.a(result);
                return;
            }
            try {
                if (FirebaseAnalytics.d.f67668H.equalsIgnoreCase(hd.c.g(hd.c.h(result), "status"))) {
                    this.f85523a.b(result);
                } else {
                    this.f85523a.a(result);
                }
            } catch (Exception unused) {
                this.f85523a.a(result);
            }
        }
    }

    public final void i(final C13442a parameters) {
        File file = new File(parameters.f90488a);
        if (!file.exists() || !file.isFile()) {
            this.f85525c = "@error@File not found";
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final z d10 = new z.b().t(new HostnameVerifier() {
            @Override
            public final boolean verify(String str, SSLSession sSLSession) {
                boolean e10;
                e10 = n.e(str, sSLSession);
                return e10;
            }
        }).d();
        final C b10 = new C.a().q(parameters.f90489b).l(new y.a().g(y.f99488j).b("bill", file.getName(), new fd.e(file, "application/octet-stream", new e.a() {
            @Override
            public final void a(long j10, long j11, double d11) {
                n.f(C13442a.this, j10, j11, d11);
            }
        })).f()).b();
        new Thread(new Runnable() {
            @Override
            public final void run() {
                n.this.g(d10, b10, countDownLatch);
            }
        }).start();
        try {
            countDownLatch.await();
        } catch (InterruptedException e10) {
            this.f85525c = "@error@Interrupted";
            e10.printStackTrace();
        }
    }
}
