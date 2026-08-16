package B7;

import com.google.gson.Gson;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import lb.C14068e;

public class b {

    public static final boolean f1600a = false;

    public class a implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public class C0035b implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public class c implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public class d implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public class e implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public class f implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public class g implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public static String a(String urlAddress, String apiKey, Map<String, String> params) {
        HttpURLConnection httpURLConnection;
        if (apiKey == null || apiKey.isEmpty()) {
            throw new IllegalArgumentException("API key can't be empty or null");
        }
        C14068e c14068e = new C14068e();
        c14068e.n();
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        StringBuilder sb2 = new StringBuilder();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                if (!params.isEmpty()) {
                    Set<String> o10 = params.o();
                    StringBuilder sb3 = new StringBuilder(urlAddress);
                    sb3.append("?");
                    Iterator<String> it = o10.iterator();
                    while (it.hasNext()) {
                        String encode = URLEncoder.encode(it.next(), "UTF-8");
                        String encode2 = URLEncoder.encode(params.get(encode), "UTF-8");
                        sb3.append(encode);
                        sb3.append("=");
                        sb3.append(encode2);
                    }
                    urlAddress = sb3.toString();
                }
                httpURLConnection = (HttpURLConnection) new URL(urlAddress).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketException e10) {
            e = e10;
        } catch (IOException e11) {
            e = e11;
        }
        try {
            if (httpURLConnection instanceof HttpsURLConnection) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new f());
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod(FetchCoreUtils.GET_REQUEST_METHOD);
            httpURLConnection.setRequestProperty("Authorization", "Bearer " + apiKey);
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("charset", "utf-8");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
            httpURLConnection.connect();
            httpURLConnection.setReadTimeout(180000);
            httpURLConnection.setConnectTimeout(180000);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
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
        } catch (SocketException e12) {
            httpURLConnection2 = httpURLConnection;
            e = e12;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            String sb4 = sb2.toString();
            c14068e.g();
            return sb4;
        } catch (IOException e13) {
            httpURLConnection2 = httpURLConnection;
            e = e13;
            e.printStackTrace();
            sb2.append(e.getMessage());
            String sb5 = sb2.toString();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return sb5;
        } catch (Throwable th5) {
            httpURLConnection2 = httpURLConnection;
            th = th5;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        String sb42 = sb2.toString();
        c14068e.g();
        return sb42;
    }

    public static String b(String urlAddress, Map<String, String> params) {
        HttpURLConnection httpURLConnection;
        C14068e c14068e = new C14068e();
        c14068e.n();
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        StringBuilder sb2 = new StringBuilder();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                if (!params.isEmpty()) {
                    Set<String> o10 = params.o();
                    StringBuilder sb3 = new StringBuilder(urlAddress);
                    sb3.append("?");
                    Iterator<String> it = o10.iterator();
                    while (it.hasNext()) {
                        String encode = URLEncoder.encode(it.next(), "UTF-8");
                        String encode2 = URLEncoder.encode(params.get(encode), "UTF-8");
                        sb3.append(encode);
                        sb3.append("=");
                        sb3.append(encode2);
                    }
                    urlAddress = sb3.toString();
                }
                httpURLConnection = (HttpURLConnection) new URL(urlAddress).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                if (httpURLConnection instanceof HttpsURLConnection) {
                    ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new e());
                }
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod(FetchCoreUtils.GET_REQUEST_METHOD);
                httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                httpURLConnection.setRequestProperty("charset", "utf-8");
                httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
                httpURLConnection.connect();
                httpURLConnection.setReadTimeout(180000);
                httpURLConnection.setConnectTimeout(180000);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
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
            } catch (SocketException e10) {
                httpURLConnection2 = httpURLConnection;
                e = e10;
                e.printStackTrace();
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                String sb4 = sb2.toString();
                c14068e.g();
                return sb4;
            } catch (IOException e11) {
                httpURLConnection2 = httpURLConnection;
                e = e11;
                e.printStackTrace();
                sb2.append(e.getMessage());
                String sb5 = sb2.toString();
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return sb5;
            } catch (Throwable th5) {
                httpURLConnection2 = httpURLConnection;
                th = th5;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        } catch (SocketException e12) {
            e = e12;
        } catch (IOException e13) {
            e = e13;
        }
        String sb42 = sb2.toString();
        c14068e.g();
        return sb42;
    }

    public static String c(String urlAddress, String apiKey, Map<String, String> params) {
        HttpURLConnection httpURLConnection;
        if (apiKey == null || apiKey.isEmpty()) {
            throw new IllegalArgumentException("API key can't be empty or null");
        }
        C14068e c14068e = new C14068e();
        c14068e.n();
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        StringBuilder sb2 = new StringBuilder();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                if (!params.isEmpty()) {
                    Set<String> o10 = params.o();
                    StringBuilder sb3 = new StringBuilder(urlAddress);
                    sb3.append("?");
                    Iterator<String> it = o10.iterator();
                    while (it.hasNext()) {
                        String encode = URLEncoder.encode(it.next(), "UTF-8");
                        String encode2 = URLEncoder.encode(params.get(encode), "UTF-8");
                        sb3.append(encode);
                        sb3.append("=");
                        sb3.append(encode2);
                    }
                    urlAddress = sb3.toString();
                }
                httpURLConnection = (HttpURLConnection) new URL(urlAddress).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketException e10) {
            e = e10;
        } catch (IOException e11) {
            e = e11;
        }
        try {
            if (httpURLConnection instanceof HttpsURLConnection) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new g());
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod(FetchCoreUtils.GET_REQUEST_METHOD);
            httpURLConnection.setRequestProperty("Authorization", "Bearer " + apiKey);
            httpURLConnection.setRequestProperty("Content-Type", g3.c.f88114q);
            httpURLConnection.setRequestProperty("charset", "utf-8");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
            httpURLConnection.connect();
            httpURLConnection.setReadTimeout(180000);
            httpURLConnection.setConnectTimeout(180000);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
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
        } catch (SocketException e12) {
            httpURLConnection2 = httpURLConnection;
            e = e12;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            String sb4 = sb2.toString();
            c14068e.g();
            return sb4;
        } catch (IOException e13) {
            httpURLConnection2 = httpURLConnection;
            e = e13;
            e.printStackTrace();
            sb2.append(e.getMessage());
            String sb5 = sb2.toString();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return sb5;
        } catch (Throwable th5) {
            httpURLConnection2 = httpURLConnection;
            th = th5;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        String sb42 = sb2.toString();
        c14068e.g();
        return sb42;
    }

    public static String d(String urlAddress, String apiKey, Map<String, String> params, int timeOutInSeconds) {
        HttpURLConnection httpURLConnection;
        if (apiKey == null || apiKey.isEmpty()) {
            throw new IllegalArgumentException("API key can't be empty or null");
        }
        C14068e c14068e = new C14068e();
        c14068e.n();
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        StringBuilder sb2 = new StringBuilder();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(urlAddress).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketException e10) {
            e = e10;
        } catch (IOException e11) {
            e = e11;
        }
        try {
            if (httpURLConnection instanceof HttpsURLConnection) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new c());
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Authorization", "Bearer " + apiKey);
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("charset", "utf-8");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
            httpURLConnection.connect();
            int i10 = timeOutInSeconds * 1000;
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setConnectTimeout(i10);
            OutputStream outputStream = httpURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(h(params, false));
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
        } catch (SocketException e12) {
            e = e12;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            String sb3 = sb2.toString();
            c14068e.g();
            return sb3;
        } catch (IOException e13) {
            e = e13;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            sb2.append(e.getMessage());
            String sb4 = sb2.toString();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return sb4;
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        String sb32 = sb2.toString();
        c14068e.g();
        return sb32;
    }

    public static String e(String urlAddress, String apiKey, Map<String, String> params, int timeOutInSeconds, String contentType) {
        HttpURLConnection httpURLConnection;
        if (apiKey == null || apiKey.isEmpty()) {
            throw new IllegalArgumentException("API key can't be empty or null");
        }
        if (contentType == null) {
            contentType = "application/x-www-form-urlencoded";
        }
        C14068e c14068e = new C14068e();
        c14068e.n();
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        StringBuilder sb2 = new StringBuilder();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(urlAddress).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketException e10) {
            e = e10;
        } catch (IOException e11) {
            e = e11;
        }
        try {
            if (httpURLConnection instanceof HttpsURLConnection) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new C0035b());
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Authorization", "Bearer " + apiKey);
            httpURLConnection.setRequestProperty("Content-Type", contentType);
            httpURLConnection.setRequestProperty("charset", "utf-8");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
            httpURLConnection.connect();
            int i10 = timeOutInSeconds * 1000;
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setConnectTimeout(i10);
            if (contentType.equals(g3.c.f88114q)) {
                String json = new Gson().toJson(params);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                    try {
                        bufferedWriter.write(json);
                        bufferedWriter.flush();
                        bufferedWriter.close();
                        if (outputStream != null) {
                            outputStream.close();
                        }
                    } finally {
                    }
                } catch (Throwable th3) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } else {
                OutputStream outputStream2 = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(outputStream2, "UTF-8"));
                bufferedWriter2.write(h(params, false));
                bufferedWriter2.flush();
                bufferedWriter2.close();
                outputStream2.close();
            }
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
                    } catch (Throwable th5) {
                        try {
                            bufferedReader2.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                bufferedReader2.close();
            }
            httpURLConnection.disconnect();
        } catch (SocketException e12) {
            e = e12;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            String sb3 = sb2.toString();
            c14068e.g();
            return sb3;
        } catch (IOException e13) {
            e = e13;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            sb2.append(e.getMessage());
            String sb4 = sb2.toString();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return sb4;
        } catch (Throwable th7) {
            th = th7;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        String sb32 = sb2.toString();
        c14068e.g();
        return sb32;
    }

    public static String f(String urlAddress, Map<String, String> params, int timeOutInSeconds) {
        HttpURLConnection httpURLConnection;
        C14068e c14068e = new C14068e();
        c14068e.n();
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        StringBuilder sb2 = new StringBuilder();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(urlAddress).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketException e10) {
            e = e10;
        } catch (IOException e11) {
            e = e11;
        }
        try {
            if (httpURLConnection instanceof HttpsURLConnection) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new d());
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("charset", "utf-8");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
            httpURLConnection.connect();
            int i10 = timeOutInSeconds * 1000;
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setConnectTimeout(i10);
            OutputStream outputStream = httpURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(h(params, false));
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
        } catch (SocketException e12) {
            e = e12;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            String sb3 = sb2.toString();
            c14068e.g();
            return sb3;
        } catch (IOException e13) {
            e = e13;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            sb2.append(e.getMessage());
            String sb4 = sb2.toString();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return sb4;
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        String sb32 = sb2.toString();
        c14068e.g();
        return sb32;
    }

    public static String g(String urlAddress, String apiKey, Object params, int timeOutInSeconds) {
        HttpURLConnection httpURLConnection;
        if (apiKey == null || apiKey.isEmpty()) {
            throw new IllegalArgumentException("API key can't be empty or null");
        }
        C14068e c14068e = new C14068e();
        c14068e.n();
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        StringBuilder sb2 = new StringBuilder();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(urlAddress).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketException e10) {
            e = e10;
        } catch (IOException e11) {
            e = e11;
        }
        try {
            if (httpURLConnection instanceof HttpsURLConnection) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new a());
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Authorization", "Bearer " + apiKey);
            httpURLConnection.setRequestProperty("Content-Type", g3.c.f88114q);
            httpURLConnection.setRequestProperty("charset", "utf-8");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7");
            httpURLConnection.connect();
            int i10 = timeOutInSeconds * 1000;
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setConnectTimeout(i10);
            String json = new Gson().toJson(params);
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                try {
                    bufferedWriter.write(json);
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
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
                } finally {
                }
            } catch (Throwable th5) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                }
                throw th5;
            }
        } catch (SocketException e12) {
            e = e12;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            String sb3 = sb2.toString();
            c14068e.g();
            return sb3;
        } catch (IOException e13) {
            e = e13;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            sb2.append(e.getMessage());
            String sb4 = sb2.toString();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return sb4;
        } catch (Throwable th7) {
            th = th7;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        String sb32 = sb2.toString();
        c14068e.g();
        return sb32;
    }

    public static String h(final Map<String, String> mPostItems, boolean disableLogging) throws UnsupportedEncodingException {
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
        }
        return sb2.toString();
    }
}
