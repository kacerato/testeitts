package hd;

import android.content.Context;
import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class C13443b {

    public Uri f90491a;

    public String f90492b;

    public u8.d f90493c;

    public Context f90494d;

    public C13443b(Uri fileUri, String url, String[] params, u8.d serviceListener, Context context) {
        this.f90491a = fileUri;
        this.f90492b = b(url, params);
        this.f90493c = serviceListener;
        this.f90494d = context;
    }

    public final String a(String url, HashMap<String, String> params) {
        String str = url + "?";
        String str2 = "";
        int i10 = 0;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (i10 > 0) {
                str2 = str2 + "&";
            }
            str2 = str2 + entry.getKey() + "=" + entry.getValue();
            i10++;
        }
        try {
            str2 = URLEncoder.encode(str2, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        return str + str2;
    }

    public final String b(String url, String[] params) {
        String str = url + "?";
        String str2 = "";
        for (int i10 = 0; i10 < params.length; i10++) {
            if (i10 > 0) {
                str2 = str2 + "&";
            }
            str2 = str2 + params[i10];
        }
        try {
            str2 = URLEncoder.encode(str2, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        return str + str2;
    }

    public Context c() {
        return this.f90494d;
    }

    public Uri d() {
        return this.f90491a;
    }

    public u8.d e() {
        return this.f90493c;
    }

    public String f() {
        return this.f90492b;
    }

    public void g(Context context) {
        this.f90494d = context;
    }

    public void h(Uri fileUri) {
        this.f90491a = fileUri;
    }

    public void i(u8.d serviceListener) {
        this.f90493c = serviceListener;
    }

    public void j(String url) {
        this.f90492b = url;
    }

    public C13443b(Uri fileUri, String url, HashMap<String, String> params, u8.d serviceListener, Context context) {
        this.f90491a = fileUri;
        this.f90492b = a(url, params);
        this.f90493c = serviceListener;
        this.f90494d = context;
    }
}
