package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class EU {

    public static final boolean f39880g = true;

    public final C2 f39881a;

    public final String f39882b;

    public final String f39883c;

    public final String f39884d;

    public final boolean f39885e;

    public final List f39886f;

    public EU(C2 c22, String str, String str2, String str3, boolean z10, List list) {
        this.f39881a = c22;
        this.f39882b = str;
        this.f39883c = str2;
        this.f39884d = str3;
        this.f39885e = z10;
        this.f39886f = list;
    }

    public List<String> a() {
        return this.f39886f;
    }

    public final String b() {
        return String.join("\n", this.f39886f);
    }

    public String c() {
        return this.f39883c;
    }

    public C2 d() {
        return this.f39881a;
    }

    public String e() {
        return this.f39882b;
    }

    public final EU a(String str) {
        if (!f39880g && !str.endsWith(String.valueOf('.'))) {
            throw new AssertionError();
        }
        String m10 = C4932Bl.m(this.f39882b);
        String str2 = m10 + C4932Bl.m(str);
        String n10 = C4932Bl.n(str2);
        ArrayList arrayList = new ArrayList(this.f39886f.size());
        Iterator it = this.f39886f.iterator();
        while (it.hasNext()) {
            arrayList.add(((String) it.next()).replace(m10, str2));
        }
        return new EU(this.f39881a, n10, this.f39883c, this.f39884d, this.f39885e, arrayList);
    }
}
