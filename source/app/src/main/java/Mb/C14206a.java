package mb;

import E8.a;
import W7.b;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;

public class C14206a {
    public static void a(Activity activity) {
        double parseDouble = Double.parseDouble(((ActivityManager) activity.getSystemService(Context.ACTIVITY_SERVICE)).getDeviceConfigurationInfo().getGlEsVersion());
        System.out.println("Max supported OGL Version: " + parseDouble);
        E8.a aVar = b.f27306f.f2459b;
        aVar.f5720f = (float) parseDouble;
        if (parseDouble >= 3.1d) {
            aVar.f5719e = a.EnumC0109a.GL31;
        } else if (parseDouble >= 3.0d) {
            aVar.f5719e = a.EnumC0109a.GL3;
        } else {
            aVar.f5719e = a.EnumC0109a.GL2;
        }
    }

    public static void b() {
    }
}
