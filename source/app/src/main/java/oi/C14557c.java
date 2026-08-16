package oi;

import java.util.ArrayList;
import li.C14146h;
import th.C;
import th.C15426b;
import th.C15434j;
import th.C15436l;

public class C14557c {

    public final C15436l[] f99007a;

    public final C15426b[] f99008b;

    public C14557c(C15434j c15434j) {
        this.f99007a = c15434j.x();
        this.f99008b = c15434j.u();
    }

    public static C14557c a(C c10) {
        if (e(c10.x())) {
            return new C14557c(C15434j.v(c10.v()));
        }
        throw new IllegalArgumentException("content of PKIBody wrong type: " + c10.x());
    }

    public static boolean e(int i10) {
        return i10 == 1 || i10 == 3 || i10 == 8 || i10 == 14;
    }

    public C15426b[] b() {
        C15426b[] c15426bArr = this.f99008b;
        int length = c15426bArr.length;
        C15426b[] c15426bArr2 = new C15426b[length];
        System.arraycopy(c15426bArr, 0, c15426bArr2, 0, length);
        return c15426bArr2;
    }

    public C14563i[] c() {
        int length = this.f99007a.length;
        C14563i[] c14563iArr = new C14563i[length];
        for (int i10 = 0; i10 != length; i10++) {
            c14563iArr[i10] = new C14563i(this.f99007a[i10]);
        }
        return c14563iArr;
    }

    public C14146h[] d() {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            C15426b[] c15426bArr = this.f99008b;
            if (i10 == c15426bArr.length) {
                return (C14146h[]) arrayList.toArray(new C14146h[0]);
            }
            if (c15426bArr[i10].B()) {
                arrayList.add(new C14146h(this.f99008b[i10].A()));
            }
            i10++;
        }
    }

    public boolean f() {
        boolean z10 = true;
        int i10 = 0;
        while (true) {
            C15426b[] c15426bArr = this.f99008b;
            if (i10 == c15426bArr.length) {
                return z10;
            }
            z10 &= c15426bArr[i10].B();
            i10++;
        }
    }

    public C15434j g() {
        return new C15434j(this.f99008b, this.f99007a);
    }
}
