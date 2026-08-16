package oi;

import java.util.ArrayList;
import java.util.List;
import li.C14146h;
import th.C15426b;
import th.C15434j;
import th.C15436l;

public class C14558d {

    public final List<C15436l> f99009a = new ArrayList();

    public final C15426b[] f99010b;

    public C14558d(C14146h... c14146hArr) {
        this.f99010b = new C15426b[c14146hArr.length];
        for (int i10 = 0; i10 != c14146hArr.length; i10++) {
            this.f99010b[i10] = new C15426b(c14146hArr[i10].x());
        }
    }

    public C14558d a(C14563i c14563i) {
        this.f99009a.add(c14563i.e());
        return this;
    }

    public C14557c b() {
        C15426b[] c15426bArr = this.f99010b;
        C15434j c15434j = c15426bArr.length != 0 ? new C15434j(c15426bArr, (C15436l[]) this.f99009a.toArray(new C15436l[0])) : new C15434j(null, (C15436l[]) this.f99009a.toArray(new C15436l[0]));
        this.f99009a.clear();
        return new C14557c(c15434j);
    }
}
