package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collections;

public final class C9847uz {

    public final C4990Cl f52993a;

    public final InterfaceC8011jz[] f52994b;

    public String[] f52995c;

    public final C8178kz[] f52996d;

    public volatile boolean f52997e = false;

    public C9847uz(C4990Cl c4990Cl, String[] strArr) {
        this.f52993a = c4990Cl;
        this.f52995c = strArr;
        this.f52994b = new InterfaceC8011jz[Collections.unmodifiableList(Arrays.asList(c4990Cl.f39344g)).size()];
        this.f52996d = new C8178kz[Collections.unmodifiableList(Arrays.asList(c4990Cl.f39347j)).size()];
    }

    public static C8178kz a(C9847uz c9847uz, C5917Sl c5917Sl) {
        c9847uz.getClass();
        if (c5917Sl.f44306f == c9847uz.f52993a) {
            return c9847uz.f52996d[c5917Sl.f44302b];
        }
        throw new IllegalArgumentException("OneofDescriptor does not match message type.");
    }

    public static InterfaceC8011jz a(C9847uz c9847uz, C5685Ol c5685Ol) {
        c9847uz.getClass();
        if (c5685Ol.f43023i == c9847uz.f52993a) {
            if (!c5685Ol.f43017c.e()) {
                return c9847uz.f52994b[c5685Ol.f43016b];
            }
            throw new IllegalArgumentException("This type does not have extensions.");
        }
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
    }

    public final C9847uz a(Class cls, Class cls2) {
        if (this.f52997e) {
            return this;
        }
        synchronized (this) {
            try {
                if (this.f52997e) {
                    return this;
                }
                int length = this.f52994b.length;
                for (int i10 = 0; i10 < length; i10++) {
                    C5685Ol c5685Ol = (C5685Ol) Collections.unmodifiableList(Arrays.asList(this.f52993a.f39344g)).get(i10);
                    C5917Sl c5917Sl = c5685Ol.f43025k;
                    String str = c5917Sl != null ? this.f52995c[c5917Sl.f44302b + length] : null;
                    if (c5685Ol.k()) {
                        EnumC5569Ml enumC5569Ml = c5685Ol.f43022h.f42689b;
                        if (enumC5569Ml == EnumC5569Ml.f42387k) {
                            if (!c5685Ol.i()) {
                                this.f52994b[i10] = new C8846oz(this.f52995c[i10], cls, cls2);
                            } else {
                                String str2 = this.f52995c[i10];
                                ((AbstractC10181wz) AbstractC10181wz.access$1100(AbstractC10181wz.access$1000(cls, com.google.protobuf.G.f68056a, new Class[0]), null, new Object[0])).internalGetMapField(c5685Ol.f43017c.f39995d);
                                throw null;
                            }
                        } else if (enumC5569Ml == EnumC5569Ml.f42386j) {
                            this.f52994b[i10] = new C8345lz(c5685Ol, this.f52995c[i10], cls, cls2);
                        } else {
                            this.f52994b[i10] = new C8679nz(this.f52995c[i10], cls, cls2);
                        }
                    } else {
                        EnumC5569Ml enumC5569Ml2 = c5685Ol.f43022h.f42689b;
                        if (enumC5569Ml2 == EnumC5569Ml.f42387k) {
                            this.f52994b[i10] = new C9513sz(c5685Ol, this.f52995c[i10], cls, cls2, str);
                        } else if (enumC5569Ml2 == EnumC5569Ml.f42386j) {
                            this.f52994b[i10] = new C9013pz(c5685Ol, this.f52995c[i10], cls, cls2, str);
                        } else if (enumC5569Ml2 == EnumC5569Ml.f42384h) {
                            this.f52994b[i10] = new C9680tz(c5685Ol, this.f52995c[i10], cls, cls2, str);
                        } else {
                            this.f52994b[i10] = new C9346rz(c5685Ol, this.f52995c[i10], cls, cls2, str);
                        }
                    }
                }
                int length2 = this.f52996d.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.f52996d[i11] = new C8178kz(this.f52993a, i11, this.f52995c[i11 + length], cls, cls2);
                }
                this.f52997e = true;
                this.f52995c = null;
                return this;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
