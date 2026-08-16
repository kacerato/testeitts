package oi;

import li.C14146h;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14539s;
import org.bouncycastle.cms.C14683y;
import th.C15426b;
import th.C15433i;
import th.C15436l;
import th.C15438n;
import th.L;
import uh.C15629u;

public class C14564j {

    public final C14539s f99033a;

    public final L f99034b;

    public C15438n f99035c;

    public AbstractC14551y f99036d;

    public C14564j(C14539s c14539s, L l10) {
        this.f99033a = c14539s;
        this.f99034b = l10;
    }

    public C14563i a() {
        return new C14563i(new C15436l(this.f99033a, this.f99034b, this.f99035c, this.f99036d));
    }

    public C14564j b(C14146h c14146h) {
        if (this.f99035c != null) {
            throw new IllegalStateException("certificate in response already set");
        }
        this.f99035c = new C15438n(new C15433i(new C15426b(c14146h.x())));
        return this;
    }

    public C14564j c(C14683y c14683y) {
        if (this.f99035c != null) {
            throw new IllegalStateException("certificate in response already set");
        }
        this.f99035c = new C15438n(new C15433i(new wh.l(C15629u.w(c14683y.g().u()))));
        return this;
    }

    public C14564j d(C15426b c15426b) {
        if (this.f99035c != null) {
            throw new IllegalStateException("certificate in response already set");
        }
        this.f99035c = new C15438n(new C15433i(c15426b));
        return this;
    }

    public C14564j e(byte[] bArr) {
        if (this.f99036d != null) {
            throw new IllegalStateException("response info already set");
        }
        this.f99036d = new C0(bArr);
        return this;
    }
}
