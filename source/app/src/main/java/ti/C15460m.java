package ti;

import hi.C13503o;
import java.util.Date;
import oh.C14530n;

public class C15460m implements InterfaceC15451d {

    public Vh.m f117692b;

    public C15460m(Vh.m mVar) {
        this.f117692b = mVar;
    }

    public int a() {
        if (this.f117692b.x() != null) {
            return this.f117692b.x().v().intValue();
        }
        throw new IllegalStateException("attempt to get a reason where none is available");
    }

    public Date b() {
        return C15456i.a(this.f117692b.y());
    }

    public boolean c() {
        return this.f117692b.x() != null;
    }

    public C15460m(Date date) {
        this.f117692b = new Vh.m(new C14530n(date));
    }

    public C15460m(Date date, int i10) {
        this.f117692b = new Vh.m(new C14530n(date), C13503o.w(i10));
    }
}
