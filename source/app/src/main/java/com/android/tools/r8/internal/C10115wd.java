package com.android.tools.r8.internal;

import java.util.function.ToIntFunction;

public final class C10115wd extends ZY implements InterfaceC5580Mq0 {

    public static final C10115wd f53536d = new C10115wd(EnumC9948vd.f53157e);

    public static final C10115wd f53537e = new C10115wd(EnumC9948vd.f53155c);

    public static final C10115wd f53538f = new C10115wd(EnumC9948vd.f53154b);

    public static final C10115wd f53539g = new C10115wd(EnumC9948vd.f53158f);

    public static final C10115wd f53540h = new C10115wd(EnumC9948vd.f53156d);

    public final int f53541b;

    public final EnumC9948vd f53542c;

    public C10115wd(EnumC9948vd enumC9948vd) {
        this.f53542c = enumC9948vd;
        this.f53541b = 0;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final ZY a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
    }

    @Override
    public final int b() {
        return 1;
    }

    @Override
    public final boolean d() {
        EnumC9948vd enumC9948vd = this.f53542c;
        enumC9948vd.getClass();
        return enumC9948vd != EnumC9948vd.f53154b;
    }

    @Override
    public final boolean e() {
        EnumC9948vd enumC9948vd = this.f53542c;
        enumC9948vd.getClass();
        return enumC9948vd == EnumC9948vd.f53158f;
    }

    public final boolean equals(Object obj) {
        if (C10115wd.class != obj.getClass()) {
            return false;
        }
        C10115wd c10115wd = (C10115wd) obj;
        return this.f53541b == c10115wd.f53541b && this.f53542c == c10115wd.f53542c;
    }

    public final int hashCode() {
        return (this.f53542c.ordinal() * 31) + this.f53541b;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C10115wd.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C10115wd) obj).f53541b;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int ordinal;
                ordinal = ((C10115wd) obj).f53542c.ordinal();
                return ordinal;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        super.a(abstractC9213rA);
    }

    public C10115wd(EnumC9948vd enumC9948vd, int i10) {
        this.f53542c = enumC9948vd;
        this.f53541b = i10;
    }

    public static C10115wd a(EnumC9948vd enumC9948vd) {
        int ordinal = enumC9948vd.ordinal();
        if (ordinal == 0) {
            return f53538f;
        }
        if (ordinal == 1) {
            return f53537e;
        }
        if (ordinal == 2) {
            return f53540h;
        }
        if (ordinal == 3) {
            return f53536d;
        }
        if (ordinal == 4) {
            return f53539g;
        }
        throw new C5417Jv0("Unexpected ClassNameMapping: " + ((Object) enumC9948vd));
    }
}
