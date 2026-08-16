package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;

public class QW extends DX {

    public final int f43595c;

    public final String f43596d;

    public final String f43597e;

    public ArrayList f43598f;

    public List f43599g;

    public List f43600h;

    public List f43601i;

    public List f43602j;

    public List f43603k;

    public Object f43604l;

    public int f43605m;

    public List[] f43606n;

    public int f43607o;

    public List[] f43608p;

    public OD f43609q;

    public List f43610r;

    public int f43611s;

    public int f43612t;

    public List f43613u;

    public List f43614v;

    public List f43615w;

    public boolean f43616x;

    public QW(int i10, int i11, String str, String str2, String[] strArr) {
        super(i10, null);
        this.f43595c = i11;
        this.f43596d = str;
        this.f43597e = str2;
        AbstractC9839uw0.a(strArr);
        if ((i11 & 1024) == 0) {
            this.f43613u = new ArrayList(5);
        }
        this.f43610r = new ArrayList();
        this.f43609q = new OD();
    }

    @Override
    public final Q2 a() {
        return new J2(new PW(this));
    }

    @Override
    public final void b() {
    }

    @Override
    public void c() {
    }

    @Override
    public final void d(int i10, int i11) {
        this.f43609q.a(new C5940Sw0(i10, i11));
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        J2 j22 = new J2(str);
        if (z10) {
            this.f43599g = AbstractC9839uw0.a(this.f43599g, j22);
            return j22;
        }
        this.f43600h = AbstractC9839uw0.a(this.f43600h, j22);
        return j22;
    }

    @Override
    public final void b(int i10, String str) {
        if (this.f43598f == null) {
            this.f43598f = new ArrayList(5);
        }
        this.f43598f.add(new C9033q50(i10, str));
    }

    @Override
    public final Q2 c(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        C8498mu0 c8498mu0 = new C8498mu0(i10, c9666tu0, str);
        if (z10) {
            this.f43601i = AbstractC9839uw0.a(this.f43601i, c8498mu0);
            return c8498mu0;
        }
        this.f43602j = AbstractC9839uw0.a(this.f43602j, c8498mu0);
        return c8498mu0;
    }

    @Override
    public final void a(int i10, boolean z10) {
        if (z10) {
            this.f43605m = i10;
        } else {
            this.f43607o = i10;
        }
    }

    @Override
    public final void b(int i10, int i11) {
        this.f43609q.a(new OH(i10, i11));
    }

    @Override
    public final void c(int i10, String str) {
        this.f43609q.a(new C9166qu0(i10, str));
    }

    @Override
    public final Q2 b(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        C8996pt0 c8996pt0 = (C8996pt0) this.f43610r.get((16776960 & i10) >> 8);
        C8498mu0 c8498mu0 = new C8498mu0(i10, c9666tu0, str);
        if (z10) {
            c8996pt0.f51654e = AbstractC9839uw0.a(c8996pt0.f51654e, c8498mu0);
            return c8498mu0;
        }
        c8996pt0.f51655f = AbstractC9839uw0.a(c8996pt0.f51655f, c8498mu0);
        return c8498mu0;
    }

    @Override
    public final void c(int i10, int i11) {
        this.f43611s = i10;
        this.f43612t = i11;
    }

    @Override
    public final Q2 a(int i10, String str, boolean z10) {
        J2 j22 = new J2(str);
        if (z10) {
            if (this.f43606n == null) {
                this.f43606n = new List[C9663tt0.a(this.f43597e)];
            }
            List[] listArr = this.f43606n;
            listArr[i10] = AbstractC9839uw0.a(listArr[i10], j22);
            return j22;
        }
        if (this.f43608p == null) {
            this.f43608p = new List[C9663tt0.a(this.f43597e)];
        }
        List[] listArr2 = this.f43608p;
        listArr2[i10] = AbstractC9839uw0.a(listArr2[i10], j22);
        return j22;
    }

    @Override
    public final void b(int i10, XQ xq) {
        this.f43609q.a(new C7588hS(i10, b(xq)));
    }

    public static YQ b(XQ xq) {
        if (xq.f45686a == null) {
            xq.f45686a = new YQ();
        }
        return xq.f45686a;
    }

    @Override
    public final void a(K4 k42) {
        this.f43603k = AbstractC9839uw0.a(this.f43603k, k42);
    }

