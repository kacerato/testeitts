package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.PatternSyntaxException;

public final class C7789ig0 {

    public final LinkedHashMap f49011a = new LinkedHashMap(AbstractC9595tV.a(200));

    public final ArrayList f49012b;

    public final EnumMap f49013c;

    public final HashMap f49014d;

    public final HashSet f49015e;

    public final ArrayList f49016f;

    public final ArrayList f49017g;

    public boolean f49018h;

    public C7789ig0() {
        AbstractC5496Le.a(200, "initialArraySize");
        this.f49012b = new ArrayList(200);
        this.f49013c = new EnumMap(EnumC8289lg0.class);
        this.f49014d = new HashMap(AbstractC9595tV.a(200));
        this.f49015e = new HashSet();
        this.f49016f = new ArrayList();
        this.f49017g = new ArrayList();
        this.f49018h = true;
    }

    public static final InterfaceC8638nl0 a(C7789ig0 c7789ig0, String str) {
        c7789ig0.getClass();
        C8456mg0 a10 = C8456mg0.a(str);
        if (a10 != null && !"android".equals(a10.f50378d)) {
            C10090wS c10090wS = (C10090wS) c7789ig0.f49013c.get(a10.f50376b);
            if (c10090wS == null) {
                return C6220Xt.f45846a;
            }
            String str2 = a10.f50377c;
            GJ.b(str2, "url.name");
            if (!AbstractC5349Iq0.a(str2, "*")) {
                String str3 = a10.f50377c;
                GJ.b(str3, "url.name");
                if (!AbstractC5349Iq0.a(str3, "?")) {
                    return new C7619hf(new C8755oS(c10090wS, a10.f50377c));
                }
            }
            try {
                String str4 = a10.f50377c;
                GJ.b(str4, "url.name");
                String a11 = AbstractC7970jl0.a(AbstractC4987Cj0.a(str4));
                GJ.b(a11, "globToRegexp(resourceNameToFieldName(url.name))");
                C5323Ie0 c5323Ie0 = new C5323Ie0(a11);
                Collection collection = c10090wS.f44052b;
                if (collection == null) {
                    collection = c10090wS.g();
                    c10090wS.f44052b = collection;
                }
                return new C5874Rs0(new C6839cx(new C7619hf((List) collection), true, new C6789cg0(c5323Ie0)), C6956dg0.f47454b);
            } catch (PatternSyntaxException unused) {
                return C6220Xt.f45846a;
            }
        }
        return C6220Xt.f45846a;
    }

    public final List b() {
        ArrayList arrayList = this.f49016f;
        GJ.c(arrayList, "<this>");
        C7619hf c7619hf = new C7619hf(arrayList);
        C7122eg0 c7122eg0 = new C7122eg0(this);
        C9806ul0 c9806ul0 = C9806ul0.f52943h;
        List d10 = AbstractC8972pl0.d(AbstractC8972pl0.a(new C4898Ax(c7619hf, c7122eg0, c9806ul0), (InterfaceC8676ny) new C7289fg0(this)));
        ArrayList arrayList2 = this.f49017g;
        GJ.c(arrayList2, "<this>");
        List d11 = AbstractC8972pl0.d(AbstractC8972pl0.a(new C4898Ax(new C7619hf(arrayList2), new C7456gg0(this), c9806ul0), (InterfaceC8676ny) C7623hg0.f48669b));
        if (d11.isEmpty()) {
            return AbstractC6303Ze.b(d10);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : d10) {
            if (!d11.contains(obj)) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }

    public final List a(EnumC8289lg0 enumC8289lg0, String str) {
        GJ.c(enumC8289lg0, "type");
        GJ.c(str, "name");
        C10090wS c10090wS = (C10090wS) this.f49013c.get(enumC8289lg0);
        return c10090wS == null ? C6049Ut.f44892b : AbstractC6303Ze.b(new C8755oS(c10090wS, AbstractC4987Cj0.a(str)));
    }

    public final List a(String str) {
        GJ.c(str, "webUrl");
        int a10 = AbstractC5349Iq0.a(str, "android_res/", 0, 6);
        if (a10 != -1) {
            str = str.substring(a10 + 12, str.length());
            GJ.b(str, "substring(...)");
        }
        List b10 = AbstractC5349Iq0.b(2, str, new String[]{"/"});
        if (b10.size() < 2) {
            return C6049Ut.f44892b;
        }
        String str2 = (String) b10.get(0);
        String str3 = (String) b10.get(1);
        EnumC5789Qf0 a11 = EnumC5789Qf0.a(str2);
        if (a11 == null) {
            return C6049Ut.f44892b;
        }
        String c10 = AbstractC5349Iq0.c(str3, '.');
        List<EnumC8289lg0> list = (List) AbstractC6171Wx.f45588b.get(a11);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        GJ.b(list, "getRelatedResourceTypes(folderType)");
        ArrayList arrayList = new ArrayList();
        for (EnumC8289lg0 enumC8289lg0 : list) {
            GJ.b(enumC8289lg0, "it");
            arrayList.addAll(a(enumC8289lg0, c10));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C8623ng0 a(C8623ng0 c8623ng0) {
        C5847Rf0 c5847Rf0 = new C5847Rf0(c8623ng0.f51022c, c8623ng0.f51023d, c8623ng0.f51024e);
        C8623ng0 c8623ng02 = (C8623ng0) this.f49011a.get(c5847Rf0);
        if (c8623ng02 == null) {
            this.f49011a.put(c5847Rf0, c8623ng0);
            this.f49012b.add(c8623ng0);
            ((C10090wS) this.f49013c.computeIfAbsent(c8623ng0.f51022c, C6193Xf0.f45783b)).a(c8623ng0.f51023d, c8623ng0, null);
            int i10 = c8623ng0.f51025f;
            if (i10 != -1) {
                this.f49014d.put(Integer.valueOf(i10), c8623ng0);
            }
            return c8623ng0;
        }
        int i11 = c8623ng0.f51025f;
        Object[] objArr = new Object[0];
        if (i11 == -1 || c8623ng02.f51025f == i11) {
            if (i11 != -1 && c8623ng02.f51025f == -1) {
                c8623ng02.f51025f = i11;
                this.f49014d.put(Integer.valueOf(i11), c8623ng02);
            }
            return c8623ng02;
        }
        throw new IllegalStateException(AbstractC4885Aq0.a("Resource value must be the same between addResource calls.", objArr));
    }

    public final String a() {
        ArrayList arrayList = this.f49012b;
        GJ.c(arrayList, "<this>");
        C7619hf c7619hf = new C7619hf(arrayList);
        int i10 = 0;
        Comparator a10 = AbstractC10622zf.a(C6250Yf0.f46054b, C6307Zf0.f46308b);
        GJ.c(a10, "comparator");
        C4898Ax c4898Ax = new C4898Ax(new C9973vl0(c7619hf, a10), C6623bg0.f46821b, C9806ul0.f52943h);
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        C10676zx c10676zx = new C10676zx(c4898Ax);
        while (c10676zx.hasNext()) {
            Object next = c10676zx.next();
            i10++;
            if (i10 > 1) {
                sb2.append((CharSequence) "\n");
            }
            if (next == null ? true : next instanceof CharSequence) {
                sb2.append((CharSequence) next);
            } else if (next instanceof Character) {
                sb2.append(((Character) next).charValue());
            } else {
                sb2.append((CharSequence) next.toString());
            }
        }
        sb2.append((CharSequence) "\n");
        return sb2.toString();
    }
}
