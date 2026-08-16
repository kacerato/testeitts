package com.itsmagic.engine.Utils.Network;

import K8.d;
import N7.c;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import androidx.annotation.NonNull;
import cd.C4174a;
import com.itsmagic.engine.Activities.App;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

public class NetworkChangeReceiver extends BroadcastReceiver {

    public static final AtomicBoolean f81536a = new AtomicBoolean(true);

    public static final AtomicBoolean f81537b = new AtomicBoolean(true);

    public static final AtomicBoolean f81538c = new AtomicBoolean();

    public static float f81539d = 0.0f;

    public class a implements Runnable {

        public class C1494a implements HostnameVerifier {
            public C1494a() {
            }

            @Override
            public boolean verify(String hostname, SSLSession session) {
                return "104.156.226.134".equals(hostname);
            }
        }

        /* JADX WARN: Not initialized variable reg: 3, insn: 0x0027: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:26:0x0027 */
        /* JADX WARN: Removed duplicated region for block: B:14:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            HttpURLConnection httpURLConnection;
            Throwable e10;
            HttpURLConnection httpURLConnection2;
            HttpURLConnection httpURLConnection3 = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(H8.a.a(H8.a.f8303f, "ping.php")).openConnection();
                    try {
                        if (httpURLConnection instanceof HttpsURLConnection) {
                            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new C1494a());
                        }
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setRequestMethod("POST");
                        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                        httpURLConnection.setRequestProperty("charset", "utf-8");
                        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
                        httpURLConnection.connect();
                        httpURLConnection.setReadTimeout(30000);
                        httpURLConnection.setConnectTimeout(30000);
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, StandardCharsets.UTF_8));
                        bufferedWriter.flush();
                        bufferedWriter.close();
                        outputStream.close();
                        if (httpURLConnection.getResponseCode() == 200) {
                            new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                        }
                        NetworkChangeReceiver.f81536a.set(true);
                    } catch (Error e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        NetworkChangeReceiver.f81536a.set(true);
                        NetworkChangeReceiver.f81538c.set(false);
                        if (httpURLConnection != null) {
                        }
                    } catch (Exception e12) {
                        e10 = e12;
                        e10.printStackTrace();
                        NetworkChangeReceiver.f81536a.set(true);
                        NetworkChangeReceiver.f81538c.set(false);
                        if (httpURLConnection != null) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection3 = httpURLConnection2;
                    NetworkChangeReceiver.f81538c.set(false);
                    if (httpURLConnection3 != null) {
                        httpURLConnection3.disconnect();
                    }
                    throw th;
                }
            } catch (Error e13) {
                e = e13;
                Throwable th3 = e;
                httpURLConnection = null;
                e10 = th3;
                e10.printStackTrace();
                NetworkChangeReceiver.f81536a.set(true);
                NetworkChangeReceiver.f81538c.set(false);
                if (httpURLConnection != null) {
                }
            } catch (Exception e14) {
                e = e14;
                Throwable th32 = e;
                httpURLConnection = null;
                e10 = th32;
                e10.printStackTrace();
                NetworkChangeReceiver.f81536a.set(true);
                NetworkChangeReceiver.f81538c.set(false);
                if (httpURLConnection != null) {
                }
            } catch (Throwable th4) {
                th = th4;
                NetworkChangeReceiver.f81538c.set(false);
                if (httpURLConnection3 != null) {
                }
                throw th;
            }
            NetworkChangeReceiver.f81538c.set(false);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        }
    }

    public class b implements Thread.UncaughtExceptionHandler {
        @Override
        public void uncaughtException(@NonNull Thread t10, @NonNull Throwable e10) {
        }
    }

    public static void a() {
        AtomicBoolean atomicBoolean = f81538c;
        if (atomicBoolean.get()) {
            return;
        }
        float e10 = f81539d + d.e();
        f81539d = e10;
        if (e10 >= 15.0f) {
            f81539d = 0.0f;
            atomicBoolean.set(true);
            Thread thread = new Thread(new a());
            thread.setUncaughtExceptionHandler(new b());
            thread.setPriority(1);
            thread.start();
        }
    }

    @Override
    public void onReceive(Context context, final Intent intent) {
        try {
            boolean booleanValue = C4174a.a(App.f69782c.a()).booleanValue();
            if (!booleanValue && ((WifiManager) c.t().getApplicationContext().getSystemService("wifi")).isWifiEnabled()) {
                booleanValue = true;
            }
            f81537b.set(booleanValue);
        } catch (Error e10) {
            e = e10;
            e.printStackTrace();
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
        }
    }
}
