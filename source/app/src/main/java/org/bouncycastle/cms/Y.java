package org.bouncycastle.cms;

import hi.C13486b;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Map;
import oh.C14549x;
import uh.C15610a;
import uh.C15611b;
import uh.C15618i;
import uh.InterfaceC15619j;

public class Y implements InterfaceC14626d {

    public final Hashtable f100651g;

    public Y() {
        this.f100651g = new Hashtable();
    }

    @Override
    public C15611b a(Map map) {
        return new C15611b(b(map));
    }

    public Hashtable b(Map map) {
        Hashtable hashtable = new Hashtable();
        Enumeration keys = this.f100651g.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable.put(nextElement, this.f100651g.get(nextElement));
        }
        C14549x c14549x = InterfaceC15619j.f120687a;
        if (!hashtable.containsKey(c14549x)) {
            C15610a c15610a = new C15610a(c14549x, new oh.I0(C14549x.K(map.get(InterfaceC14626d.f100732a))));
            hashtable.put(c15610a.u(), c15610a);
        }
        C14549x c14549x2 = InterfaceC15619j.f120688b;
        if (!hashtable.containsKey(c14549x2)) {
            C15610a c15610a2 = new C15610a(c14549x2, new oh.I0(new oh.C0((byte[]) map.get(InterfaceC14626d.f100733b))));
            hashtable.put(c15610a2.u(), c15610a2);
        }
        C14549x c14549x3 = InterfaceC15619j.f120693g;
        if (!hashtable.contains(c14549x3)) {
            C15610a c15610a3 = new C15610a(c14549x3, new oh.I0(new C15618i((C13486b) map.get(InterfaceC14626d.f100735d), 2, (C13486b) map.get(InterfaceC14626d.f100736e))));
            hashtable.put(c15610a3.u(), c15610a3);
        }
        return hashtable;
    }

    public Y(C15611b c15611b) {
        this.f100651g = c15611b != null ? c15611b.j() : new Hashtable();
    }
}
