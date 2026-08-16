package org.bouncycastle.jcajce.provider.asymmetric.util;

import fk.InterfaceC13250p;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import oh.C14503A;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.r;

public class m implements InterfaceC13250p {

    public Hashtable f101334b;

    public Vector f101335c;

    public m() {
        this(new Hashtable(), new Vector());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        if (this.f101334b.containsKey(c14549x)) {
            this.f101334b.put(c14549x, interfaceC14516g);
        } else {
            this.f101334b.put(c14549x, interfaceC14516g);
            this.f101335c.addElement(c14549x);
        }
    }

    public Hashtable b() {
        return this.f101334b;
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return (InterfaceC14516g) this.f101334b.get(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101335c.elements();
    }

    public Vector e() {
        return this.f101335c;
    }

    public void f(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Object readObject = objectInputStream.readObject();
        if (readObject instanceof Hashtable) {
            this.f101334b = (Hashtable) readObject;
            this.f101335c = (Vector) objectInputStream.readObject();
        } else {
            r rVar = new r((byte[]) readObject);
            while (true) {
                C14549x c14549x = (C14549x) rVar.k();
                if (c14549x == null) {
                    return;
                } else {
                    a(c14549x, rVar.k());
                }
            }
        }
    }

    public int g() {
        return this.f101335c.size();
    }

    public void h(ObjectOutputStream objectOutputStream) throws IOException {
        if (this.f101335c.size() == 0) {
            objectOutputStream.writeObject(new Hashtable());
            objectOutputStream.writeObject(new Vector());
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C14503A b10 = C14503A.b(byteArrayOutputStream);
        Enumeration d10 = d();
        while (d10.hasMoreElements()) {
            C14549x K10 = C14549x.K(d10.nextElement());
            b10.y(K10);
            b10.x((InterfaceC14516g) this.f101334b.get(K10));
        }
        objectOutputStream.writeObject(byteArrayOutputStream.toByteArray());
    }

    public m(Hashtable hashtable, Vector vector) {
        this.f101334b = hashtable;
        this.f101335c = vector;
    }
}
