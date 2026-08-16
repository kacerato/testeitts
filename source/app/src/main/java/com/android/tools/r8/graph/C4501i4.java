package com.android.tools.r8.graph;

import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C9663tt0;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;

public final class C4501i4 extends com.android.tools.r8.internal.Q2 {

    public static final boolean f37291f = true;

    public final C4482h4 f37292b;

    public final BiConsumer f37293c;

    public ArrayList f37294d;

    public final ArrayList f37295e;

    public C4501i4(C4482h4 c4482h4, BiConsumer biConsumer) {
        super(null);
        this.f37294d = null;
        this.f37295e = new ArrayList();
        this.f37292b = c4482h4;
        this.f37293c = biConsumer;
    }

    @Override
    public final void a(String str, String str2, String str3) {
        M2 e10 = this.f37292b.e(str2);
        C4482h4 c4482h4 = this.f37292b;
        a((R2) new T2(c4482h4.f37267a.f50660a.a(e10, c4482h4.e(str2), c4482h4.d(str3))), str);
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(final String str, final String str2) {
        return new C4501i4(this.f37292b, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4501i4.this.a(str, str2, (List) obj, (List) obj2);
            }
        });
    }

    public final void a(String str, String str2, List list, List list2) {
        a((R2) new R2.a(C4614o4.a(str2, list, list2, this.f37292b)), str);
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(final String str) {
        return new C4501i4(this.f37292b, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4501i4.this.a(str, (List) obj, (List) obj2);
            }
        });
    }

    public final void a(String str, List list, List list2) {
        if (!f37291f && list != null) {
            throw new AssertionError();
        }
        a((R2) new R2.b((R2[]) list2.toArray(R2.f36737b)), str);
    }

    @Override
    public final void a() {
        this.f37293c.accept(this.f37294d, this.f37295e);
    }

    public final void a(R2 r22, String str) {
        if (str != null) {
            if (this.f37294d == null) {
                this.f37294d = new ArrayList();
            }
            this.f37294d.add(this.f37292b.d(str));
        }
        this.f37295e.add(r22);
    }

    public static R2.b a(Object obj) {
        int i10 = 0;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            R2[] r2Arr = new R2[bArr.length];
            while (i10 < bArr.length) {
                r2Arr[i10] = R2.d.a(bArr[i10]);
                i10++;
            }
            return new R2.b(r2Arr);
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            R2[] r2Arr2 = new R2[zArr.length];
            while (i10 < zArr.length) {
                r2Arr2[i10] = zArr[i10] ? R2.c.f36741e : R2.c.f36742f;
                i10++;
            }
            return new R2.b(r2Arr2);
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            R2[] r2Arr3 = new R2[cArr.length];
            while (i10 < cArr.length) {
                char c10 = cArr[i10];
                R2.e eVar = R2.e.f36747e;
                if (c10 != 0) {
                    eVar = new R2.e(c10);
                }
                r2Arr3[i10] = eVar;
                i10++;
            }
            return new R2.b(r2Arr3);
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            R2[] r2Arr4 = new R2[sArr.length];
            while (i10 < sArr.length) {
                short s10 = sArr[i10];
                R2.j jVar = R2.j.f36757e;
                if (s10 != 0) {
                    jVar = new R2.j(s10);
                }
                r2Arr4[i10] = jVar;
                i10++;
            }
            return new R2.b(r2Arr4);
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            R2[] r2Arr5 = new R2[iArr.length];
            while (i10 < iArr.length) {
                r2Arr5[i10] = R2.h.j(iArr[i10]);
                i10++;
            }
            return new R2.b(r2Arr5);
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            R2[] r2Arr6 = new R2[jArr.length];
            while (i10 < jArr.length) {
                r2Arr6[i10] = R2.i.a(jArr[i10]);
                i10++;
            }
            return new R2.b(r2Arr6);
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            R2[] r2Arr7 = new R2[fArr.length];
            while (i10 < fArr.length) {
                r2Arr7[i10] = R2.g.a(fArr[i10]);
                i10++;
            }
            return new R2.b(r2Arr7);
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            R2[] r2Arr8 = new R2[dArr.length];
            while (i10 < dArr.length) {
                r2Arr8[i10] = R2.f.a(dArr[i10]);
                i10++;
            }
            return new R2.b(r2Arr8);
        }
        throw new C5417Jv0("Unexpected type of annotation value: " + obj);
    }

    @Override
    public final void a(Object obj, String str) {
        R2 a10;
        R2 lVar;
        if (obj == null) {
            a10 = Z2.f37013d;
        } else if (obj instanceof Byte) {
            a10 = R2.d.a(((Byte) obj).byteValue());
        } else if (obj instanceof Boolean) {
            a10 = ((Boolean) obj).booleanValue() ? R2.c.f36741e : R2.c.f36742f;
        } else {
            if (obj instanceof Character) {
                char charValue = ((Character) obj).charValue();
                lVar = R2.e.f36747e;
                if (charValue != 0) {
                    lVar = new R2.e(charValue);
                }
            } else if (obj instanceof Short) {
                short shortValue = ((Short) obj).shortValue();
                lVar = R2.j.f36757e;
                if (shortValue != 0) {
                    lVar = new R2.j(shortValue);
                }
            } else if (obj instanceof Integer) {
                a10 = R2.h.j(((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                a10 = R2.i.a(((Long) obj).longValue());
            } else if (obj instanceof Float) {
                a10 = R2.g.a(((Float) obj).floatValue());
            } else if (obj instanceof Double) {
                a10 = R2.f.a(((Double) obj).doubleValue());
            } else if (obj instanceof String) {
                lVar = new R2.k(this.f37292b.d((String) obj));
            } else if (obj instanceof C9663tt0) {
                lVar = new R2.l(this.f37292b.e(((C9663tt0) obj).b()));
            } else {
                a10 = a(obj);
            }
            a10 = lVar;
        }
        a(a10, str);
    }
}
