package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.List;

public abstract class AbstractC6171Wx {

    public static final EnumMap f45587a = new EnumMap(EnumC8289lg0.class);

    public static final EnumMap f45588b = new EnumMap(EnumC5789Qf0.class);

    public static final boolean f45589c = true;

    static {
        a(EnumC8289lg0.ANIM, EnumC5789Qf0.f43664c);
        a(EnumC8289lg0.ANIMATOR, EnumC5789Qf0.f43665d);
        EnumC8289lg0 enumC8289lg0 = EnumC8289lg0.COLOR;
        a(enumC8289lg0, EnumC5789Qf0.f43666e);
        EnumC8289lg0 enumC8289lg02 = EnumC8289lg0.DRAWABLE;
        EnumC5789Qf0 enumC5789Qf0 = EnumC5789Qf0.f43667f;
        a(enumC8289lg02, enumC5789Qf0);
        a(EnumC8289lg0.FONT, EnumC5789Qf0.f43668g);
        a(EnumC8289lg0.INTERPOLATOR, EnumC5789Qf0.f43669h);
        EnumC8289lg0 enumC8289lg03 = EnumC8289lg0.LAYOUT;
        EnumC5789Qf0 enumC5789Qf02 = EnumC5789Qf0.f43670i;
        a(enumC8289lg03, enumC5789Qf02);
        EnumC8289lg0 enumC8289lg04 = EnumC8289lg0.MENU;
        EnumC5789Qf0 enumC5789Qf03 = EnumC5789Qf0.f43671j;
        a(enumC8289lg04, enumC5789Qf03);
        a(EnumC8289lg0.MIPMAP, EnumC5789Qf0.f43672k);
        a(EnumC8289lg0.RAW, EnumC5789Qf0.f43674m);
        EnumC8289lg0 enumC8289lg05 = EnumC8289lg0.TRANSITION;
        EnumC5789Qf0 enumC5789Qf04 = EnumC5789Qf0.f43675n;
        a(enumC8289lg05, enumC5789Qf04);
        EnumC8289lg0 enumC8289lg06 = EnumC8289lg0.XML;
        EnumC5789Qf0 enumC5789Qf05 = EnumC5789Qf0.f43677p;
        a(enumC8289lg06, enumC5789Qf05);
        EnumC8289lg0 enumC8289lg07 = EnumC8289lg0.NAVIGATION;
        EnumC5789Qf0 enumC5789Qf06 = EnumC5789Qf0.f43673l;
        a(enumC8289lg07, enumC5789Qf06);
        EnumC8289lg0 enumC8289lg08 = EnumC8289lg0.ARRAY;
        EnumC5789Qf0 enumC5789Qf07 = EnumC5789Qf0.f43676o;
        a(enumC8289lg08, enumC5789Qf07);
        a(EnumC8289lg0.ATTR, enumC5789Qf07);
        a(EnumC8289lg0.BOOL, enumC5789Qf07);
        a(enumC8289lg0, enumC5789Qf07);
        a(EnumC8289lg0.DIMEN, enumC5789Qf07);
        a(enumC8289lg02, enumC5789Qf07);
        a(EnumC8289lg0.FRACTION, enumC5789Qf07);
        EnumC8289lg0 enumC8289lg09 = EnumC8289lg0.ID;
        a(enumC8289lg09, enumC5789Qf07);
        a(EnumC8289lg0.INTEGER, enumC5789Qf07);
        a(EnumC8289lg0.f50039H, enumC5789Qf07);
        a(EnumC8289lg0.PLURALS, enumC5789Qf07);
        a(EnumC8289lg0.f50034C, enumC5789Qf07);
        a(EnumC8289lg0.STRING, enumC5789Qf07);
        a(EnumC8289lg0.STYLE, enumC5789Qf07);
        a(EnumC8289lg0.f50037F, enumC5789Qf07);
        a(EnumC8289lg0.f50063z, enumC5789Qf07);
        a(enumC8289lg09, enumC5789Qf0);
        a(enumC8289lg09, enumC5789Qf02);
        a(enumC8289lg09, enumC5789Qf03);
        a(enumC8289lg09, enumC5789Qf06);
        a(enumC8289lg09, enumC5789Qf04);
        a(enumC8289lg09, enumC5789Qf05);
        for (EnumC8289lg0 enumC8289lg010 : EnumC8289lg0.values()) {
            EnumMap enumMap = f45587a;
            List list = (List) enumMap.get(enumC8289lg010);
            if (list != null) {
                if (!f45589c && enumC8289lg010 != EnumC8289lg0.ID && list.size() > 2) {
                    throw new AssertionError();
                }
                enumMap.put((Object) enumC8289lg010, (Object) Collections.unmodifiableList(list));
            }
        }
        for (EnumC5789Qf0 enumC5789Qf08 : EnumC5789Qf0.values()) {
            EnumMap enumMap2 = f45588b;
            List list2 = (List) enumMap2.get(enumC5789Qf08);
            if (list2 != null) {
                enumMap2.put((Object) enumC5789Qf08, (Object) Collections.unmodifiableList(list2));
            }
        }
        EnumSet.of(EnumC5789Qf0.f43670i, EnumC5789Qf0.f43671j, EnumC5789Qf0.f43667f, EnumC5789Qf0.f43677p, EnumC5789Qf0.f43675n, EnumC5789Qf0.f43673l);
    }

    public static void a(EnumC8289lg0 enumC8289lg0, EnumC5789Qf0 enumC5789Qf0) {
        EnumMap enumMap = f45587a;
        List list = (List) enumMap.get(enumC8289lg0);
        if (list == null) {
            list = new ArrayList();
            enumMap.put((Object) enumC8289lg0, (Object) list);
        }
        if (list.indexOf(enumC5789Qf0) == -1) {
            list.add(enumC5789Qf0);
        }
        EnumMap enumMap2 = f45588b;
        List list2 = (List) enumMap2.get(enumC5789Qf0);
        if (list2 == null) {
            list2 = new ArrayList();
            enumMap2.put((Object) enumC5789Qf0, (Object) list2);
        }
        if (list2.indexOf(enumC8289lg0) == -1) {
            list2.add(enumC8289lg0);
        }
    }
}
