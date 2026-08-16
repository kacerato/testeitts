package gd;

import W7.b;
import android.util.Log;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.google.googlejavaformat.java.Formatter;
import org.google.googlejavaformat.java.FormatterException;
import yd.C16181m;

public class C13322a {

    public static final Object f88466a = new Object();

    public class C1708a implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public static String a(final Map<String, String> mPostItems, boolean disableLogging) throws UnsupportedEncodingException {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        for (String str : mPostItems.o()) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append("&");
            }
            sb2.append(URLEncoder.encode(str, "UTF-8"));
            sb2.append("=");
            sb2.append(URLEncoder.encode(mPostItems.get(str) != null ? mPostItems.get(str) : "", "UTF-8"));
            if (!disableLogging && c()) {
                Log.d("API", "Param:" + str + C16181m.f130230g + mPostItems.get(str));
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x0188 A[Catch: all -> 0x0170, TryCatch #13 {all -> 0x0170, blocks: (B:10:0x0031, B:79:0x0182, B:81:0x0188, B:82:0x01a7, B:62:0x01bf, B:64:0x01c5, B:65:0x01e4, B:67:0x01f0, B:72:0x022f, B:109:0x0249, B:111:0x024f, B:112:0x026e, B:89:0x0283, B:91:0x0289, B:92:0x02a8, B:99:0x02bd, B:101:0x02c3, B:102:0x02e2), top: B:9:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ba A[Catch: all -> 0x0027, TRY_ENTER, TryCatch #8 {all -> 0x0027, blocks: (B:4:0x0003, B:6:0x0009, B:7:0x002a, B:28:0x0108, B:34:0x0115, B:35:0x0120, B:37:0x0128, B:40:0x0131, B:41:0x015e, B:42:0x0148, B:30:0x0165, B:122:0x02fc, B:123:0x02ff, B:84:0x01ba, B:85:0x01bd, B:69:0x022a, B:70:0x022d, B:74:0x0244, B:75:0x0247, B:114:0x027e, B:115:0x0281, B:94:0x02b8, B:95:0x02bb, B:104:0x02f5, B:105:0x02f8), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String b(final String postUrl, final Map<String, String> postParams, boolean disableLogging) {
        URLConnection openConnection;
        HttpURLConnection httpURLConnection;
        String str;
        synchronized (f88466a) {
            try {
                if (c()) {
                    Log.e("API", "========================================");
                    Log.e("API", "URL#" + postUrl);
                }
                StringBuilder sb2 = new StringBuilder();
                HttpURLConnection httpURLConnection2 = null;
                try {
                    try {
                        openConnection = new URL(postUrl).openConnection();
                        httpURLConnection = (HttpURLConnection) openConnection;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e10) {
                    e = e10;
                } catch (Error e11) {
                    e = e11;
                } catch (NullPointerException e12) {
                    e = e12;
                } catch (ConnectException e13) {
                    e = e13;
                } catch (SSLException e14) {
                    e = e14;
                } catch (Exception e15) {
                    e = e15;
                }
                try {
                    if (openConnection instanceof HttpsURLConnection) {
                        ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new C1708a());
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
                    if (postParams != null) {
                        bufferedWriter.write(a(postParams, false));
                    }
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    outputStream.close();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode >= 200 && responseCode <= 206) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb2.append(readLine);
                        }
                    } else {
                        sb2.append("@error@");
                        sb2.append("HTTP-CODE:");
                        sb2.append(responseCode);
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
                        while (true) {
                            try {
                                String readLine2 = bufferedReader2.readLine();
                                if (readLine2 == null) {
                                    break;
                                }
                                sb2.append("\n");
                                sb2.append(readLine2);
                            } catch (Throwable th3) {
                                try {
                                    bufferedReader2.close();
                                } catch (Throwable th4) {
                                    th3.addSuppressed(th4);
                                }
                                throw th3;
                            }
                        }
                        bufferedReader2.close();
                    }
                    httpURLConnection.disconnect();
                    String sb3 = sb2.toString();
                    if (c()) {
                        try {
                            str = new Formatter().formatSource(sb3);
                        } catch (FormatterException unused) {
                            str = sb3;
                        }
                        if (!sb3.startsWith("@error@") && !sb3.startsWith("{\"status\":\"Error\"")) {
                            Log.d("API", "RESPONSE#" + str);
                            Log.e("API", "========================================");
                        }
                        Log.e("API", "RESPONSE#" + str);
                        Log.e("API", "========================================");
                    }
                    return sb3;
                } catch (IOException e16) {
                    e = e16;
                    httpURLConnection2 = httpURLConnection;
                    if (c()) {
                        Log.d("API", "URL:" + postUrl);
                        Log.e("API", e.getMessage());
                    }
                    if (!e.getMessage().contains("Cleartext HTTP traffic to ")) {
                        e.printStackTrace();
                        sb2.append("@error@");
                        sb2.append(e.getMessage());
                        String sb4 = sb2.toString();
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return sb4;
                    }
                    String replace = e.getMessage().replace("Cleartext HTTP traffic to ", "");
                    String substring = replace.substring(0, replace.indexOf(" "));
                    sb2.append("@error@");
                    sb2.append("Traffic to this domain \"" + substring + "\" without SSL is not permitted by android manifest!");
                    String sb5 = sb2.toString();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return sb5;
                } catch (Error e17) {
                    e = e17;
                    httpURLConnection2 = httpURLConnection;
                    if (c()) {
                        Log.d("API", "URL:" + postUrl);
                        Log.e("API", e.getMessage());
                    }
                    e.printStackTrace();
                    sb2.append("@error@");
                    sb2.append("invalid post");
                    String sb6 = sb2.toString();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return sb6;
                } catch (NullPointerException e18) {
                    e = e18;
                    httpURLConnection2 = httpURLConnection;
                    if (c()) {
                        Log.d("API", "URL:" + postUrl);
                        Log.e("API", e.getMessage());
                    }
                    sb2.append("@error@");
                    sb2.append("invalid post");
                    String sb7 = sb2.toString();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return sb7;
                } catch (ConnectException e19) {
                    e = e19;
                    httpURLConnection2 = httpURLConnection;
                    if (c()) {
                        Log.d("API", "URL:" + postUrl);
                        Log.e("API", e.getMessage());
                    }
                    e.printStackTrace();
                    sb2.append("@error@");
                    sb2.append("invalid post");
                    String sb8 = sb2.toString();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return sb8;
                } catch (SSLException e20) {
                    e = e20;
                    httpURLConnection2 = httpURLConnection;
                    if (c()) {
                        Log.d("API", "URL:" + postUrl);
                        Log.e("API", e.getMessage());
                    }
                    sb2.append("@error@");
                    sb2.append("invalid SSL");
                    String sb9 = sb2.toString();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return sb9;
                } catch (Exception e21) {
                    e = e21;
                    httpURLConnection2 = httpURLConnection;
                    if (c()) {
                    }
                    e.printStackTrace();
                    sb2.append("@error@");
                    sb2.append("invalid post");
                    String sb62 = sb2.toString();
                    if (httpURLConnection2 != null) {
                    }
                    return sb62;
                } catch (Throwable th5) {
                    th = th5;
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            } finally {
            }
        }
    }

    public static boolean c() {
        C8.a aVar = b.f27306f;
        UserController userController = aVar.f2461d;
        return (userController == null || userController.L() == null || !"itsmagic".equalsIgnoreCase(aVar.f2461d.L())) ? false : true;
    }
}