    @Override
    public final void a(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        Object[] objArr3;
        Object[] objArr4;
        OD od2 = this.f43609q;
        if (objArr == null) {
            objArr3 = null;
        } else {
            Object[] objArr5 = new Object[objArr.length];
            int length = objArr.length;
            for (int i13 = 0; i13 < length; i13++) {
                Object obj = objArr[i13];
                if (obj instanceof XQ) {
                    obj = b((XQ) obj);
                }
                objArr5[i13] = obj;
            }
            objArr3 = objArr5;
        }
        if (objArr2 == null) {
            objArr4 = null;
        } else {
            Object[] objArr6 = new Object[objArr2.length];
            int length2 = objArr2.length;
            for (int i14 = 0; i14 < length2; i14++) {
                Object obj2 = objArr2[i14];
                if (obj2 instanceof XQ) {
                    obj2 = b((XQ) obj2);
                }
                objArr6[i14] = obj2;
            }
            objArr4 = objArr6;
        }
        od2.a(new C7676hy(i10, i11, objArr3, i12, objArr4));
    }

    @Override
    public final void a(int i10) {
        this.f43609q.a(new PD(i10));
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        this.f43609q.a(new C7336fw(i10, str, str2, str3));
    }

    @Override
    public final void a(int i10, String str, String str2, String str3, boolean z10) {
        if (this.f39546a < 327680 && (i10 & 256) == 0) {
            super.a(i10, str, str2, str3, z10);
        } else {
            this.f43609q.a(new KW(i10 & (-257), str, str2, str3, z10));
        }
    }

    @Override
    public final void a(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        this.f43609q.a(new RJ(str, str2, c5829Qz, objArr));
    }

    @Override
    public void a(int i10, XQ xq) {
        this.f43609q.a(new C9241rL(i10, b(xq)));
    }

    @Override
    public final void a(XQ xq) {
        this.f43609q.a(b(xq));
    }

    @Override
    public final void a(Object obj) {
        this.f43609q.a(new AR(obj));
    }

    @Override
    public final void a(int i10, int i11) {
        this.f43609q.a(new PB(i10, i11));
    }

    @Override
    public final void a(int i10, int i11, XQ xq, XQ... xqArr) {
        this.f43609q.a(new C10158wr0(i10, i11, b(xq), a(xqArr)));
    }

    @Override
    public final void a(XQ xq, int[] iArr, XQ[] xqArr) {
        this.f43609q.a(new C9927vU(b(xq), iArr, a(xqArr)));
    }

    @Override
    public final void a(int i10, String str) {
        this.f43609q.a(new C7600hY(i10, str));
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        H h10 = this.f43609q.f42826d;
        while (h10.f40639a == -1) {
            h10 = h10.f40642d;
        }
        C8498mu0 c8498mu0 = new C8498mu0(i10, c9666tu0, str);
        if (z10) {
            h10.f40640b = AbstractC9839uw0.a(h10.f40640b, c8498mu0);
            return c8498mu0;
        }
        h10.f40641c = AbstractC9839uw0.a(h10.f40641c, c8498mu0);
        return c8498mu0;
    }

    @Override
    public final void a(XQ xq, XQ xq2, XQ xq3, String str) {
        this.f43610r = AbstractC9839uw0.a(this.f43610r, new C8996pt0(b(xq), b(xq2), b(xq3), str));
    }

    @Override
    public final void a(String str, String str2, String str3, XQ xq, XQ xq2, int i10) {
        this.f43613u = AbstractC9839uw0.a(this.f43613u, new ST(str, str2, str3, b(xq), b(xq2), i10));
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, XQ[] xqArr, XQ[] xqArr2, int[] iArr, String str, boolean z10) {
        RT rt = new RT(i10, c9666tu0, a(xqArr), a(xqArr2), iArr, str);
        if (z10) {
            this.f43614v = AbstractC9839uw0.a(this.f43614v, rt);
            return rt;
        }
        this.f43615w = AbstractC9839uw0.a(this.f43615w, rt);
        return rt;
    }

