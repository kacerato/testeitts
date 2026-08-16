package xi;

import hi.C13481E;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import li.C14139a;
import li.C14140b;
import li.C14143e;

public class C16117c {

    public C14139a f129823a;

    public C14140b f129824b;

    public BigInteger f129825c;

    public Date f129826d;

    public C14143e f129827e;

    public Collection f129828f = new HashSet();

    public Collection f129829g = new HashSet();

    public void a(C13481E c13481e) {
        this.f129829g.add(c13481e);
    }

    public void b(C13481E c13481e) {
        this.f129828f.add(c13481e);
    }

    public C16116b c() {
        return new C16116b(this.f129823a, this.f129824b, this.f129825c, this.f129826d, this.f129827e, Collections.unmodifiableCollection(new HashSet(this.f129828f)), Collections.unmodifiableCollection(new HashSet(this.f129829g)));
    }

    public final Set d(Collection collection) throws IOException {
        if (collection == null || collection.isEmpty()) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            hashSet.add(C13481E.v(it.next()));
        }
        return hashSet;
    }

    public void e(C14143e c14143e) {
        this.f129827e = c14143e;
    }

    public void f(Date date) {
        if (date != null) {
            this.f129826d = new Date(date.getTime());
        } else {
            this.f129826d = null;
        }
    }

    public void g(C14139a c14139a) {
        this.f129823a = c14139a;
    }

    public void h(C14140b c14140b) {
        this.f129824b = c14140b;
    }

    public void i(BigInteger bigInteger) {
        this.f129825c = bigInteger;
    }

    public void j(Collection collection) throws IOException {
        this.f129829g = d(collection);
    }

    public void k(Collection collection) throws IOException {
        this.f129828f = d(collection);
    }
}
