package ed;

import android.content.Context;
import android.provider.Telephony;
import org.json.JSONObject;

public class f {
    public static int a(String error, Context context, Z6.d popupDialog) {
        if (error.equals("@no_ethernet@")) {
            if (popupDialog != null) {
                popupDialog.a("Ops!", "Seems that you are out of connection");
            }
            return 1;
        }
        JSONObject h10 = hd.c.h(error);
        String g10 = hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE);
        String g11 = hd.c.g(h10, "error_message");
        if (g11.equals("tokenProibited") || !g10.startsWith("1x")) {
            return 0;
        }
        Z6.i.y1("Ops!", g11);
        return 1;
    }
}
