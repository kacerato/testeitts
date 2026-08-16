package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class C8777oc extends C9189r2 {

    public final C6867d6 f51293j;

    public OD f51294k;

    public int f51295l;

    public C8777oc(C6867d6 c6867d6) {
        super(c6867d6);
        this.f51293j = c6867d6;
    }

    public final C6700c6 a(C7676hy c7676hy, Object obj) {
        if (obj == 0) {
            C9663tt0 c9663tt0 = C6867d6.f47279a;
            return C6700c6.f46964b;
        }
        if (obj == 1) {
            return C6700c6.f46965c;
        }
        if (obj == 2) {
            return C6700c6.f46966d;
        }
        if (obj == 4) {
            return C6700c6.f46967e;
        }
        if (obj == 3) {
            return C6700c6.f46968f;
        }
        if (obj == 5) {
            return this.f51293j.a(new PD(1));
        }
        if (obj == 6) {
            return C6867d6.a(C9663tt0.d("dummy"));
        }
        if (obj instanceof String) {
            return C6867d6.a(C9663tt0.d((String) obj));
        }
        if (obj instanceof YQ) {
            H h10 = (YQ) obj;
            while (h10 != null && h10.f40639a < 0) {
                h10 = h10.f40643e;
            }
            if (h10 != null && h10.f40639a == 187) {
                return C6867d6.a(C9663tt0.d(((C9166qu0) h10).f51909g));
            }
            throw new C9356s2(c7676hy, "LabelNode does not designate a NEW instruction");
        }
        throw new C9356s2(c7676hy, "Illegal stack map frame value " + obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0174 A[Catch: RuntimeException -> 0x00cc, s2 -> 0x00cf, TryCatch #1 {s2 -> 0x00cf, blocks: (B:37:0x008c, B:40:0x0092, B:47:0x00a4, B:51:0x00b5, B:53:0x00c7, B:54:0x016e, B:56:0x0174, B:57:0x0178, B:59:0x017e, B:61:0x0188, B:63:0x0193, B:64:0x018f, B:67:0x01ac, B:69:0x01b6, B:75:0x01bf, B:71:0x01bb, B:73:0x01c3, B:81:0x00d2, B:83:0x00d9, B:84:0x00e0, B:85:0x00e1, B:87:0x00e5, B:88:0x00f4, B:90:0x00fc, B:92:0x0110, B:93:0x0114, B:95:0x0118, B:96:0x0127, B:98:0x012f, B:100:0x0143, B:109:0x0157, B:110:0x015d, B:112:0x0161, B:113:0x0168, B:114:0x0169), top: B:36:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01b6 A[Catch: RuntimeException -> 0x00cc, s2 -> 0x00cf, TryCatch #1 {s2 -> 0x00cf, blocks: (B:37:0x008c, B:40:0x0092, B:47:0x00a4, B:51:0x00b5, B:53:0x00c7, B:54:0x016e, B:56:0x0174, B:57:0x0178, B:59:0x017e, B:61:0x0188, B:63:0x0193, B:64:0x018f, B:67:0x01ac, B:69:0x01b6, B:75:0x01bf, B:71:0x01bb, B:73:0x01c3, B:81:0x00d2, B:83:0x00d9, B:84:0x00e0, B:85:0x00e1, B:87:0x00e5, B:88:0x00f4, B:90:0x00fc, B:92:0x0110, B:93:0x0114, B:95:0x0118, B:96:0x0127, B:98:0x012f, B:100:0x0143, B:109:0x0157, B:110:0x015d, B:112:0x0161, B:113:0x0168, B:114:0x0169), top: B:36:0x008c }] */
    /* JADX WARN: Type inference failed for: r14v25, types: [com.android.tools.r8.internal.H] */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.android.tools.r8.internal.H] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(C8944pc c8944pc) {
        C7676hy c7676hy;
        H h10;
        List<C8996pt0> list;
        H h11;
        this.f51294k = c8944pc.f43609q;
        int c10 = C9663tt0.c(c8944pc.f43597e) >> 2;
        this.f51295l = c10;
        if ((c8944pc.f43595c & 8) != 0) {
            this.f51295l = c10 - 1;
        }
        C7342fy[] c7342fyArr = this.f51946e;
        C7342fy a10 = C9189r2.a(c7342fyArr[0]);
        OD od2 = c8944pc.f43609q;
        od2.getClass();
        int i10 = od2.f42824b;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 == 0) {
            c7676hy = null;
        } else {
            ?? r72 = od2.f42825c;
            H h12 = r72.f40642d;
            c7676hy = r72;
        }
        int i11 = -1;
        int i12 = 0;
        C7342fy c7342fy = a10;
        C7676hy c7676hy2 = c7676hy;
        while (c7676hy2 != null) {
            ?? r14 = c7676hy2.f40643e;
            boolean z10 = c7676hy2 instanceof C7676hy;
            if (z10) {
                try {
                    c7342fy = a(c7342fy, c7676hy2);
                    for (int i13 = i11 + 1; i13 <= i12; i13++) {
                        this.f51946e[i13] = c7342fy;
                    }
                } catch (C9356s2 e10) {
                    throw new C9356s2(e10.f52254b, "Error at instruction " + i12 + ": " + e10.getMessage(), e10);
                }
            }
            if (c7676hy2.f40639a >= 0 || z10) {
                i11 = i12;
            }
            i12++;
            c7676hy2 = r14;
        }
        for (int i14 = 0; i14 < this.f51294k.f42824b; i14++) {
            C7342fy c7342fy2 = c7342fyArr[i14];
            try {
                try {
                    h10 = c8944pc.f43609q.j(i14);
                } catch (RuntimeException e11) {
                    e = e11;
                    h10 = null;
                }
                try {
                    int i15 = h10.f40639a;
                    int a11 = h10.a();
                    if (a11 != 8 && a11 != 15 && a11 != 14) {
                        a10.a(c7342fy2).a(h10, this.f51293j);
                        if (h10 instanceof C9241rL) {
                            if (i15 == 168) {
                                throw new C9356s2(h10, "JSR instructions are unsupported");
                            }
                            a(this.f51294k.b(((C9241rL) h10).f52025g), a10, true);
                            if (i15 == 167) {
                                a(i14);
                            } else {
                                a(i14 + 1, a10, false);
                            }
                        } else if (h10 instanceof C9927vU) {
                            C9927vU c9927vU = (C9927vU) h10;
                            a(this.f51294k.b(c9927vU.f53128g), a10, true);
                            for (int i16 = 0; i16 < c9927vU.f53130i.size(); i16++) {
                                a(this.f51294k.b((YQ) c9927vU.f53130i.get(i16)), a10, true);
                            }
                            a(i14);
                        } else if (h10 instanceof C10158wr0) {
                            C10158wr0 c10158wr0 = (C10158wr0) h10;
                            a(this.f51294k.b(c10158wr0.f53628i), a10, true);
                            for (int i17 = 0; i17 < c10158wr0.f53629j.size(); i17++) {
                                a(this.f51294k.b((YQ) c10158wr0.f53629j.get(i17)), a10, true);
                            }
                            a(i14);
                        } else {
                            if (i15 == 169) {
                                throw new C9356s2(h10, "RET instructions are unsupported");
                            }
                            if (i15 == 191 || (i15 >= 172 && i15 <= 177)) {
                                a(i14);
                            } else {
                                a(i14 + 1, a10, false);
                            }
                        }
                        list = this.f51945d[i14];
                        if (list != null) {
                            for (C8996pt0 c8996pt0 : list) {
                                String str = c8996pt0.f51653d;
                                C9663tt0 d10 = str == null ? C9663tt0.d("java/lang/Throwable") : C9663tt0.d(str);
                                C7342fy a12 = C9189r2.a(c7342fy2);
                                a12.f48153d = 0;
                                a12.a(C6867d6.a(d10));
                                a(this.f51294k.b(c8996pt0.f51652c), a12, true);
                            }
                        }
                        for (h11 = this.f51294k.j(i14).f40643e; h11 != null; h11 = h11.f40643e) {
                            if (h11.f40639a < 0 && !(h11 instanceof C7676hy)) {
                            }
                        }
                        return;
                    }
                    a(i14 + 1, c7342fy2, false);
                    list = this.f51945d[i14];
                    if (list != null) {
                    }
                    while (h11 != null) {
                    }
                    return;
                } catch (RuntimeException e12) {
                    e = e12;
                    throw new C9356s2(h10, "Error at instruction " + i14 + ": " + e.getMessage(), e);
                }
            } catch (C9356s2 e13) {
                throw new C9356s2(e13.f52254b, "Error at instruction " + i14 + ": " + e13.getMessage(), e13);
            }
        }
    }

    public final void a(int i10) {
        for (H h10 = this.f51294k.j(i10).f40643e; h10 != null; h10 = h10.f40643e) {
            if (h10.f40639a >= 0 || (h10 instanceof C7676hy)) {
                int i11 = i10 + 1;
                if (this.f51946e[i11] == null) {
                    throw new C9356s2(null, T60.a(i11, "Expected stack map frame at instruction "));
                }
                return;
            }
        }
    }

    public final void a(int i10, C7342fy c7342fy, boolean z10) {
        String str;
        C7342fy[] c7342fyArr = this.f51946e;
        C7342fy c7342fy2 = c7342fyArr[i10];
        if (c7342fy2 == null) {
            if (!z10) {
                c7342fyArr[i10] = C9189r2.a(c7342fy);
                return;
            }
            throw new C9356s2(null, T60.a(i10, "Expected stack map frame at instruction "));
        }
        int i11 = c7342fy.f48152c;
        if (i11 != c7342fy2.f48152c) {
            throw new AssertionError();
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i13 < i11) {
                C6700c6 c6700c6 = (C6700c6) c7342fy.a(i13);
                if (!c6700c6.equals((C6700c6) c7342fy2.a(i13))) {
                    c6700c6 = C6700c6.f46964b;
                }
                if (!c6700c6.equals(c7342fy2.a(i13))) {
                    str = "incompatible types at local " + i13 + ": " + ((Object) c7342fy.a(i13)) + " and " + ((Object) c7342fy2.a(i13));
                    break;
                }
                i13++;
            } else {
                int i14 = c7342fy.f48153d;
                if (i14 == c7342fy2.f48153d) {
                    while (true) {
                        if (i12 >= i14) {
                            str = null;
                            break;
                        }
                        C6700c6 c6700c62 = (C6700c6) c7342fy.f48151b[c7342fy.f48152c + i12];
                        if (!c6700c62.equals((C6700c6) c7342fy2.f48151b[c7342fy2.f48152c + i12])) {
                            c6700c62 = C6700c6.f46964b;
                        }
                        if (!c6700c62.equals(c7342fy2.f48151b[c7342fy2.f48152c + i12])) {
                            str = "incompatible types at stack item " + i12 + ": " + ((Object) c7342fy.f48151b[c7342fy.f48152c + i12]) + " and " + ((Object) c7342fy2.f48151b[c7342fy2.f48152c + i12]);
                            break;
                        }
                        i12++;
                    }
                } else {
                    str = "incompatible stack heights";
                }
            }
        }
        if (str == null) {
            return;
        }
        throw new C9356s2(null, "Stack map frame incompatible with frame at instruction " + i10 + " (" + str + ")");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a8 A[LOOP:0: B:18:0x00a4->B:20:0x00a8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c5 A[LOOP:1: B:26:0x00bf->B:28:0x00c5, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7342fy a(C7342fy c7342fy, C7676hy c7676hy) {
        List list;
        Iterator it;
        int i10 = c7342fy.f48152c;
        C7342fy c7342fy2 = new C7342fy(i10, c7342fy.f48151b.length - i10);
        c7342fy2.a(c7342fy);
        List list2 = c7676hy.f48745h;
        if (list2 == null) {
            list2 = Collections.EMPTY_LIST;
        }
        int i11 = this.f51295l;
        int i12 = c7676hy.f48744g;
        if (i12 == -1 || i12 == 0) {
            i11 = 0;
        } else if (i12 != 1) {
            if (i12 == 2) {
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    if (i11 > 0) {
                        i11 = (i11 <= 1 || ((C6700c6) c7342fy2.a(i11 + (-2))).a() != 2) ? i11 - 1 : i11 - 2;
                    } else {
                        throw new C9356s2(c7676hy, "Cannot chop more locals than defined");
                    }
                }
            } else if (i12 != 3 && i12 != 4) {
                throw new C9356s2(c7676hy, T60.a(c7676hy.f48744g, "Illegal frame type "));
            }
            this.f51295l = i11;
            while (i11 < c7342fy2.f48152c) {
                C9663tt0 c9663tt0 = C6867d6.f47279a;
                c7342fy2.a(i11, C6700c6.f46964b);
                i11++;
            }
            list = c7676hy.f48746i;
            if (list == null) {
                list = Collections.EMPTY_LIST;
            }
            c7342fy2.f48153d = 0;
            it = list.iterator();
            while (it.hasNext()) {
                c7342fy2.a(a(c7676hy, it.next()));
            }
            return c7342fy2;
        }
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            C6700c6 a10 = a(c7676hy, it3.next());
            if (a10.a() + i11 <= c7342fy2.f48152c) {
                int i13 = i11 + 1;
                c7342fy2.a(i11, a10);
                if (a10.a() == 2) {
                    i11 += 2;
                    C9663tt0 c9663tt02 = C6867d6.f47279a;
                    c7342fy2.a(i13, C6700c6.f46964b);
                } else {
                    i11 = i13;
                }
            } else {
                throw new C9356s2(c7676hy, "Cannot append more locals than maxLocals");
            }
        }
        this.f51295l = i11;
        while (i11 < c7342fy2.f48152c) {
        }
        list = c7676hy.f48746i;
        if (list == null) {
        }
        c7342fy2.f48153d = 0;
        it = list.iterator();
        while (it.hasNext()) {
        }
        return c7342fy2;
    }
}
