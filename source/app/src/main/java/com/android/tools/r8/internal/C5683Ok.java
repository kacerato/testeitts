package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C5683Ok extends AbstractC7679hz {

    public int f42983c;

    public Serializable f42984d;

    public Serializable f42985e;

    public boolean f42986f;

    public boolean f42987g;

    public boolean f42988h;

    public int f42989i;

    public Serializable f42990j;

    public boolean f42991k;

    public boolean f42992l;

    public boolean f42993m;

    public boolean f42994n;

    public boolean f42995o;

    public boolean f42996p;

    public Serializable f42997q;

    public Serializable f42998r;

    public Serializable f42999s;

    public Serializable f43000t;

    public Serializable f43001u;

    public Serializable f43002v;

    public Serializable f43003w;

    public List f43004x;

    public C4862Af0 f43005y;

    public C5683Ok() {
        this.f42984d = "";
        this.f42985e = "";
        this.f42989i = 1;
        this.f42990j = "";
        this.f42996p = true;
        this.f42997q = "";
        this.f42998r = "";
        this.f42999s = "";
        this.f43000t = "";
        this.f43001u = "";
        this.f43002v = "";
        this.f43003w = "";
        this.f43004x = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5683Ok mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5799Qk c5799Qk = null;
        try {
            try {
                a((C5799Qk) C5799Qk.f43700A.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5799Qk c5799Qk2 = (C5799Qk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5799Qk = c5799Qk2;
                    if (c5799Qk != null) {
                        a(c5799Qk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5799Qk != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5683Ok) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5799Qk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C5683Ok) m1188clone();
    }

    @Override
    public final C5799Qk m1181buildPartial() {
        C5799Qk c5799Qk = new C5799Qk(this);
        int i10 = this.f42983c;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c5799Qk.f43703d = this.f42984d;
        if ((i10 & 2) != 0) {
            i11 |= 2;
        }
        c5799Qk.f43704e = this.f42985e;
        if ((i10 & 4) != 0) {
            c5799Qk.f43705f = this.f42986f;
            i11 |= 4;
        }
        if ((i10 & 8) != 0) {
            c5799Qk.f43706g = this.f42987g;
            i11 |= 8;
        }
        if ((i10 & 16) != 0) {
            c5799Qk.f43707h = this.f42988h;
            i11 |= 16;
        }
        if ((i10 & 32) != 0) {
            i11 |= 32;
        }
        c5799Qk.f43708i = this.f42989i;
        if ((i10 & 64) != 0) {
            i11 |= 64;
        }
        c5799Qk.f43709j = this.f42990j;
        if ((i10 & 128) != 0) {
            c5799Qk.f43710k = this.f42991k;
            i11 |= 128;
        }
        if ((i10 & 256) != 0) {
            c5799Qk.f43711l = this.f42992l;
            i11 |= 256;
        }
        if ((i10 & 512) != 0) {
            c5799Qk.f43712m = this.f42993m;
            i11 |= 512;
        }
        if ((i10 & 1024) != 0) {
            c5799Qk.f43713n = this.f42994n;
            i11 |= 1024;
        }
        if ((i10 & 2048) != 0) {
            c5799Qk.f43714o = this.f42995o;
            i11 |= 2048;
        }
        if ((i10 & 4096) != 0) {
            i11 |= 4096;
        }
        c5799Qk.f43715p = this.f42996p;
        if ((i10 & 8192) != 0) {
            i11 |= 8192;
        }
        c5799Qk.f43716q = this.f42997q;
        if ((i10 & 16384) != 0) {
            i11 |= 16384;
        }
        c5799Qk.f43717r = this.f42998r;
        if ((i10 & 32768) != 0) {
            i11 |= 32768;
        }
        c5799Qk.f43718s = this.f42999s;
        if ((i10 & 65536) != 0) {
            i11 |= 65536;
        }
        c5799Qk.f43719t = this.f43000t;
        if ((i10 & 131072) != 0) {
            i11 |= 131072;
        }
        c5799Qk.f43720u = this.f43001u;
        if ((i10 & 262144) != 0) {
            i11 |= 262144;
        }
        c5799Qk.f43721v = this.f43002v;
        if ((i10 & 524288) != 0) {
            i11 |= 524288;
        }
        c5799Qk.f43722w = this.f43003w;
        C4862Af0 c4862Af0 = this.f43005y;
        if (c4862Af0 == null) {
            if ((this.f42983c & 1048576) != 0) {
                this.f43004x = Collections.unmodifiableList(this.f43004x);
                this.f42983c &= -1048577;
            }
            c5799Qk.f43723x = this.f43004x;
        } else {
            c5799Qk.f43723x = c4862Af0.b();
        }
        c5799Qk.f43702c = i11;
        onBuilt();
        return c5799Qk;
    }

    public final C4862Af0 e() {
        if (this.f43005y == null) {
            this.f43005y = new C4862Af0(this.f43004x, (this.f42983c & 1048576) != 0, getParentForChildren(), isClean());
            this.f43004x = null;
        }
        return this.f43005y;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5799Qk.f43701z;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54530y;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54531z.a(C5799Qk.class, C5683Ok.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f43005y;
            if (i10 >= (c4862Af0 == null ? this.f43004x.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f43005y;
            if (!(c4862Af02 == null ? (C10473yl) this.f43004x.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5683Ok) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5683Ok) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5683Ok) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5799Qk.f43701z;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5683Ok) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5799Qk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5799Qk) {
            return a((C5799Qk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5799Qk) {
            return a((C5799Qk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C5683Ok a(C5799Qk c5799Qk) {
        if (c5799Qk == C5799Qk.f43701z) {
            return this;
        }
        if ((c5799Qk.f43702c & 1) != 0) {
            this.f42983c |= 1;
            this.f42984d = c5799Qk.f43703d;
            onChanged();
        }
        if ((c5799Qk.f43702c & 2) != 0) {
            this.f42983c |= 2;
            this.f42985e = c5799Qk.f43704e;
            onChanged();
        }
        if ((c5799Qk.f43702c & 4) != 0) {
            boolean z10 = c5799Qk.f43705f;
            this.f42983c |= 4;
            this.f42986f = z10;
            onChanged();
        }
        if ((c5799Qk.f43702c & 8) != 0) {
            boolean z11 = c5799Qk.f43706g;
            this.f42983c |= 8;
            this.f42987g = z11;
            onChanged();
        }
        if ((c5799Qk.f43702c & 16) != 0) {
            boolean z12 = c5799Qk.f43707h;
            this.f42983c |= 16;
            this.f42988h = z12;
            onChanged();
        }
        if ((c5799Qk.f43702c & 32) != 0) {
            EnumC5741Pk a10 = EnumC5741Pk.a(c5799Qk.f43708i);
            if (a10 == null) {
                a10 = EnumC5741Pk.f43353c;
            }
            this.f42983c |= 32;
            this.f42989i = a10.f43356b;
            onChanged();
        }
        if ((c5799Qk.f43702c & 64) != 0) {
            this.f42983c |= 64;
            this.f42990j = c5799Qk.f43709j;
            onChanged();
        }
        if ((c5799Qk.f43702c & 128) != 0) {
            boolean z13 = c5799Qk.f43710k;
            this.f42983c |= 128;
            this.f42991k = z13;
            onChanged();
        }
        if ((c5799Qk.f43702c & 256) != 0) {
            boolean z14 = c5799Qk.f43711l;
            this.f42983c |= 256;
            this.f42992l = z14;
            onChanged();
        }
        if ((c5799Qk.f43702c & 512) != 0) {
            boolean z15 = c5799Qk.f43712m;
            this.f42983c |= 512;
            this.f42993m = z15;
            onChanged();
        }
        if ((c5799Qk.f43702c & 1024) != 0) {
            boolean z16 = c5799Qk.f43713n;
            this.f42983c |= 1024;
            this.f42994n = z16;
            onChanged();
        }
        if ((c5799Qk.f43702c & 2048) != 0) {
            boolean z17 = c5799Qk.f43714o;
            this.f42983c |= 2048;
            this.f42995o = z17;
            onChanged();
        }
        if ((c5799Qk.f43702c & 4096) != 0) {
            boolean z18 = c5799Qk.f43715p;
            this.f42983c |= 4096;
            this.f42996p = z18;
            onChanged();
        }
        if ((c5799Qk.f43702c & 8192) != 0) {
            this.f42983c |= 8192;
            this.f42997q = c5799Qk.f43716q;
            onChanged();
        }
        if ((c5799Qk.f43702c & 16384) != 0) {
            this.f42983c |= 16384;
            this.f42998r = c5799Qk.f43717r;
            onChanged();
        }
        if ((c5799Qk.f43702c & 32768) != 0) {
            this.f42983c |= 32768;
            this.f42999s = c5799Qk.f43718s;
            onChanged();
        }
        if ((c5799Qk.f43702c & 65536) != 0) {
            this.f42983c |= 65536;
            this.f43000t = c5799Qk.f43719t;
            onChanged();
        }
        if ((c5799Qk.f43702c & 131072) != 0) {
            this.f42983c |= 131072;
            this.f43001u = c5799Qk.f43720u;
            onChanged();
        }
        if ((c5799Qk.f43702c & 262144) != 0) {
            this.f42983c |= 262144;
            this.f43002v = c5799Qk.f43721v;
            onChanged();
        }
        if ((c5799Qk.f43702c & 524288) != 0) {
            this.f42983c |= 524288;
            this.f43003w = c5799Qk.f43722w;
            onChanged();
        }
        if (this.f43005y == null) {
            if (!c5799Qk.f43723x.isEmpty()) {
                if (this.f43004x.isEmpty()) {
                    this.f43004x = c5799Qk.f43723x;
                    this.f42983c &= -1048577;
                } else {
                    if ((this.f42983c & 1048576) == 0) {
                        this.f43004x = new ArrayList(this.f43004x);
                        this.f42983c |= 1048576;
                    }
                    this.f43004x.addAll(c5799Qk.f43723x);
                }
                onChanged();
            }
        } else if (!c5799Qk.f43723x.isEmpty()) {
            if (this.f43005y.f38676b.isEmpty()) {
                this.f43005y.f38675a = null;
                this.f43005y = null;
                this.f43004x = c5799Qk.f43723x;
                this.f42983c &= -1048577;
                this.f43005y = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f43005y.a(c5799Qk.f43723x);
            }
        }
        a((AbstractC7844iz) c5799Qk);
        onChanged();
        return this;
    }

    public C5683Ok(C7011dz c7011dz) {
        super(c7011dz);
        this.f42984d = "";
        this.f42985e = "";
        this.f42989i = 1;
        this.f42990j = "";
        this.f42996p = true;
        this.f42997q = "";
        this.f42998r = "";
        this.f42999s = "";
        this.f43000t = "";
        this.f43001u = "";
        this.f43002v = "";
        this.f43003w = "";
        this.f43004x = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }
}
