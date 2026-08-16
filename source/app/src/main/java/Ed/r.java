package ed;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.AsyncTask;
import com.google.firebase.analytics.FirebaseAnalytics;
import ed.s;
import hd.C13443b;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import okhttp3.C;
import okhttp3.E;
import okhttp3.y;
import okhttp3.z;

public class r extends AsyncTask<C13443b, Void, String> {

    public final hd.d f85531a;

    public int f85532b;

    public String f85533c;

    public r(hd.d postAsyncResponse) {
        this.f85531a = postAsyncResponse;
    }

    public static boolean e(String str, SSLSession sSLSession) {
        return "104.156.226.134".equals(str);
    }

    public static void f(C13443b c13443b, long j10, long j11, double d10) {
        u8.d dVar = c13443b.f90493c;
        if (dVar != null) {
            dVar.onProgressChange((int) ((j10 / 1024) / 1024), 0);
        }
    }

    @Override
    public String doInBackground(C13443b... params) {
        i(params[0]);
        return this.f85533c;
    }

    public final void g(z zVar, C c10, CountDownLatch countDownLatch) {
        E execute;
        try {
            try {
                execute = zVar.a(c10).execute();
            } catch (Exception e10) {
                this.f85533c = "@error@" + e10.getMessage();
                e10.printStackTrace();
            }
            try {
                this.f85532b = execute.g();
                if (execute.o()) {
                    this.f85533c = execute.c().o();
                } else {
                    this.f85533c = "@error@HTTP-CODE:" + this.f85532b;
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
        if (this.f85531a != null) {
            if (result == null || result.contains("@no_ethernet@") || result.contains("@errorcheckingconnection@") || result.contains("@error@")) {
                this.f85531a.a(result);
                return;
            }
            try {
                if (FirebaseAnalytics.d.f67668H.equalsIgnoreCase(hd.c.g(hd.c.h(result), "status"))) {
                    this.f85531a.b(result);
                } else {
                    this.f85531a.a(result);
                }
            } catch (Exception unused) {
                this.f85531a.a(result);
            }
        }
    }

    public final void i(final C13443b parameters) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        Uri uri = parameters.f90491a;
        ContentResolver contentResolver = parameters.c().getContentResolver();
        final z d10 = new z.b().t(new HostnameVerifier() {
            @Override
            public final boolean verify(String str, SSLSession sSLSession) {
                boolean e10;
                e10 = r.e(str, sSLSession);
                return e10;
            }
        }).d();
        try {
            InputStream openInputStream = contentResolver.openInputStream(uri);
            try {
                long length = contentResolver.openAssetFileDescriptor(uri, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c).getLength();
                if (length < 0) {
                    this.f85533c = "@error@Unable to get content length";
                    countDownLatch.countDown();
                    if (openInputStream != null) {
                        openInputStream.close();
                        return;
                    }
                    return;
                }
                final C b10 = new C.a().q(parameters.f90492b).l(new y.a().g(y.f99488j).b("bill", ContentResolver.SCHEME_FILE, new s(parameters.c(), uri, "application/octet-stream", length, new s.a() {
                    @Override
                    public final void a(long j10, long j11, double d11) {
                        r.f(C13443b.this, j10, j11, d11);
                    }
                })).f()).b();
                new Thread(new Runnable() {
                    @Override
                    public final void run() {
                        r.this.g(d10, b10, countDownLatch);
                    }
                }).start();
                countDownLatch.await();
                if (openInputStream != null) {
                    openInputStream.close();
                }
            } finally {
            }
        } catch (Exception e10) {
            this.f85533c = "@error@" + e10.getMessage();
            e10.printStackTrace();
            countDownLatch.countDown();
        }
    }
}
