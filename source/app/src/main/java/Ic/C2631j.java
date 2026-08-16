package Ic;

import android.content.Context;
import java.io.File;

public class C2631j {
    public static String a() {
        return b(N7.c.t());
    }

    public static String b(Context context) {
        if (com.itsmagic.engine.Core.Components.ProjectController.a.T().equals("@compiled@")) {
            String str = Vc.d.c(context) + "/";
            return str.contains("//") ? str.replace("//", "/") : str;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/internal/");
        if (!file.exists()) {
            file.mkdir();
        }
        return com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/internal/";
    }
}
