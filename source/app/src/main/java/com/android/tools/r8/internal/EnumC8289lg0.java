package com.android.tools.r8.internal;

import android.hardware.Camera;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import java.util.Arrays;
import java.util.function.Predicate;
import java.util.stream.Collector;
import java.util.stream.Stream;
import javax.xml.XMLConstants;

public enum EnumC8289lg0 {
    ANIM("anim", new String[0]),
    ANIMATOR("animator", new String[0]),
    ARRAY("array", "string-array", "integer-array"),
    ATTR("attr", new String[0]),
    BOOL("bool", new String[0]),
    COLOR("color", new String[0]),
    DIMEN("dimen", new String[0]),
    DRAWABLE("drawable", new String[0]),
    FONT(F2.i.f6428q, new String[0]),
    FRACTION("fraction", new String[0]),
    ID("id", new String[0]),
    INTEGER(TypedValues.Custom.S_INT, new String[0]),
    INTERPOLATOR("interpolator", new String[0]),
    LAYOUT("layout", new String[0]),
    MENU("menu", new String[0]),
    MIPMAP("mipmap", new String[0]),
    NAVIGATION(NotificationCompat.CATEGORY_NAVIGATION, new String[0]),
    PLURALS("plurals", new String[0]),
    RAW("raw", new String[0]),
    STRING(TypedValues.Custom.S_STRING, new String[0]),
    STYLE("style", new String[0]),
    f50063z("STYLEABLE", "styleable"),
    TRANSITION("transition", new String[0]),
    XML(XMLConstants.XML_NS_PREFIX, new String[0]),
    f50034C("PUBLIC", "public"),
    f50035D("AAPT", "_aapt"),
    f50036E("OVERLAYABLE", "overlayable"),
    f50037F("STYLE_ITEM", "item"),
    f50038G("SAMPLE_DATA", "sample"),
    f50039H("MACRO", Camera.Parameters.FOCUS_MODE_MACRO);


    public static final AbstractC8552nC f50040I;

    public final String f50064b;

    public final String[] f50065c;

    public final int f50066d;

    static {
        EnumC8289lg0 enumC8289lg0 = f50063z;
        EnumC8289lg0 enumC8289lg02 = f50034C;
        EnumC8289lg0 enumC8289lg03 = f50036E;
        EnumC8289lg0 enumC8289lg04 = f50039H;
        C8051kC c8051kC = new C8051kC(4);
        c8051kC.a("declare-styleable", enumC8289lg0);
        c8051kC.a("public", enumC8289lg02);
        c8051kC.a("overlayable", enumC8289lg03);
        c8051kC.a(Camera.Parameters.FOCUS_MODE_MACRO, enumC8289lg04);
        C8051kC c8051kC2 = new C8051kC(4);
        c8051kC2.a("styleable", enumC8289lg0);
        for (EnumC8289lg0 enumC8289lg05 : values()) {
            if (enumC8289lg05.f50066d == 1 && enumC8289lg05 != f50063z) {
                c8051kC2.a(enumC8289lg05.f50064b, enumC8289lg05);
                c8051kC.a(enumC8289lg05.f50064b, enumC8289lg05);
                for (String str : enumC8289lg05.f50065c) {
                    c8051kC.a(str, enumC8289lg05);
                }
            }
        }
        c8051kC.b();
        f50040I = c8051kC2.b();
        Stream filter = Arrays.stream(values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((EnumC8289lg0) obj).a();
            }
        });
        Collector collector = AbstractC5438Ke.f41723a;
    }

    EnumC8289lg0(String str, String... strArr) {
        this.f50064b = str;
        this.f50066d = 1;
        this.f50065c = strArr;
    }

    public final boolean a() {
        return (this.f50066d == 1 && this != ATTR) || this == f50039H;
    }

    @Override
    public final String toString() {
        return this.f50064b;
    }

    EnumC8289lg0(String str, String str2) {
        this.f50064b = str2;
        this.f50066d = r2;
        this.f50065c = new String[0];
    }
}
