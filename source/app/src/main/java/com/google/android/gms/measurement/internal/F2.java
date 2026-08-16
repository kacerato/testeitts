package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.C12140o0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@WorkerThread
public final class F2 implements Runnable {

    public final URL f62633b;

    public final byte[] f62634c;

    public final D2 f62635d;

    public final String f62636e;

    public final Map f62637f;

    public final G2 f62638g;

    public F2(G2 g22, String str, URL url, byte[] bArr, Map map, D2 d22) {
        Objects.requireNonNull(g22);
        this.f62638g = g22;
        G0.A.l(str);
        G0.A.r(url);
        G0.A.r(d22);
        this.f62633b = url;
        this.f62634c = bArr;
        this.f62635d = d22;
        this.f62636e = str;
        this.f62637f = map;
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00fd: MOVE (r8 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:80:0x00fc */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0100: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:78:0x00ff */
    /* JADX WARN: Removed duplicated region for block: B:24:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0161 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        int i10;
        HttpURLConnection httpURLConnection;
        Map map;
        IOException iOException;
        int i11;
        Map map2;
        E2 e22;
        C12306h3 c12306h3;
        URLConnection openConnection;
        Map map3;
        Map map4;
        InputStream inputStream;
        G2 g22 = this.f62638g;
        g22.g();
        OutputStream outputStream = null;
        try {
            URL url = this.f62633b;
            int i12 = C12140o0.f62375a;
            openConnection = url.openConnection();
        } catch (IOException e10) {
            iOException = e10;
            i11 = 0;
            httpURLConnection = null;
            map2 = null;
        } catch (Throwable th2) {
            th = th2;
            i10 = 0;
            httpURLConnection = null;
            map = null;
        }
        if (!(openConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain HTTP connection");
        }
        httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setDefaultUseCaches(false);
        C12370p3 c12370p3 = g22.f62917a;
        c12370p3.w();
        httpURLConnection.setConnectTimeout(60000);
        c12370p3.w();
        httpURLConnection.setReadTimeout(61000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setDoInput(true);
        try {
            Map map5 = this.f62637f;
            if (map5 != null) {
                for (Map.Entry entry : map5.entrySet()) {
                    httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            byte[] bArr = this.f62634c;
            if (bArr != null) {
                byte[] V10 = g22.f62657b.K0().V(bArr);
                C12448z2 w10 = c12370p3.a().w();
                int length = V10.length;
                w10.b("Uploading data. size", Integer.valueOf(length));
                httpURLConnection.setDoOutput(true);
                httpURLConnection.addRequestProperty("Content-Encoding", g3.c.f88116s);
                httpURLConnection.setFixedLengthStreamingMode(length);
                httpURLConnection.connect();
                OutputStream outputStream2 = httpURLConnection.getOutputStream();
                try {
                    outputStream2.write(V10);
                    outputStream2.close();
                } catch (IOException e11) {
                    iOException = e11;
                    i11 = 0;
                    map2 = null;
                    outputStream = outputStream2;
                    if (outputStream != null) {
                    }
                    if (httpURLConnection != null) {
                    }
                    G2 g23 = this.f62638g;
                    String str = this.f62636e;
                    D2 d22 = this.f62635d;
                    c12306h3 = g23.f62917a.b();
                    e22 = new E2(str, d22, i11, iOException, null, map2, null);
                    c12306h3.t(e22);
                } catch (Throwable th3) {
                    th = th3;
                    map = null;
                    outputStream = outputStream2;
                    i10 = 0;
                    if (outputStream != null) {
                    }
                    if (httpURLConnection != null) {
                    }
                    this.f62638g.f62917a.b().t(new E2(this.f62636e, this.f62635d, i10, null, null, map, null));
                    throw th;
                }
            }
            int responseCode = httpURLConnection.getResponseCode();
            try {
                try {
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        inputStream = httpURLConnection.getInputStream();
                        try {
                            byte[] bArr2 = new byte[1024];
                            while (true) {
                                int read = inputStream.read(bArr2);
                                if (read <= 0) {
                                    break;
                                } else {
                                    byteArrayOutputStream.write(bArr2, 0, read);
                                }
                            }
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            inputStream.close();
                            httpURLConnection.disconnect();
                            G2 g24 = this.f62638g;
                            String str2 = this.f62636e;
                            D2 d23 = this.f62635d;
                            c12306h3 = g24.f62917a.b();
                            e22 = new E2(str2, d23, responseCode, null, byteArray, headerFields, null);
                        } catch (Throwable th4) {
                            th = th4;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        inputStream = null;
                    }
                } catch (IOException e12) {
                    e = e12;
                    map2 = null;
                    i11 = responseCode;
                    iOException = e;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e13) {
                            this.f62638g.f62917a.a().o().c("Error closing HTTP compressed POST connection output stream. appId", B2.x(this.f62636e), e13);
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    G2 g232 = this.f62638g;
                    String str3 = this.f62636e;
                    D2 d222 = this.f62635d;
                    c12306h3 = g232.f62917a.b();
                    e22 = new E2(str3, d222, i11, iOException, null, map2, null);
                    c12306h3.t(e22);
                } catch (Throwable th6) {
                    th = th6;
                    i10 = responseCode;
                    map = null;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e14) {
                            this.f62638g.f62917a.a().o().c("Error closing HTTP compressed POST connection output stream. appId", B2.x(this.f62636e), e14);
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    this.f62638g.f62917a.b().t(new E2(this.f62636e, this.f62635d, i10, null, null, map, null));
                    throw th;
                }
            } catch (IOException e15) {
                e = e15;
                i11 = responseCode;
                map2 = map4;
                iOException = e;
                if (outputStream != null) {
                }
                if (httpURLConnection != null) {
                }
                G2 g2322 = this.f62638g;
                String str32 = this.f62636e;
                D2 d2222 = this.f62635d;
                c12306h3 = g2322.f62917a.b();
                e22 = new E2(str32, d2222, i11, iOException, null, map2, null);
                c12306h3.t(e22);
            } catch (Throwable th7) {
                th = th7;
                i10 = responseCode;
                map = map3;
                if (outputStream != null) {
                }
                if (httpURLConnection != null) {
                }
                this.f62638g.f62917a.b().t(new E2(this.f62636e, this.f62635d, i10, null, null, map, null));
                throw th;
            }
        } catch (IOException e16) {
            iOException = e16;
            i11 = 0;
            map2 = null;
        } catch (Throwable th8) {
            th = th8;
            i10 = 0;
        }
        c12306h3.t(e22);
    }
}
