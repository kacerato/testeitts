package dm;

import java.util.Date;

public class l implements org.bouncycastle.util.r<j> {

    public final g f84876b;

    public final Date f84877c;

    public l(g gVar) {
        this(gVar, new Date());
    }

    public g a() {
        return this.f84876b;
    }

    @Override
    public boolean Z2(j jVar) {
        try {
            if (jVar.l(this.f84876b, this.f84877c)) {
                jVar.s(this.f84876b, this.f84877c);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override
    public Object clone() {
        return this;
    }

    public l(g gVar, Date date) {
        this.f84876b = gVar;
        this.f84877c = new Date(date.getTime());
    }
}
