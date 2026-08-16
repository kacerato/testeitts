package com.android.tools.r8.internal;

import java.util.function.Supplier;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public final class QN extends AbstractC8965pj {

    public static final boolean f43559h = true;

    public final E50 f43560a;

    public final Supplier f43561b;

    public UM f43562c = null;

    public final C4855Ad f43563d;

    public final C4855Ad f43564e;

    public final C8725oE f43565f;

    public final AbstractC7552hC f43566g;

    public QN(B50 b50, Supplier supplier) {
        b50.getClass();
        this.f43560a = new E50(b50, "class");
        this.f43561b = supplier;
        C4855Ad c4855Ad = new C4855Ad(new E50(b50, "class-name"));
        this.f43563d = c4855Ad;
        EnumC10616zd enumC10616zd = EnumC10616zd.f54416c;
        c4855Ad.a("className", enumC10616zd);
        EnumC10616zd enumC10616zd2 = EnumC10616zd.f54417d;
        c4855Ad.a("classConstant", enumC10616zd2);
        EnumC10616zd enumC10616zd3 = EnumC10616zd.f54415b;
        c4855Ad.a("classNamePattern", enumC10616zd3);
        C4855Ad c4855Ad2 = new C4855Ad(new E50(b50, "class-annotated-by"));
        this.f43564e = c4855Ad2;
        c4855Ad2.a("classAnnotatedByClassName", enumC10616zd);
        c4855Ad2.a("classAnnotatedByClassConstant", enumC10616zd2);
        c4855Ad2.a("classAnnotatedByClassNamePattern", enumC10616zd3);
        C8725oE c8725oE = new C8725oE(b50);
        this.f43565f = c8725oE;
        c8725oE.a("instanceOfPattern", EnumC8558nE.f50567f);
        c8725oE.a("instanceOfClassName", EnumC8558nE.f50563b);
        c8725oE.a("instanceOfClassConstant", EnumC8558nE.f50565d);
        c8725oE.a("instanceOfClassNameExclusive", EnumC8558nE.f50564c);
        c8725oE.a("instanceOfClassConstantExclusive", EnumC8558nE.f50566e);
        this.f43566g = AbstractC7552hC.a(c4855Ad, c4855Ad2, c8725oE);
    }

    @Override
    public final boolean a() {
        return this.f43562c != null || super.a();
    }

    @Override
    public final AbstractC7552hC b() {
        return this.f43566g;
    }

    public final UM c() {
        WM wm2;
        if (this.f43562c != null && (this.f43563d.a() || this.f43564e.a() || this.f43565f.a())) {
            E50 e50 = this.f43560a;
            e50.getClass();
            throw new FM(e50, "Cannot reference a class binding and class patterns for a single class item");
        }
        UM um2 = this.f43562c;
        if (um2 != null) {
            return um2;
        }
        if (this.f43563d.a() || this.f43564e.a() || this.f43565f.a()) {
            YM ym2 = YM.f45975c;
            C8415mP.a();
            CO co = CO.f39210c;
            C8415mP c8415mP = (C8415mP) this.f43563d.a(C8415mP.a());
            C8415mP c8415mP2 = (C8415mP) this.f43564e.getValue();
            AbstractC10198x40 a10 = c8415mP2 != null ? AbstractC10198x40.a(c8415mP2) : C9864v40.f53012b;
            DO r12 = (DO) this.f43565f.a(co);
            if (!c8415mP.c() || !((CO) r12).f39212a.c()) {
                ym2 = new YM(c8415mP, r12);
            }
            wm2 = new WM(ym2, a10);
        } else {
            if (!f43559h && a()) {
                throw new AssertionError();
            }
            YM ym3 = YM.f45975c;
            C8415mP a11 = C8415mP.a();
            CO co2 = CO.f39210c;
            C9864v40 c9864v40 = C9864v40.f53012b;
            if (!a11.c() || !co2.f39212a.c()) {
                ym3 = new YM(a11, co2);
            }
            wm2 = new WM(ym3, c9864v40);
        }
        C8914pO c8914pO = (C8914pO) this.f43561b.get();
        c8914pO.f51511a.getClass();
        PM pm2 = new PM(SuffixConstants.EXTENSION_CLASS);
        c8914pO.f51511a.a(pm2, wm2);
        return new UM(pm2);
    }

    @Override
    public final boolean a(Object obj, String str) {
        if (str.equals("classFromBinding") && (obj instanceof String)) {
            UM um2 = new UM(((C8914pO) this.f43561b.get()).a((String) obj));
            if (this.f43562c == null) {
                this.f43562c = um2;
                return true;
            }
            E50 e50 = this.f43560a;
            e50.getClass();
            throw new FM(e50, "Cannot reference multiple class bindings for a single class item");
        }
        return super.a(obj, str);
    }
}
