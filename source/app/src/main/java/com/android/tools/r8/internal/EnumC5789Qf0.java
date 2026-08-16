package com.android.tools.r8.internal;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import javax.xml.XMLConstants;

public enum EnumC5789Qf0 {
    f43664c("anim"),
    f43665d("animator"),
    f43666e("color"),
    f43667f("drawable"),
    f43668g(F2.i.f6428q),
    f43669h("interpolator"),
    f43670i("layout"),
    f43671j("menu"),
    f43672k("mipmap"),
    f43673l(NotificationCompat.CATEGORY_NAVIGATION),
    f43674m("raw"),
    f43675n("transition"),
    f43676o("values"),
    f43677p(XMLConstants.XML_NS_PREFIX);


    public static final HashMap f43678q;

    public static final boolean f43680s = true;

    public final String f43681b;

    static {
        EnumC5789Qf0[] values = values();
        f43678q = new HashMap(values.length * 2);
        for (EnumC5789Qf0 enumC5789Qf0 : values) {
            f43678q.put(enumC5789Qf0.f43681b, enumC5789Qf0);
        }
    }

    EnumC5789Qf0(String str) {
        this.f43681b = str;
    }

    public static EnumC5789Qf0 a(String str) {
        int indexOf = str.indexOf(45);
        if (indexOf != -1) {
            str = str.substring(0, indexOf);
        }
        if (f43680s || str.indexOf(45) == -1) {
            return (EnumC5789Qf0) f43678q.get(str);
        }
        throw new AssertionError((Object) str);
    }
}
