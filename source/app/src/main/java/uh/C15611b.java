package uh;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import oh.C14518h;
import oh.C14549x;
import oh.I0;
import oh.InterfaceC14516g;

public class C15611b {

    public Hashtable f120641a;

    public C15611b(Hashtable hashtable) {
        this.f120641a = new Hashtable();
        this.f120641a = c(hashtable);
    }

    public C15611b a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        C15611b c15611b = new C15611b(this.f120641a);
        c15611b.b(c14549x, new C15610a(c14549x, new I0(interfaceC14516g)));
        return c15611b;
    }

    public final void b(C14549x c14549x, C15610a c15610a) {
        Vector vector;
        Object obj = this.f120641a.get(c14549x);
        if (obj == null) {
            this.f120641a.put(c14549x, c15610a);
            return;
        }
        if (obj instanceof C15610a) {
            vector = new Vector();
            vector.addElement(obj);
        } else {
            vector = (Vector) obj;
        }
        vector.addElement(c15610a);
        this.f120641a.put(c14549x, vector);
    }

    public final Hashtable c(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable2.put(nextElement, hashtable.get(nextElement));
        }
        return hashtable2;
    }

    public C15610a d(C14549x c14549x) {
        Object obj = this.f120641a.get(c14549x);
        return obj instanceof Vector ? (C15610a) ((Vector) obj).elementAt(0) : (C15610a) obj;
    }

    public C14518h e(C14549x c14549x) {
        C14518h c14518h = new C14518h();
        Object obj = this.f120641a.get(c14549x);
        if (obj instanceof Vector) {
            Enumeration elements = ((Vector) obj).elements();
            while (elements.hasMoreElements()) {
                c14518h.a((C15610a) elements.nextElement());
            }
        } else if (obj != null) {
            c14518h.a((C15610a) obj);
        }
        return c14518h;
    }

    public C15611b f(C14549x c14549x) {
        C15611b c15611b = new C15611b(this.f120641a);
        c15611b.f120641a.remove(c14549x);
        return c15611b;
    }

    public int g() {
        Enumeration elements = this.f120641a.elements();
        int i10 = 0;
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            i10 = nextElement instanceof Vector ? i10 + ((Vector) nextElement).size() : i10 + 1;
        }
        return i10;
    }

    public C14518h h() {
        C14518h c14518h = new C14518h();
        Enumeration elements = this.f120641a.elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof Vector) {
                Enumeration elements2 = ((Vector) nextElement).elements();
                while (elements2.hasMoreElements()) {
                    c14518h.a(C15610a.y(elements2.nextElement()));
                }
            } else {
                c14518h.a(C15610a.y(nextElement));
            }
        }
        return c14518h;
    }

    public C15612c i() {
        return new C15612c(h());
    }

    public Hashtable j() {
        return c(this.f120641a);
    }

    public C15611b(C14518h c14518h) {
        this.f120641a = new Hashtable();
        for (int i10 = 0; i10 != c14518h.i(); i10++) {
            C15610a y10 = C15610a.y(c14518h.g(i10));
            b(y10.u(), y10);
        }
    }

    public C15611b(oh.G g10) {
        this.f120641a = new Hashtable();
        for (int i10 = 0; i10 != g10.size(); i10++) {
            C15610a y10 = C15610a.y(g10.H(i10));
            b(y10.u(), y10);
        }
    }

    public C15611b(C15610a c15610a) {
        this.f120641a = new Hashtable();
        b(c15610a.u(), c15610a);
    }

    public C15611b(C15612c c15612c) {
        this(oh.G.F(c15612c.r()));
    }
}
