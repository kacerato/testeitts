package hd;

import android.content.Context;
import java.util.Map;

public class e {

    public String f90495a;

    public Map<String, String> f90496b;

    public Context f90497c;

    public boolean f90498d;

    public e(String postUrl, Map<String, String> postParams, Context context) {
        this.f90498d = false;
        this.f90495a = postUrl;
        this.f90496b = postParams;
        this.f90497c = context;
    }

    public e(String postUrl, Map<String, String> postParams, Context context, boolean disableLogging) {
        this.f90495a = postUrl;
        this.f90496b = postParams;
        this.f90497c = context;
        this.f90498d = disableLogging;
    }
}
