package org.bouncycastle.cms;

import hi.C13486b;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Map;
import oh.C14549x;
import uh.C15610a;
import uh.C15611b;
import uh.C15618i;
import uh.InterfaceC15619j;

public class C14623b0 implements InterfaceC14626d {

    public final Hashtable f100658g;

    public C14623b0() {
        this.f100658g = new Hashtable();
    }

    public static Hashtable b(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable2.put(nextElement, hashtable.get(nextElement));
        }
        return hashtable2;
    }

    @Override
    public C15611b a(Map map) {
        return new C15611b(c(map));
    }

    public Hashtable c(Map map) {
        C14549x K10;
        Hashtable b10 = b(this.f100658g);
        C14549x c14549x = InterfaceC15619j.f120687a;
        if (!b10.containsKey(c14549x) && (K10 = C14549x.K(map.get(InterfaceC14626d.f100732a))) != null) {
            C15610a c15610a = new C15610a(c14549x, new oh.I0(K10));
            b10.put(c15610a.u(), c15610a);
        }
        C14549x c14549x2 = InterfaceC15619j.f120689c;
        if (!b10.containsKey(c14549x2)) {
            C15610a c15610a2 = new C15610a(c14549x2, new oh.I0(new uh.Z(new Date())));
            b10.put(c15610a2.u(), c15610a2);
        }
        C14549x c14549x3 = InterfaceC15619j.f120688b;
        if (!b10.containsKey(c14549x3)) {
            C15610a c15610a3 = new C15610a(c14549x3, new oh.I0(new oh.C0((byte[]) map.get(InterfaceC14626d.f100733b))));
            b10.put(c15610a3.u(), c15610a3);
        }
        C14549x c14549x4 = InterfaceC15619j.f120693g;
        if (!b10.contains(c14549x4)) {
            C15610a c15610a4 = new C15610a(c14549x4, new oh.I0(new C15618i((C13486b) map.get(InterfaceC14626d.f100735d), 1, (C13486b) map.get(InterfaceC14626d.f100737f))));
            b10.put(c15610a4.u(), c15610a4);
        }
        return b10;
    }

    public C14623b0(C15611b c15611b) {
        this.f100658g = c15611b != null ? c15611b.j() : new Hashtable();
    }
}
