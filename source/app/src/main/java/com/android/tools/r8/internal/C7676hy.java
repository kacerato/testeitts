package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C7676hy extends H {

    public int f48744g;

    public ArrayList f48745h;

    public ArrayList f48746i;

    public C7676hy() {
        super(-1);
    }

    @Override
    public final int a() {
        return 14;
    }

    public C7676hy(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        super(-1);
        this.f48744g = i10;
        int i13 = 0;
        if (i10 == -1 || i10 == 0) {
            ArrayList arrayList = new ArrayList(i11);
            for (int i14 = 0; i14 < i11; i14++) {
                arrayList.add(objArr[i14]);
            }
            this.f48745h = arrayList;
            ArrayList arrayList2 = new ArrayList(i12);
            while (i13 < i12) {
                arrayList2.add(objArr2[i13]);
                i13++;
            }
            this.f48746i = arrayList2;
            return;
        }
        if (i10 == 1) {
            ArrayList arrayList3 = new ArrayList(i11);
            while (i13 < i11) {
                arrayList3.add(objArr[i13]);
                i13++;
            }
            this.f48745h = arrayList3;
            return;
        }
        if (i10 == 2) {
            ArrayList arrayList4 = new ArrayList(i11);
            while (i13 < i11) {
                arrayList4.add(null);
                i13++;
            }
            this.f48745h = arrayList4;
            return;
        }
        if (i10 != 3) {
            if (i10 == 4) {
                ArrayList arrayList5 = new ArrayList(1);
                arrayList5.add(objArr2[0]);
                this.f48746i = arrayList5;
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    @Override
    public final void a(DX dx) {
        int i10 = this.f48744g;
        if (i10 == -1 || i10 == 0) {
            dx.a(i10, this.f48745h.size(), a(this.f48745h), this.f48746i.size(), a(this.f48746i));
            return;
        }
        if (i10 == 1) {
            dx.a(i10, this.f48745h.size(), a(this.f48745h), 0, (Object[]) null);
            return;
        }
        if (i10 == 2) {
            dx.a(i10, this.f48745h.size(), (Object[]) null, 0, (Object[]) null);
        } else if (i10 == 3) {
            dx.a(i10, 0, (Object[]) null, 0, (Object[]) null);
        } else {
            if (i10 == 4) {
                dx.a(i10, 0, (Object[]) null, 1, a(this.f48746i));
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    @Override
    public final H a(NK nk2) {
        C7676hy c7676hy = new C7676hy();
        c7676hy.f48744g = this.f48744g;
        if (this.f48745h != null) {
            c7676hy.f48745h = new ArrayList();
            int size = this.f48745h.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = this.f48745h.get(i10);
                if (obj instanceof YQ) {
                    obj = nk2.a((YQ) obj);
                }
                c7676hy.f48745h.add(obj);
            }
        }
        if (this.f48746i != null) {
            c7676hy.f48746i = new ArrayList();
            int size2 = this.f48746i.size();
            for (int i11 = 0; i11 < size2; i11++) {
                Object obj2 = this.f48746i.get(i11);
                if (obj2 instanceof YQ) {
                    obj2 = nk2.a((YQ) obj2);
                }
                c7676hy.f48746i.add(obj2);
            }
        }
        return c7676hy;
    }

    public static Object[] a(ArrayList arrayList) {
        int size = arrayList.size();
        Object[] objArr = new Object[size];
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = arrayList.get(i10);
            if (obj instanceof YQ) {
                obj = ((YQ) obj).b();
            }
            objArr[i10] = obj;
        }
        return objArr;
    }
}
