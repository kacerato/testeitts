package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;

public class J2 extends Q2 {

    public final String f41273b;

    public ArrayList f41274c;

    public J2(int i10, String str) {
        super(null);
        this.f41273b = str;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void a(Object obj, String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        if (this.f41274c == null) {
            this.f41274c = new ArrayList(this.f41273b != null ? 2 : 1);
        }
        if (this.f41273b != null) {
            this.f41274c.add(str);
        }
        int i10 = 0;
        if (obj instanceof byte[]) {
            ArrayList arrayList8 = this.f41274c;
            byte[] bArr = (byte[]) obj;
            if (bArr == null) {
                arrayList7 = new ArrayList();
            } else {
                ArrayList arrayList9 = new ArrayList(bArr.length);
                int length = bArr.length;
                while (i10 < length) {
                    arrayList9.add(Byte.valueOf(bArr[i10]));
                    i10++;
                }
                arrayList7 = arrayList9;
            }
            arrayList8.add(arrayList7);
            return;
        }
        if (obj instanceof boolean[]) {
            ArrayList arrayList10 = this.f41274c;
            boolean[] zArr = (boolean[]) obj;
            if (zArr == null) {
                arrayList6 = new ArrayList();
            } else {
                ArrayList arrayList11 = new ArrayList(zArr.length);
                int length2 = zArr.length;
                while (i10 < length2) {
                    arrayList11.add(Boolean.valueOf(zArr[i10]));
                    i10++;
                }
                arrayList6 = arrayList11;
            }
            arrayList10.add(arrayList6);
            return;
        }
        if (obj instanceof short[]) {
            ArrayList arrayList12 = this.f41274c;
            short[] sArr = (short[]) obj;
            if (sArr == null) {
                arrayList5 = new ArrayList();
            } else {
                ArrayList arrayList13 = new ArrayList(sArr.length);
                int length3 = sArr.length;
                while (i10 < length3) {
                    arrayList13.add(Short.valueOf(sArr[i10]));
                    i10++;
                }
                arrayList5 = arrayList13;
            }
            arrayList12.add(arrayList5);
            return;
        }
        if (obj instanceof char[]) {
            ArrayList arrayList14 = this.f41274c;
            char[] cArr = (char[]) obj;
            if (cArr == null) {
                arrayList4 = new ArrayList();
            } else {
                ArrayList arrayList15 = new ArrayList(cArr.length);
                int length4 = cArr.length;
                while (i10 < length4) {
                    arrayList15.add(Character.valueOf(cArr[i10]));
                    i10++;
                }
                arrayList4 = arrayList15;
            }
            arrayList14.add(arrayList4);
            return;
        }
        if (obj instanceof int[]) {
            this.f41274c.add(AbstractC9839uw0.a((int[]) obj));
            return;
        }
        if (obj instanceof long[]) {
            ArrayList arrayList16 = this.f41274c;
            long[] jArr = (long[]) obj;
            if (jArr == null) {
                arrayList3 = new ArrayList();
            } else {
                ArrayList arrayList17 = new ArrayList(jArr.length);
                int length5 = jArr.length;
                while (i10 < length5) {
                    arrayList17.add(Long.valueOf(jArr[i10]));
                    i10++;
                }
                arrayList3 = arrayList17;
            }
            arrayList16.add(arrayList3);
            return;
        }
        if (obj instanceof float[]) {
            ArrayList arrayList18 = this.f41274c;
            float[] fArr = (float[]) obj;
            if (fArr == null) {
                arrayList2 = new ArrayList();
            } else {
                ArrayList arrayList19 = new ArrayList(fArr.length);
                int length6 = fArr.length;
                while (i10 < length6) {
                    arrayList19.add(Float.valueOf(fArr[i10]));
                    i10++;
                }
                arrayList2 = arrayList19;
            }
            arrayList18.add(arrayList2);
            return;
        }
        if (obj instanceof double[]) {
            ArrayList arrayList20 = this.f41274c;
            double[] dArr = (double[]) obj;
            if (dArr == null) {
                arrayList = new ArrayList();
            } else {
                ArrayList arrayList21 = new ArrayList(dArr.length);
                int length7 = dArr.length;
                while (i10 < length7) {
                    arrayList21.add(Double.valueOf(dArr[i10]));
                    i10++;
                }
                arrayList = arrayList21;
            }
            arrayList20.add(arrayList);
            return;
        }
        this.f41274c.add(obj);
    }

    public J2(ArrayList arrayList) {
        super(null);
        this.f41274c = arrayList;
    }

    public J2(String str) {
        this(0, str);
        if (getClass() != J2.class) {
            throw new IllegalStateException();
        }
    }

    @Override
    public final void a(String str, String str2, String str3) {
        if (this.f41274c == null) {
            this.f41274c = new ArrayList(this.f41273b != null ? 2 : 1);
        }
        if (this.f41273b != null) {
            this.f41274c.add(str);
        }
        this.f41274c.add(new String[]{str2, str3});
    }

    @Override
    public final Q2 a(String str, String str2) {
        if (this.f41274c == null) {
            this.f41274c = new ArrayList(this.f41273b != null ? 2 : 1);
        }
        if (this.f41273b != null) {
            this.f41274c.add(str);
        }
        J2 j22 = new J2(str2);
        this.f41274c.add(j22);
        return j22;
    }

    @Override
    public final Q2 a(String str) {
        if (this.f41274c == null) {
            this.f41274c = new ArrayList(this.f41273b != null ? 2 : 1);
        }
        if (this.f41273b != null) {
            this.f41274c.add(str);
        }
        ArrayList arrayList = new ArrayList();
        this.f41274c.add(arrayList);
        return new J2(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Q2 q22) {
        if (q22 != null) {
            ArrayList arrayList = this.f41274c;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10 += 2) {
                    a(q22, (String) this.f41274c.get(i10), this.f41274c.get(i10 + 1));
                }
            }
            q22.a();
        }
    }

    public static void a(Q2 q22, String str, Object obj) {
        if (q22 != null) {
            if (obj instanceof String[]) {
                String[] strArr = (String[]) obj;
                q22.a(str, strArr[0], strArr[1]);
                return;
            }
            if (obj instanceof J2) {
                J2 j22 = (J2) obj;
                j22.a(q22.a(str, j22.f41273b));
                return;
            }
            if (obj instanceof List) {
                Q2 a10 = q22.a(str);
                if (a10 != null) {
                    List list = (List) obj;
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        a(a10, (String) null, list.get(i10));
                    }
                    a10.a();
                    return;
                }
                return;
            }
            q22.a(obj, str);
        }
    }
}
