package com.android.tools.r8.dex;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.A5;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.P5;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.graph.Z2;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;

public final class A {

    public static final boolean f35656j = true;

    public final C4723u0 f35657a;

    public final C4500i3 f35658b;

    public final ArrayList f35659c;

    public ArrayList f35660d = null;

    public final H3.b f35661e;

    public final C4615o5 f35662f;

    public final List f35663g;

    public final List f35664h;

    public final List f35665i;

    /* JADX WARN: Code restructure failed: missing block: B:192:0x039b, code lost:
    
        if (r5.e() != false) goto L172;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public A(M2 m22, Origin origin, C4723u0 c4723u0, C8570nJ c8570nJ) {
        C4425e4 c4425e4;
        A2 a22;
        ArrayList arrayList;
        C4425e4 c4425e42;
        ArrayList arrayList2;
        R2.b bVar;
        C4723u0 c4723u02 = c4723u0;
        C8570nJ c8570nJ2 = c8570nJ;
        C4425e4 c4425e43 = null;
        this.f35658b = null;
        this.f35659c = null;
        this.f35661e = H3.b.f();
        List list = Collections.EMPTY_LIST;
        this.f35663g = list;
        this.f35664h = list;
        this.f35665i = list;
        this.f35657a = c4723u02;
        C4724u1 m10 = c8570nJ.m();
        M2 m23 = null;
        A2 a23 = null;
        ArrayList arrayList3 = null;
        int i10 = 0;
        while (true) {
            C4666r0[] c4666r0Arr = c4723u02.f37806d;
            if (i10 >= c4666r0Arr.length) {
                C4425e4 c4425e44 = c4425e43;
                A2 a24 = a23;
                ArrayList arrayList4 = arrayList3;
                if (m23 != null || a24 != null) {
                    if (!f35656j && m23 != null && a24 != null) {
                        throw new AssertionError();
                    }
                    if (a24 != null) {
                        this.f35658b = new C4500i3(a24);
                    } else {
                        ArrayList arrayList5 = this.f35659c;
                        if (arrayList5 != null) {
                            int size = arrayList5.size();
                            int i11 = 0;
                            while (true) {
                                if (i11 >= size) {
                                    break;
                                }
                                Object obj = arrayList5.get(i11);
                                i11++;
                                c4425e4 = (C4425e4) obj;
                                if (m22 == c4425e4.b()) {
                                }
                            }
                        }
                        c4425e4 = c4425e44;
                        if (c4425e4 == null) {
                            this.f35658b = new C4500i3(m23);
                        } else {
                            if (!f35656j && this.f35659c == null) {
                                throw new AssertionError();
                            }
                            this.f35659c.remove(c4425e4);
                            this.f35659c.add(new C4425e4(c4425e4.a(), m22, m23, c4425e4.c()));
                        }
                    }
                }
                if (arrayList4 != null) {
                    if (this.f35659c == null) {
                        this.f35659c = new ArrayList(arrayList4.size());
                    }
                    int size2 = arrayList4.size();
                    int i12 = 0;
                    while (i12 < size2) {
                        Object obj2 = arrayList4.get(i12);
                        i12++;
                        this.f35659c.add(new C4425e4(0, (M2) obj2, m22, C4724u1.f37809F6));
                    }
                    return;
                }
                return;
            }
            C4666r0 c4666r0 = c4666r0Arr[i10];
            M2 m24 = c4666r0.f37693c.f37142b;
            if (m24 == m10.f38199y5) {
                a(i10);
                m23 = C4666r0.a(c4666r0, m10);
            } else if (m24 == m10.f38207z5) {
                a(i10);
                a23 = C4666r0.b(c4666r0, m10);
            } else {
                if (m24 == m10.f37821A5) {
                    a(i10);
                    if (this.f35659c == null) {
                        this.f35659c = new ArrayList(c4723u02.f37806d.length - i10);
                    }
                    if (!C4666r0.f37691e && c4666r0.f37693c.f37142b != m10.f37821A5) {
                        throw new AssertionError();
                    }
                    C4704t0[] c4704t0Arr = c4666r0.f37693c.f37143c;
                    C8699o50 c8699o50 = new C8699o50(c4425e43, c4425e43);
                    for (C4704t0 c4704t0 : c4704t0Arr) {
                        if (c4704t0.f37738b != m10.b("name")) {
                            if (!C4666r0.f37691e && c4704t0.f37738b != m10.b("accessFlags")) {
                                throw new AssertionError();
                            }
                            c8699o50.f51167b = Integer.valueOf(c4704t0.f37739c.w0().W0());
                        } else if (c4704t0.f37739c.R0()) {
                            c8699o50.f51166a = (L2) c4704t0.f37739c.D0().W0();
                        }
                    }
                    this.f35659c.add(new C4425e4(((Integer) c8699o50.b()).intValue(), m22, null, (L2) c8699o50.a()));
                } else if (m24 == m10.f37829B5) {
                    a(i10);
                    ArrayList c10 = C4666r0.c(c4666r0, m10);
                    if (arrayList3 == null) {
                        arrayList3 = c10;
                        c4425e42 = null;
                        i10++;
                        c4723u02 = c4723u0;
                        c8570nJ2 = c8570nJ;
                        c4425e43 = c4425e42;
                    } else if (c10 != null) {
                        arrayList3.addAll(c10);
                    }
                } else if (!C4666r0.d(c4666r0, m10) || c8570nJ2.f50736y) {
                    M2 m25 = c4666r0.f37693c.f37142b;
                    if (m25 == m10.f37853E5) {
                        a(i10);
                        R2 a10 = C4666r0.a(m10.f37853E5, c4666r0);
                        this.f35662f = new C4615o5(a10 == null ? null : (M2) a10.E0().W0());
                    } else if (m25 == m10.f37860F5) {
                        a(i10);
                        ArrayList b10 = C4666r0.b(m10.f37860F5, c4666r0);
                        if (b10 != null) {
                            this.f35663g = new ArrayList(b10.size());
                            int size3 = b10.size();
                            int i13 = 0;
                            while (i13 < size3) {
                                Object obj3 = b10.get(i13);
                                i13++;
                                this.f35663g.add(new C4634p5((M2) obj3));
                            }
                        }
                    } else if (m25 == m10.f37867G5) {
                        a(i10);
                        ArrayList b11 = C4666r0.b(m10.f37867G5, c4666r0);
                        if (b11 != null) {
                            this.f35664h = AT.a((Collection) b11, new Function() {
                                @Override
                                public final Object apply(Object obj4) {
                                    return new A5((M2) obj4);
                                }
                            });
                        }
                    } else {
                        if (c4666r0.l0() == m10.f37874H5) {
                            a(i10);
                            R2 a11 = C4666r0.a(m10.f37874H5, c4666r0, m10.f37881I5);
                            R2 a12 = C4666r0.a(m10.f37874H5, c4666r0, m10.f37888J5);
                            R2 a13 = C4666r0.a(m10.f37874H5, c4666r0, m10.f37895K5);
                            R2 a14 = C4666r0.a(m10.f37874H5, c4666r0, m10.f37902L5);
                            R2 a15 = C4666r0.a(m10.f37874H5, c4666r0, m10.f37909M5);
                            if (a11 != null && a12 != null && a13 != null && a14 != null && a15 != null && (a11 instanceof R2.b) && (a12 instanceof R2.b) && (a13 instanceof R2.b) && (a14 instanceof R2.b) && (a15 instanceof R2.b)) {
                                R2.b n02 = a11.n0();
                                R2.b n03 = a12.n0();
                                R2.b n04 = a13.n0();
                                R2.b n05 = a14.n0();
                                R2.b n06 = a15.n0();
                                R2[] r2Arr = n02.f36740d;
                                if (r2Arr.length == n03.f36740d.length && r2Arr.length == n04.f36740d.length && r2Arr.length == n05.f36740d.length && r2Arr.length == n06.f36740d.length) {
                                    arrayList2 = new ArrayList(n02.f36740d.length);
                                    int i14 = 0;
                                    while (true) {
                                        R2[] r2Arr2 = n02.f36740d;
                                        R2.b bVar2 = n02;
                                        if (i14 >= r2Arr2.length) {
                                            a22 = a23;
                                            arrayList = arrayList3;
                                            c4425e42 = null;
                                            break;
                                        }
                                        R2 r22 = r2Arr2[i14];
                                        R2 r23 = n03.f36740d[i14];
                                        R2.b bVar3 = n03;
                                        R2 r24 = n04.f36740d[i14];
                                        R2.b bVar4 = n04;
                                        R2 r25 = n05.f36740d[i14];
                                        R2.b bVar5 = n05;
                                        R2 r26 = n06.f36740d[i14];
                                        if (!r22.R0() || !r23.S0()) {
                                            break;
                                        }
                                        if (!r24.H0()) {
                                            bVar = n06;
                                            if (!(r24 instanceof Z2)) {
                                                break;
                                            }
                                        } else {
                                            bVar = n06;
                                        }
                                        r25.getClass();
                                        if (!(r25 instanceof R2.b)) {
                                            break;
                                        }
                                        r26.getClass();
                                        if (!(r26 instanceof R2.b)) {
                                            break;
                                        }
                                        R2.b n07 = r25.n0();
                                        R2.b n08 = r26.n0();
                                        int length = n07.f36740d.length;
                                        arrayList = arrayList3;
                                        R2[] r2Arr3 = n08.f36740d;
                                        a22 = a23;
                                        if (length != r2Arr3.length) {
                                            break;
                                        }
                                        List list2 = Collections.EMPTY_LIST;
                                        if (r2Arr3.length > 0) {
                                            list2 = new ArrayList(n08.f36740d.length);
                                            int i15 = 0;
                                            while (true) {
                                                R2[] r2Arr4 = n08.f36740d;
                                                R2.b bVar6 = n08;
                                                if (i15 >= r2Arr4.length) {
                                                    break;
                                                }
                                                R2 r27 = n07.f36740d[i15];
                                                R2 r28 = r2Arr4[i15];
                                                if (!r27.J0() || !r28.H0()) {
                                                    break;
                                                }
                                                list2.add(new C4666r0(r27.p0().W0(), r28.m0().f36739d));
                                                i15++;
                                                n08 = bVar6;
                                                n07 = n07;
                                            }
                                        }
                                        arrayList2.add(new P5(m10.a(m22, (M2) r23.E0().W0(), (L2) r22.D0().W0()), H3.b(((L2) r22.D0().W0()).toString(), r24.H0() ? C4666r0.a(r24.m0().f36739d) : null, origin, m10, null), list2));
                                        i14++;
                                        n02 = bVar2;
                                        n03 = bVar3;
                                        n04 = bVar4;
                                        n05 = bVar5;
                                        n06 = bVar;
                                        arrayList3 = arrayList;
                                        a23 = a22;
                                    }
                                }
                            }
                            a22 = a23;
                            arrayList = arrayList3;
                            c4425e42 = null;
                            arrayList2 = null;
                            if (arrayList2 != null) {
                                this.f35665i = arrayList2;
                            }
                        } else {
                            a22 = a23;
                            arrayList = arrayList3;
                            c4425e42 = null;
                            ArrayList arrayList6 = this.f35660d;
                            if (arrayList6 != null) {
                                arrayList6.add(c4666r0);
                            }
                        }
                        arrayList3 = arrayList;
                        a23 = a22;
                        i10++;
                        c4723u02 = c4723u0;
                        c8570nJ2 = c8570nJ;
                        c4425e43 = c4425e42;
                    }
                } else {
                    a(i10);
                    this.f35661e = H3.a(m22.x0(), C4666r0.a(c4666r0), origin, m10, c8570nJ2.f50691j);
                }
                a22 = a23;
                arrayList = arrayList3;
                c4425e42 = null;
                arrayList3 = arrayList;
                a23 = a22;
                i10++;
                c4723u02 = c4723u0;
                c8570nJ2 = c8570nJ;
                c4425e43 = c4425e42;
            }
            c4425e42 = c4425e43;
            i10++;
            c4723u02 = c4723u0;
            c8570nJ2 = c8570nJ;
            c4425e43 = c4425e42;
        }
    }

    public final void a(int i10) {
        if (this.f35660d == null) {
            ArrayList arrayList = new ArrayList(this.f35657a.f37806d.length);
            this.f35660d = arrayList;
            arrayList.addAll(Arrays.asList(this.f35657a.f37806d).subList(0, i10));
        }
    }
}
