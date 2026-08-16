package Sk;

import Qk.InterfaceC3013f;
import Xh.C3326a;
import Xh.C3330e;
import fi.C13228d;
import hi.C13478B;
import hi.h0;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import oh.C14518h;
import oh.C14538r0;
import oh.C14549x;
import oh.G;
import oh.I0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class f {

    public h0 f23616a;

    public C13228d f23617b;

    public List f23618c;

    public boolean f23619d;

    public f(f fVar) {
        this.f23618c = new ArrayList();
        this.f23619d = false;
        this.f23616a = fVar.f23616a;
        this.f23617b = fVar.f23617b;
        this.f23619d = fVar.f23619d;
        this.f23618c = new ArrayList(fVar.f23618c);
    }

    public f a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f23618c.add(new C3326a(c14549x, new I0(interfaceC14516g)));
        return this;
    }

    public f b(C14549x c14549x, InterfaceC14516g[] interfaceC14516gArr) {
        this.f23618c.add(new C3326a(c14549x, new I0(interfaceC14516gArr)));
        return this;
    }

    public e c(InterfaceC3013f interfaceC3013f) {
        Xh.f fVar;
        if (this.f23618c.isEmpty()) {
            fVar = this.f23619d ? new Xh.f(this.f23617b, this.f23616a, (G) null) : new Xh.f(this.f23617b, this.f23616a, new I0());
        } else {
            C14518h c14518h = new C14518h();
            Iterator it = this.f23618c.iterator();
            while (it.hasNext()) {
                c14518h.a(C3326a.y(it.next()));
            }
            fVar = new Xh.f(this.f23617b, this.f23616a, new I0(c14518h));
        }
        try {
            OutputStream outputStream = interfaceC3013f.getOutputStream();
            outputStream.write(fVar.s(InterfaceC14520i.f98892a));
            outputStream.close();
            return new e(new C3330e(fVar, interfaceC3013f.a(), new C14538r0(interfaceC3013f.getSignature())));
        } catch (IOException unused) {
            throw new IllegalStateException("cannot produce certification request signature");
        }
    }

    public e d(InterfaceC3013f interfaceC3013f, h0 h0Var, InterfaceC3013f interfaceC3013f2) {
        C14518h c14518h = new C14518h();
        Iterator it = this.f23618c.iterator();
        while (it.hasNext()) {
            c14518h.a(C3326a.y(it.next()));
        }
        c14518h.a(new C3326a(C13478B.f90525K, new I0(h0Var)));
        c14518h.a(new C3326a(C13478B.f90526L, new I0(interfaceC3013f2.a())));
        Xh.f fVar = new Xh.f(this.f23617b, this.f23616a, new I0(c14518h));
        try {
            OutputStream outputStream = interfaceC3013f2.getOutputStream();
            outputStream.write(fVar.s(InterfaceC14520i.f98892a));
            outputStream.close();
            c14518h.a(new C3326a(C13478B.f90527M, new I0(new C14538r0(interfaceC3013f2.getSignature()))));
            Xh.f fVar2 = new Xh.f(this.f23617b, this.f23616a, new I0(c14518h));
            try {
                OutputStream outputStream2 = interfaceC3013f.getOutputStream();
                outputStream2.write(fVar2.s(InterfaceC14520i.f98892a));
                outputStream2.close();
                return new e(new C3330e(fVar2, interfaceC3013f.a(), new C14538r0(interfaceC3013f.getSignature())));
            } catch (IOException unused) {
                throw new IllegalStateException("cannot produce certification request signature");
            }
        } catch (IOException unused2) {
            throw new IllegalStateException("cannot produce certification request signature");
        }
    }

    public f e(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        Iterator it = this.f23618c.iterator();
        while (it.hasNext()) {
            if (((C3326a) it.next()).u().A(c14549x)) {
                throw new IllegalStateException("Attribute " + c14549x.toString() + " is already set");
            }
        }
        a(c14549x, interfaceC14516g);
        return this;
    }

    public f f(C14549x c14549x, InterfaceC14516g[] interfaceC14516gArr) {
        Iterator it = this.f23618c.iterator();
        while (it.hasNext()) {
            if (((C3326a) it.next()).u().A(c14549x)) {
                throw new IllegalStateException("Attribute " + c14549x.toString() + " is already set");
            }
        }
        b(c14549x, interfaceC14516gArr);
        return this;
    }

    public f g(boolean z10) {
        this.f23619d = z10;
        return this;
    }

    public f(C13228d c13228d, h0 h0Var) {
        this.f23618c = new ArrayList();
        this.f23619d = false;
        this.f23617b = c13228d;
        this.f23616a = h0Var;
    }
}