    public static YQ[] a(XQ[] xqArr) {
        YQ[] yqArr = new YQ[xqArr.length];
        int length = xqArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            yqArr[i10] = b(xqArr[i10]);
        }
        return yqArr;
    }

    public final void a(DX dx) {
        ArrayList arrayList = this.f43598f;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                C9033q50 c9033q50 = (C9033q50) this.f43598f.get(i10);
                dx.b(c9033q50.f51715b, c9033q50.f51714a);
            }
        }
        if (this.f43604l != null) {
            Q2 a10 = dx.a();
            J2.a(a10, (String) null, this.f43604l);
            if (a10 != null) {
                a10.a();
            }
        }
        List list = this.f43599g;
        if (list != null) {
            int size2 = list.size();
            for (int i11 = 0; i11 < size2; i11++) {
                J2 j22 = (J2) this.f43599g.get(i11);
                j22.a(dx.a(j22.f41273b, true));
            }
        }
        List list2 = this.f43600h;
        if (list2 != null) {
            int size3 = list2.size();
            for (int i12 = 0; i12 < size3; i12++) {
                J2 j23 = (J2) this.f43600h.get(i12);
                j23.a(dx.a(j23.f41273b, false));
            }
        }
        List list3 = this.f43601i;
        if (list3 != null) {
            int size4 = list3.size();
            for (int i13 = 0; i13 < size4; i13++) {
                C8498mu0 c8498mu0 = (C8498mu0) this.f43601i.get(i13);
                c8498mu0.a(dx.c(c8498mu0.f50454d, c8498mu0.f50455e, c8498mu0.f41273b, true));
            }
        }
        List list4 = this.f43602j;
        if (list4 != null) {
            int size5 = list4.size();
            for (int i14 = 0; i14 < size5; i14++) {
                C8498mu0 c8498mu02 = (C8498mu0) this.f43602j.get(i14);
                c8498mu02.a(dx.c(c8498mu02.f50454d, c8498mu02.f50455e, c8498mu02.f41273b, false));
            }
        }
        int i15 = this.f43605m;
        if (i15 > 0) {
            dx.a(i15, true);
        }
        List[] listArr = this.f43606n;
        if (listArr != null) {
            int length = listArr.length;
            for (int i16 = 0; i16 < length; i16++) {
                List list5 = this.f43606n[i16];
                if (list5 != null) {
                    int size6 = list5.size();
                    for (int i17 = 0; i17 < size6; i17++) {
                        J2 j24 = (J2) list5.get(i17);
                        j24.a(dx.a(i16, j24.f41273b, true));
                    }
                }
            }
        }
        int i18 = this.f43607o;
        if (i18 > 0) {
            dx.a(i18, false);
        }
        List[] listArr2 = this.f43608p;
        if (listArr2 != null) {
            int length2 = listArr2.length;
            for (int i19 = 0; i19 < length2; i19++) {
                List list6 = this.f43608p[i19];
                if (list6 != null) {
                    int size7 = list6.size();
                    for (int i20 = 0; i20 < size7; i20++) {
                        J2 j25 = (J2) list6.get(i20);
                        j25.a(dx.a(i19, j25.f41273b, false));
                    }
                }
            }
        }
        if (this.f43616x) {
            for (H h10 = this.f43609q.f42825c; h10 != null; h10 = h10.f40643e) {
                if (h10 instanceof YQ) {
                    ((YQ) h10).f45986g = null;
                }
            }
        }
        List list7 = this.f43603k;
        if (list7 != null) {
            int size8 = list7.size();
            for (int i21 = 0; i21 < size8; i21++) {
                dx.a((K4) this.f43603k.get(i21));
            }
        }
        if (this.f43609q.f42824b > 0) {
            dx.b();
            List list8 = this.f43610r;
            if (list8 != null) {
                int size9 = list8.size();
                for (int i22 = 0; i22 < size9; i22++) {
                    C8996pt0 c8996pt0 = (C8996pt0) this.f43610r.get(i22);
                    int i23 = (i22 << 8) | CompilerOptions.UnstableAutoModuleName;
                    List list9 = c8996pt0.f51654e;
                    if (list9 != null) {
                        int size10 = list9.size();
                        for (int i24 = 0; i24 < size10; i24++) {
                            ((C8498mu0) c8996pt0.f51654e.get(i24)).f50454d = i23;
                        }
                    }
                    List list10 = c8996pt0.f51655f;
                    if (list10 != null) {
                        int size11 = list10.size();
                        for (int i25 = 0; i25 < size11; i25++) {
                            ((C8498mu0) c8996pt0.f51655f.get(i25)).f50454d = i23;
                        }
                    }
                    ((C8996pt0) this.f43610r.get(i22)).a(dx);
                }
            }
            for (H h11 = this.f43609q.f42825c; h11 != null; h11 = h11.f40643e) {
                h11.a(dx);
            }
            List list11 = this.f43613u;
            if (list11 != null) {
                int size12 = list11.size();
                for (int i26 = 0; i26 < size12; i26++) {
                    ST st = (ST) this.f43613u.get(i26);
                    dx.a(st.f44212a, st.f44213b, st.f44214c, st.f44215d.b(), st.f44216e.b(), st.f44217f);
                }
            }
            List list12 = this.f43614v;
            if (list12 != null) {
                int size13 = list12.size();
                for (int i27 = 0; i27 < size13; i27++) {
                    ((RT) this.f43614v.get(i27)).a(dx, true);
                }
            }
            List list13 = this.f43615w;
            if (list13 != null) {
                int size14 = list13.size();
                for (int i28 = 0; i28 < size14; i28++) {
                    ((RT) this.f43615w.get(i28)).a(dx, false);
                }
            }
            dx.c(this.f43611s, this.f43612t);
            this.f43616x = true;
        }
        dx.c();
    }
}
