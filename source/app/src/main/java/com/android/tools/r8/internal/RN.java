package com.android.tools.r8.internal;

import Bi.C2385q;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class RN extends AbstractC8965pj {

    public static final boolean f43883c = true;

    public final C5156Fh f43884a;

    public final S3 f43885b;

    public RN(B50 b50) {
        C5156Fh c5156Fh = new C5156Fh(b50);
        this.f43884a = c5156Fh;
        c5156Fh.a(C2385q.f1871f, EnumC5098Eh.f39982b);
        c5156Fh.a("constraintAdditions", EnumC5098Eh.f39983c);
        S3 s32 = new S3(b50, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new P2((I50) obj);
            }
        });
        this.f43885b = s32;
        s32.a("constrainAnnotations", M2.f42133b);
        s32.f53955e = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                RN.this.a((List) obj, (I50) obj2);
            }
        };
    }

    public static void a(C10080wN c10080wN, IM im2) {
        C6911dN c6911dN;
        im2.getClass();
        if (im2 == IM.f41061c) {
            c6911dN = C6911dN.f47384c;
        } else if (im2 == IM.f41062d) {
            c6911dN = C6911dN.f47385d;
        } else if (im2 == IM.f41063e) {
            c6911dN = C6911dN.f47386e;
        } else {
            c6911dN = new C6911dN(im2);
        }
        c10080wN.f53485b.add(c6911dN);
    }

    @Override
    public final AbstractC7552hC b() {
        return AbstractC7552hC.a(this.f43884a, this.f43885b);
    }

    public final AbstractC10581zN c() {
        final C10080wN a10;
        if (!a()) {
            return null;
        }
        if (!this.f43885b.a()) {
            if (f43883c || this.f43884a.a()) {
                return (AbstractC10581zN) this.f43884a.getValue();
            }
            throw new AssertionError();
        }
        if (this.f43884a.a()) {
            a10 = new C10080wN().a((AbstractC10581zN) this.f43884a.getValue());
            if (!f43883c) {
                a10.a();
            }
        } else {
            a10 = new C10080wN().a(C10414yN.f54000c);
        }
        ((List) this.f43885b.getValue()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                RN.a(C10080wN.this, (IM) obj);
            }
        });
        C10247xN c10247xN = new C10247xN(a10.f53485b);
        return a10.f53484a ? new C9746uN(c10247xN) : c10247xN;
    }

    public final void a(List list, I50 i50) {
        if (list.isEmpty()) {
            i50.getClass();
            throw new FM(i50, "Expected non-empty array of annotation patterns");
        }
    }
}
