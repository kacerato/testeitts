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
import java.util.zip.GZIPOutputStream;

@WorkerThread
public final class RunnableC12292f5 implements Runnable {

    public final URL f63275b;

    public final byte[] f63276c;

    public final InterfaceC12276d5 f63277d;

    public final String f63278e;

    public final Map f63279f;

    public final C12300g5 f63280g;

    public RunnableC12292f5(C12300g5 c12300g5, String str, URL url, byte[] bArr, Map map, InterfaceC12276d5 interfaceC12276d5) {
        Objects.requireNonNull(c12300g5);
        this.f63280g = c12300g5;
        G0.A.l(str);
        G0.A.r(url);
        G0.A.r(interfaceC12276d5);
        this.f63275b = url;
        this.f63276c = bArr;
        this.f63277d = interfaceC12276d5;
        this.f63278e = str;
        this.f63279f = map;
    }

    public final void a(int i10, Exception exc, byte[] bArr, Map map) {
        this.f63277d.a(this.f63278e, i10, exc, bArr, map);
    }

    public final void b(final int i10, final Exception exc, final byte[] bArr, final Map map) {
        this.f63280g.f62917a.b().t(new Runnable() {
            @Override
            public final void run() {
                RunnableC12292f5.this.a(i10, exc, bArr, map);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.OutputStream] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        HttpURLConnection httpURLConnection;
        Map map;
        Map map2;
        Map map3;
        Map map4;
        ?? r52;
        ?? r53;
        int responseCode;
        Object obj;
        Object obj2;
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        C12300g5 c12300g5 = this.f63280g;
        c12300g5.g();
        int i10 = 0;
        try {
            URL url = this.f63275b;
            int i11 = C12140o0.f62375a;
            URLConnection openConnection = url.openConnection();
            if (!(openConnection instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            C12370p3 c12370p3 = c12300g5.f62917a;
            c12370p3.w();
            httpURLConnection.setConnectTimeout(60000);
            c12370p3.w();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            ?? r54 = 1;
            httpURLConnection.setDoInput(true);
            try {
                try {
                    Map map5 = this.f63279f;
                    if (map5 != null) {
                        for (Map.Entry entry : map5.entrySet()) {
                            httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                    byte[] bArr = this.f63276c;
                    if (bArr != null) {
                        try {
                            c12370p3.c();
                            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                            gZIPOutputStream.write(bArr);
                            gZIPOutputStream.close();
                            byteArrayOutputStream2.close();
                            byte[] byteArray = byteArrayOutputStream2.toByteArray();
                            C12448z2 w10 = this.f63280g.f62917a.a().w();
                            int length = byteArray.length;
                            w10.b("Uploading data. size", Integer.valueOf(length));
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.addRequestProperty("Content-Encoding", g3.c.f88116s);
                            httpURLConnection.setFixedLengthStreamingMode(length);
                            httpURLConnection.connect();
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            try {
                                outputStream.write(byteArray);
                                outputStream.close();
                                r54 = outputStream;
                            } catch (IOException e10) {
                                e = e10;
                                map4 = null;
                                r53 = outputStream;
                                if (r53 != 0) {
                                }
                                if (httpURLConnection != null) {
                                }
                                b(i10, e, null, map4);
                            } catch (Throwable th2) {
                                th = th2;
                                map3 = null;
                                r52 = outputStream;
                                if (r52 != 0) {
                                }
                                if (httpURLConnection != null) {
                                }
                                b(i10, null, null, map3);
                                throw th;
                            }
                        } catch (IOException e11) {
                            this.f63280g.f62917a.a().o().b("Failed to gzip post request content", e11);
                            throw e11;
                        }
                    }
                    responseCode = httpURLConnection.getResponseCode();
                } catch (IOException e12) {
                    e = e12;
                    map2 = null;
                    map4 = map2;
                    r53 = map2;
                    if (r53 != 0) {
                        try {
                            r53.close();
                        } catch (IOException e13) {
                            this.f63280g.f62917a.a().o().c("Error closing HTTP compressed POST connection output stream. appId", B2.x(this.f63278e), e13);
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    b(i10, e, null, map4);
                }
            } catch (Throwable th3) {
                th = th3;
                map = null;
                map3 = map;
                r52 = map;
                if (r52 != 0) {
                    try {
                        r52.close();
                    } catch (IOException e14) {
                        this.f63280g.f62917a.a().o().c("Error closing HTTP compressed POST connection output stream. appId", B2.x(this.f63278e), e14);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                b(i10, null, null, map3);
                throw th;
            }
            try {
                try {
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        inputStream = httpURLConnection.getInputStream();
                    } catch (Throwable th4) {
                        th = th4;
                        inputStream = null;
                    }
                    try {
                        byte[] bArr2 = new byte[1024];
                        while (true) {
                            int read = inputStream.read(bArr2);
                            if (read <= 0) {
                                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                                inputStream.close();
                                httpURLConnection.disconnect();
                                b(responseCode, null, byteArray2, headerFields);
                                return;
                            }
                            byteArrayOutputStream.write(bArr2, 0, read);
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } catch (IOException e15) {
                    e = e15;
                    obj2 = null;
                    map4 = null;
                    IOException iOException = e;
                    i10 = responseCode;
                    e = iOException;
                    r53 = obj2;
                    if (r53 != 0) {
                    }
                    if (httpURLConnection != null) {
                    }
                    b(i10, e, null, map4);
                } catch (Throwable th6) {
                    th = th6;
                    obj = null;
                    map3 = null;
                    Throwable th7 = th;
                    i10 = responseCode;
                    th = th7;
                    r52 = obj;
                    if (r52 != 0) {
                    }
                    if (httpURLConnection != null) {
                    }
                    b(i10, null, null, map3);
                    throw th;
                }
            } catch (IOException e16) {
                e = e16;
                map4 = r54;
                obj2 = null;
                IOException iOException2 = e;
                i10 = responseCode;
                e = iOException2;
                r53 = obj2;
                if (r53 != 0) {
                }
                if (httpURLConnection != null) {
                }
                b(i10, e, null, map4);
            } catch (Throwable th8) {
                th = th8;
                map3 = r54;
                obj = null;
                Throwable th72 = th;
                i10 = responseCode;
                th = th72;
                r52 = obj;
                if (r52 != 0) {
                }
                if (httpURLConnection != null) {
                }
                b(i10, null, null, map3);
                throw th;
            }
        } catch (IOException e17) {
            e = e17;
            httpURLConnection = null;
            map2 = null;
        } catch (Throwable th9) {
            th = th9;
            httpURLConnection = null;
            map = null;
        }
    }
}
