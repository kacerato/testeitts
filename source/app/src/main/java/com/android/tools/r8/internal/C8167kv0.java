package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

public final class C8167kv0 implements InterfaceC7928jW {

    public final TreeMap f49838b = new TreeMap();

    public final C8167kv0 a(C9002pv0 c9002pv0) {
        if (c9002pv0 != C9002pv0.f51665c) {
            for (Map.Entry entry : c9002pv0.f51666b.entrySet()) {
                a(((Integer) entry.getKey()).intValue(), (C8501mv0) entry.getValue());
            }
        }
        return this;
    }

    public final Object clone() {
        C9002pv0 c9002pv0 = C9002pv0.f51665c;
        C8167kv0 c8167kv0 = new C8167kv0();
        for (Map.Entry entry : this.f49838b.entrySet()) {
            c8167kv0.f49838b.put((Integer) entry.getKey(), ((C8334lv0) entry.getValue()).m740clone());
        }
        return c8167kv0;
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9002pv0.f51665c;
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final InterfaceC7928jW mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        int s10;
        do {
            s10 = abstractC4916Be.s();
            if (s10 == 0) {
                break;
            }
        } while (a(s10, abstractC4916Be));
        return this;
    }

    public final C8334lv0 a(int i10) {
        if (i10 == 0) {
            return null;
        }
        C8334lv0 c8334lv0 = (C8334lv0) this.f49838b.get(Integer.valueOf(i10));
        if (c8334lv0 != null) {
            return c8334lv0;
        }
        int i11 = C8501mv0.f50456f;
        C8334lv0 c8334lv02 = new C8334lv0();
        this.f49838b.put(Integer.valueOf(i10), c8334lv02);
        return c8334lv02;
    }

    @Override
    public final C9002pv0 build() {
        if (this.f49838b.isEmpty()) {
            return C9002pv0.f51665c;
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry entry : this.f49838b.entrySet()) {
            treeMap.put(entry.getKey(), ((C8334lv0) entry.getValue()).a());
        }
        return new C9002pv0(treeMap);
    }

    public final void a(int i10, int i11) {
        if (i10 > 0) {
            C8334lv0 a10 = a(i10);
            long j10 = i11;
            C8501mv0 c8501mv0 = a10.f50146a;
            if (c8501mv0.f50457a == null) {
                c8501mv0.f50457a = new ArrayList();
            }
            a10.f50146a.f50457a.add(Long.valueOf(j10));
            return;
        }
        throw new IllegalArgumentException(i10 + " is not a valid field number.");
    }

    public final void a(int i10, C8501mv0 c8501mv0) {
        if (i10 > 0) {
            if (this.f49838b.containsKey(Integer.valueOf(i10))) {
                a(i10).a(c8501mv0);
                return;
            }
            if (i10 > 0) {
                TreeMap treeMap = this.f49838b;
                Integer valueOf = Integer.valueOf(i10);
                int i11 = C8501mv0.f50456f;
                treeMap.put(valueOf, new C8334lv0().a(c8501mv0));
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid field number.");
        }
        throw new IllegalArgumentException(i10 + " is not a valid field number.");
    }

    public final boolean a(int i10, AbstractC4916Be abstractC4916Be) {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            C8334lv0 a10 = a(i11);
            long k10 = abstractC4916Be.k();
            C8501mv0 c8501mv0 = a10.f50146a;
            if (c8501mv0.f50457a == null) {
                c8501mv0.f50457a = new ArrayList();
            }
            a10.f50146a.f50457a.add(Long.valueOf(k10));
            return true;
        }
        if (i12 == 1) {
            C8334lv0 a11 = a(i11);
            long h10 = abstractC4916Be.h();
            C8501mv0 c8501mv02 = a11.f50146a;
            if (c8501mv02.f50459c == null) {
                c8501mv02.f50459c = new ArrayList();
            }
            a11.f50146a.f50459c.add(Long.valueOf(h10));
            return true;
        }
        if (i12 == 2) {
            C8334lv0 a12 = a(i11);
            C7707i8 d10 = abstractC4916Be.d();
            C8501mv0 c8501mv03 = a12.f50146a;
            if (c8501mv03.f50460d == null) {
                c8501mv03.f50460d = new ArrayList();
            }
            a12.f50146a.f50460d.add(d10);
            return true;
        }
        if (i12 == 3) {
            C9002pv0 c9002pv0 = C9002pv0.f51665c;
            C8167kv0 c8167kv0 = new C8167kv0();
            abstractC4916Be.a(i11, c8167kv0, C10002vv.f53373e);
            C8334lv0 a13 = a(i11);
            C9002pv0 build = c8167kv0.build();
            C8501mv0 c8501mv04 = a13.f50146a;
            if (c8501mv04.f50461e == null) {
                c8501mv04.f50461e = new ArrayList();
            }
            a13.f50146a.f50461e.add(build);
            return true;
        }
        if (i12 == 4) {
            return false;
        }
        if (i12 == 5) {
            C8334lv0 a14 = a(i11);
            int g10 = abstractC4916Be.g();
            C8501mv0 c8501mv05 = a14.f50146a;
            if (c8501mv05.f50458b == null) {
                c8501mv05.f50458b = new ArrayList();
            }
            a14.f50146a.f50458b.add(Integer.valueOf(g10));
            return true;
        }
        int i13 = MJ.f42271c;
        throw new KJ();
    }
}
