package com.android.tools.r8.internal;

import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class L2 extends AbstractC8965pj {

    public final C4855Ad f41846a;

    public final S3 f41847b;

    public final AbstractC7552hC f41848c;

    public L2(B50 b50) {
        C4855Ad c4855Ad = new C4855Ad(b50);
        this.f41846a = c4855Ad;
        c4855Ad.a("name", EnumC10616zd.f54416c);
        c4855Ad.a("constant", EnumC10616zd.f54417d);
        c4855Ad.a("namePattern", EnumC10616zd.f54415b);
        S3 s32 = new S3(b50, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new N2((I50) obj);
            }
        });
        this.f41847b = s32;
        s32.a("retention", O2.f42765b);
        s32.f53955e = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                L2.a((List) obj, (I50) obj2);
            }
        };
        this.f41848c = AbstractC7552hC.a(c4855Ad, s32);
    }

    public static void a(List list, I50 i50) {
        if (list.isEmpty()) {
            i50.getClass();
            throw new FM(i50, "Expected non-empty array of retention policies");
        }
    }

    @Override
    public final AbstractC7552hC b() {
        return this.f41848c;
    }

    public final IM c() {
        if (!a()) {
            return null;
        }
        IM im2 = IM.f41061c;
        final HM hm2 = new HM();
        if (this.f41847b.a()) {
            ((List) this.f41847b.getValue()).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    HM.this.a((RetentionPolicy) obj);
                }
            });
        } else {
            hm2.a(RetentionPolicy.RUNTIME);
        }
        hm2.f40739a = (C8415mP) this.f41846a.a(C8415mP.a());
        return hm2.a();
    }
}
