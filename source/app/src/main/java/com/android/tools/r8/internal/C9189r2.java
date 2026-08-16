package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class C9189r2 {

    public final C6867d6 f51942a;

    public OD f51943b;

    public int f51944c;

    public List[] f51945d;

    public C7342fy[] f51946e;

    public C5870Rq0[] f51947f;

    public boolean[] f51948g;

    public int[] f51949h;

    public int f51950i;

    public C9189r2(C6867d6 c6867d6) {
        this.f51942a = c6867d6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x01fa, code lost:
    
        throw new com.android.tools.r8.internal.C9356s2(r15, "RET instruction outside of a subroutine");
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x024f A[Catch: RuntimeException -> 0x012e, s2 -> 0x0132, TryCatch #0 {s2 -> 0x0132, blocks: (B:51:0x00ec, B:53:0x00f2, B:60:0x0106, B:63:0x0119, B:65:0x011d, B:68:0x0128, B:69:0x0135, B:71:0x0141, B:74:0x0249, B:76:0x024f, B:77:0x0253, B:79:0x0259, B:81:0x0263, B:83:0x026e, B:84:0x026a, B:89:0x014e, B:90:0x0152, B:92:0x0156, B:93:0x0165, B:95:0x016d, B:97:0x0181, B:99:0x0185, B:100:0x0194, B:102:0x019c, B:108:0x01b7, B:110:0x01bf, B:112:0x01d3, B:114:0x01ee, B:119:0x01f3, B:120:0x01fa, B:129:0x020a, B:131:0x020f, B:139:0x0228, B:140:0x022d, B:142:0x0231, B:143:0x023a, B:144:0x0113, B:145:0x0241), top: B:50:0x00ec }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ac A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C8944pc c8944pc) {
        H h10;
        List<C8996pt0> list;
        C9663tt0 d10;
        C5870Rq0 c5870Rq0;
        int i10;
        C5870Rq0 c5870Rq02;
        if ((c8944pc.f43595c & 1280) != 0) {
            this.f51946e = new C7342fy[0];
            return;
        }
        OD od2 = c8944pc.f43609q;
        this.f51943b = od2;
        int i11 = od2.f42824b;
        this.f51944c = i11;
        this.f51945d = new List[i11];
        this.f51946e = new C7342fy[i11];
        this.f51947f = new C5870Rq0[i11];
        this.f51948g = new boolean[i11];
        this.f51949h = new int[i11];
        this.f51950i = 0;
        for (int i12 = 0; i12 < c8944pc.f43610r.size(); i12++) {
            C8996pt0 c8996pt0 = (C8996pt0) c8944pc.f43610r.get(i12);
            int b10 = this.f51943b.b(c8996pt0.f51651b);
            for (int b11 = this.f51943b.b(c8996pt0.f51650a); b11 < b10; b11++) {
                List list2 = this.f51945d[b11];
                if (list2 == null) {
                    list2 = new ArrayList();
                    this.f51945d[b11] = list2;
                }
                list2.add(c8996pt0);
            }
        }
        int i13 = c8944pc.f43612t;
        C5870Rq0 c5870Rq03 = null;
        C5870Rq0 c5870Rq04 = new C5870Rq0(null, i13, null);
        ArrayList arrayList = new ArrayList();
        a(0, c5870Rq04, arrayList);
        HashMap hashMap = new HashMap();
        while (!arrayList.isEmpty()) {
            C9241rL c9241rL = (C9241rL) arrayList.remove(0);
            C5870Rq0 c5870Rq05 = (C5870Rq0) hashMap.get(c9241rL.f52025g);
            if (c5870Rq05 == null) {
                C5870Rq0 c5870Rq06 = new C5870Rq0(c9241rL.f52025g, i13, c9241rL);
                hashMap.put(c9241rL.f52025g, c5870Rq06);
                a(this.f51943b.b(c9241rL.f52025g), c5870Rq06, arrayList);
            } else {
                c5870Rq05.f44008c.add(c9241rL);
            }
        }
        for (int i14 = 0; i14 < this.f51944c; i14++) {
            C5870Rq0[] c5870Rq0Arr = this.f51947f;
            C5870Rq0 c5870Rq07 = c5870Rq0Arr[i14];
            if (c5870Rq07 != null && c5870Rq07.f44006a == null) {
                c5870Rq0Arr[i14] = null;
            }
        }
        try {
            C7342fy c10 = c(c8944pc);
            a(0, c10, (C5870Rq0) null);
            d(c8944pc);
            while (true) {
                int i15 = this.f51950i;
                if (i15 <= 0) {
                    return;
                }
                int[] iArr = this.f51949h;
                int i16 = i15 - 1;
                this.f51950i = i16;
                int i17 = iArr[i16];
                C7342fy c7342fy = this.f51946e[i17];
                C5870Rq0 c5870Rq08 = this.f51947f[i17];
                this.f51948g[i17] = false;
                try {
                    try {
                        H j10 = c8944pc.f43609q.j(i17);
                        try {
                            int i18 = j10.f40639a;
                            int a10 = j10.a();
                            if (a10 != 8 && a10 != 15 && a10 != 14) {
                                c10.a(c7342fy).a(j10, this.f51942a);
                                C5870Rq0 c5870Rq09 = c5870Rq08 == null ? c5870Rq03 : new C5870Rq0(c5870Rq08);
                                if (j10 instanceof C9241rL) {
                                    C9241rL c9241rL2 = (C9241rL) j10;
                                    if (i18 != 167 && i18 != 168) {
                                        a(i17 + 1, c10, c5870Rq09);
                                    }
                                    int b12 = this.f51943b.b(c9241rL2.f52025g);
                                    YQ yq = c9241rL2.f52025g;
                                    if (i18 == 168) {
                                        a(b12, c10, new C5870Rq0(yq, c8944pc.f43612t, c9241rL2));
                                    } else {
                                        a(b12, c10, c5870Rq09);
                                    }
                                } else if (j10 instanceof C9927vU) {
                                    C9927vU c9927vU = (C9927vU) j10;
                                    a(this.f51943b.b(c9927vU.f53128g), c10, c5870Rq09);
                                    for (int i19 = 0; i19 < c9927vU.f53130i.size(); i19++) {
                                        a(this.f51943b.b((YQ) c9927vU.f53130i.get(i19)), c10, c5870Rq09);
                                    }
                                } else if (j10 instanceof C10158wr0) {
                                    C10158wr0 c10158wr0 = (C10158wr0) j10;
                                    a(this.f51943b.b(c10158wr0.f53628i), c10, c5870Rq09);
                                    for (int i20 = 0; i20 < c10158wr0.f53629j.size(); i20++) {
                                        a(this.f51943b.b((YQ) c10158wr0.f53629j.get(i20)), c10, c5870Rq09);
                                    }
                                } else if (i18 == 169) {
                                    if (c5870Rq09 == null) {
                                        break;
                                    }
                                    int i21 = 0;
                                    while (i21 < c5870Rq09.f44008c.size()) {
                                        int b13 = this.f51943b.b((C9241rL) c5870Rq09.f44008c.get(i21));
                                        C7342fy c7342fy2 = this.f51946e[b13];
                                        if (c7342fy2 != null) {
                                            i10 = i21;
                                            c5870Rq02 = c5870Rq09;
                                            a(b13 + 1, c7342fy2, c10, this.f51947f[b13], c5870Rq09.f44007b);
                                        } else {
                                            i10 = i21;
                                            c5870Rq02 = c5870Rq09;
                                        }
                                        i21 = i10 + 1;
                                        c5870Rq09 = c5870Rq02;
                                    }
                                } else {
                                    c5870Rq0 = c5870Rq09;
                                    if (i18 != 191 && (i18 < 172 || i18 > 177)) {
                                        if (c5870Rq0 != null) {
                                            if (j10 instanceof C5940Sw0) {
                                                int i22 = ((C5940Sw0) j10).f44341g;
                                                boolean[] zArr = c5870Rq0.f44007b;
                                                zArr[i22] = true;
                                                if (i18 == 22 || i18 == 24 || i18 == 55 || i18 == 57) {
                                                    zArr[i22 + 1] = true;
                                                }
                                            } else if (j10 instanceof PB) {
                                                c5870Rq0.f44007b[((PB) j10).f43160g] = true;
                                            }
                                        }
                                        a(i17 + 1, c10, c5870Rq0);
                                    }
                                    c5870Rq08 = c5870Rq0;
                                    list = this.f51945d[i17];
                                    if (list != null) {
                                        for (C8996pt0 c8996pt02 : list) {
                                            String str = c8996pt02.f51653d;
                                            if (str == null) {
                                                d10 = C9663tt0.d("java/lang/Throwable");
                                            } else {
                                                d10 = C9663tt0.d(str);
                                            }
                                            this.f51943b.b(c8996pt02.f51652c);
                                            C7342fy a11 = a(c7342fy);
                                            a11.f48153d = 0;
                                            C6700c6 a12 = C6867d6.a(d10);
                                            a11.a(a12);
                                            a(this.f51943b.b(c8996pt02.f51652c), a11, c5870Rq08);
                                            int i23 = c10.f48152c;
                                            C7342fy c7342fy3 = new C7342fy(i23, c10.f48151b.length - i23);
                                            c7342fy3.a(c10);
                                            c7342fy3.f48153d = 0;
                                            c7342fy3.a(a12);
                                            a(this.f51943b.b(c8996pt02.f51652c), c7342fy3, c5870Rq08);
                                        }
                                    }
                                    c5870Rq03 = null;
                                }
                                c5870Rq0 = c5870Rq09;
                                c5870Rq08 = c5870Rq0;
                                list = this.f51945d[i17];
                                if (list != null) {
                                }
                                c5870Rq03 = null;
                            }
                            c10.a(c7342fy);
                            a(i17 + 1, c7342fy, c5870Rq08);
                            list = this.f51945d[i17];
                            if (list != null) {
                            }
                            c5870Rq03 = null;
                        } catch (RuntimeException e10) {
                            e = e10;
                            h10 = j10;
                            throw new C9356s2(h10, "Error at instruction " + i17 + ": " + e.getMessage(), e);
                        }
                    } catch (C9356s2 e11) {
                        throw new C9356s2(e11.f52254b, "Error at instruction " + i17 + ": " + e11.getMessage(), e11);
                    }
                } catch (RuntimeException e12) {
                    e = e12;
                    h10 = null;
                }
            }
        } catch (RuntimeException e13) {
            throw new C9356s2(this.f51943b.j(0), AbstractC5091Ee0.a("Error at instruction 0: ", e13.getMessage()), e13);
        }
    }

    public final void b(C8944pc c8944pc) {
        H h10;
        int c10 = C9663tt0.c(c8944pc.f43597e) >> 2;
        if ((c8944pc.f43595c & 8) != 0) {
            c10--;
        }
        OD od2 = c8944pc.f43609q;
        od2.getClass();
        int i10 = od2.f42824b;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 == 0) {
            h10 = null;
        } else {
            h10 = od2.f42825c;
            H h11 = h10.f40642d;
        }
        while (h10 != null) {
            H h12 = h10.f40643e;
            if (h10 instanceof C5940Sw0) {
                int i11 = ((C5940Sw0) h10).f44341g;
                int i12 = h10.f40639a;
                c10 = Math.max(c10, i11 + ((i12 == 22 || i12 == 24 || i12 == 55 || i12 == 57) ? 2 : 1));
            } else if (h10 instanceof PB) {
                c10 = Math.max(c10, ((PB) h10).f43160g + 1);
            }
            h10 = h12;
        }
        c8944pc.f43612t = c10;
        c8944pc.f43611s = -1;
        a(c8944pc);
        int i13 = 0;
        for (C7342fy c7342fy : this.f51946e) {
            if (c7342fy != null) {
                int i14 = 0;
                for (int i15 = 0; i15 < c7342fy.f48153d; i15++) {
                    i14 += ((C6700c6) c7342fy.f48151b[c7342fy.f48152c + i15]).a();
                }
                i13 = Math.max(i13, i14);
            }
        }
        c8944pc.f43611s = i13;
    }

    public final C7342fy c(C8944pc c8944pc) {
        int i10;
        C7342fy c7342fy = new C7342fy(c8944pc.f43612t, c8944pc.f43611s);
        if ((c8944pc.f43595c & 8) == 0) {
            c7342fy.a(0, C6867d6.a(C9663tt0.d("dummy")));
            i10 = 1;
        } else {
            i10 = 0;
        }
        for (C9663tt0 c9663tt0 : C9663tt0.b(c8944pc.f43597e)) {
            c7342fy.a(i10, C6867d6.a(c9663tt0));
            int i11 = i10 + 1;
            switch (c9663tt0.f52722a) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 9:
                case 10:
                case 12:
                    i10 = i11;
                    break;
                case 7:
                case 8:
                    c7342fy.a(i11, C6700c6.f46964b);
                    i10 += 2;
                    break;
                case 11:
                default:
                    throw new AssertionError();
            }
        }
        while (i10 < c8944pc.f43612t) {
            C9663tt0 c9663tt02 = C6867d6.f47279a;
            c7342fy.a(i10, C6700c6.f46964b);
            i10++;
        }
        String str = c8944pc.f43597e;
        c7342fy.f48150a = C6867d6.a(C9663tt0.a(str, C9663tt0.e(str), str.length()));
        return c7342fy;
    }

    public void d(C8944pc c8944pc) {
    }

    public final void a(int i10, C5870Rq0 c5870Rq0, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Integer.valueOf(i10));
        while (!arrayList2.isEmpty()) {
            int intValue = ((Integer) arrayList2.remove(arrayList2.size() - 1)).intValue();
            if (intValue >= 0 && intValue < this.f51944c) {
                C5870Rq0[] c5870Rq0Arr = this.f51947f;
                if (c5870Rq0Arr[intValue] == null) {
                    c5870Rq0Arr[intValue] = new C5870Rq0(c5870Rq0);
                    H j10 = this.f51943b.j(intValue);
                    if (j10 instanceof C9241rL) {
                        if (j10.f40639a == 168) {
                            arrayList.add(j10);
                        } else {
                            arrayList2.add(Integer.valueOf(this.f51943b.b(((C9241rL) j10).f52025g)));
                        }
                    } else if (j10 instanceof C10158wr0) {
                        C10158wr0 c10158wr0 = (C10158wr0) j10;
                        a(this.f51943b.b(c10158wr0.f53628i), c5870Rq0, arrayList);
                        for (int size = c10158wr0.f53629j.size() - 1; size >= 0; size--) {
                            arrayList2.add(Integer.valueOf(this.f51943b.b((YQ) c10158wr0.f53629j.get(size))));
                        }
                    } else if (j10 instanceof C9927vU) {
                        C9927vU c9927vU = (C9927vU) j10;
                        a(this.f51943b.b(c9927vU.f53128g), c5870Rq0, arrayList);
                        for (int size2 = c9927vU.f53130i.size() - 1; size2 >= 0; size2--) {
                            arrayList2.add(Integer.valueOf(this.f51943b.b((YQ) c9927vU.f53130i.get(size2))));
                        }
                    }
                    List list = this.f51945d[intValue];
                    if (list != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(Integer.valueOf(this.f51943b.b(((C8996pt0) it.next()).f51652c)));
                        }
                    }
                    int i11 = j10.f40639a;
                    if (i11 != 167 && i11 != 191) {
                        switch (i11) {
                            case 169:
                            case 170:
                            case 171:
                            case 172:
                            case 173:
                            case 174:
                            case 175:
                            case 176:
                            case 177:
                                break;
                            default:
                                arrayList2.add(Integer.valueOf(intValue + 1));
                                break;
                        }
                    }
                }
            } else {
                throw new C9356s2(null, "Execution can fall off the end of the code");
            }
        }
    }

    public static C7342fy a(C7342fy c7342fy) {
        int i10 = c7342fy.f48152c;
        C7342fy c7342fy2 = new C7342fy(i10, c7342fy.f48151b.length - i10);
        c7342fy2.a(c7342fy);
        return c7342fy2;
    }

    public final void a(int i10, C7342fy c7342fy, C5870Rq0 c5870Rq0) {
        boolean a10;
        C7342fy[] c7342fyArr = this.f51946e;
        C7342fy c7342fy2 = c7342fyArr[i10];
        if (c7342fy2 == null) {
            int i11 = c7342fy.f48152c;
            C7342fy c7342fy3 = new C7342fy(i11, c7342fy.f48151b.length - i11);
            c7342fy3.a(c7342fy);
            c7342fyArr[i10] = c7342fy3;
            a10 = true;
        } else {
            a10 = c7342fy2.a(c7342fy, this.f51942a);
        }
        C5870Rq0[] c5870Rq0Arr = this.f51947f;
        C5870Rq0 c5870Rq02 = c5870Rq0Arr[i10];
        if (c5870Rq02 == null) {
            if (c5870Rq0 != null) {
                c5870Rq0Arr[i10] = new C5870Rq0(c5870Rq0);
                a10 = true;
            }
        } else if (c5870Rq0 != null) {
            a10 |= c5870Rq02.a(c5870Rq0);
        }
        if (a10) {
            boolean[] zArr = this.f51948g;
            if (zArr[i10]) {
                return;
            }
            zArr[i10] = true;
            int[] iArr = this.f51949h;
            int i12 = this.f51950i;
            this.f51950i = i12 + 1;
            iArr[i12] = i10;
        }
    }

    public final void a(int i10, C7342fy c7342fy, C7342fy c7342fy2, C5870Rq0 c5870Rq0, boolean[] zArr) {
        int i11;
        boolean a10;
        int i12 = 0;
        while (true) {
            i11 = c7342fy2.f48152c;
            if (i12 >= i11) {
                break;
            }
            if (!zArr[i12] && !c7342fy2.f48151b[i12].equals(c7342fy.f48151b[i12])) {
                c7342fy2.f48151b[i12] = c7342fy.f48151b[i12];
            }
            i12++;
        }
        C7342fy[] c7342fyArr = this.f51946e;
        C7342fy c7342fy3 = c7342fyArr[i10];
        if (c7342fy3 == null) {
            C7342fy c7342fy4 = new C7342fy(i11, c7342fy2.f48151b.length - i11);
            c7342fy4.a(c7342fy2);
            c7342fyArr[i10] = c7342fy4;
            a10 = true;
        } else {
            a10 = c7342fy3.a(c7342fy2, this.f51942a);
        }
        C5870Rq0 c5870Rq02 = this.f51947f[i10];
        if (c5870Rq02 != null && c5870Rq0 != null) {
            a10 |= c5870Rq02.a(c5870Rq0);
        }
        if (a10) {
            boolean[] zArr2 = this.f51948g;
            if (zArr2[i10]) {
                return;
            }
            zArr2[i10] = true;
            int[] iArr = this.f51949h;
            int i13 = this.f51950i;
            this.f51950i = i13 + 1;
            iArr[i13] = i10;
        }
    }
}
