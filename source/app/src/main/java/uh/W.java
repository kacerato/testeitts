package uh;

import java.io.IOException;
import oh.C14539s;
import oh.InterfaceC14516g;

public class W {

    public oh.F f120623a;

    public C14539s f120624b;

    public Object f120625c;

    public boolean f120626d;

    public boolean f120627e;

    public W(oh.F f10) throws IOException {
        this.f120623a = f10;
        this.f120624b = (C14539s) f10.readObject();
    }

    public static W e(Object obj) throws IOException {
        if (obj instanceof oh.E) {
            return new W(((oh.E) obj).L());
        }
        if (obj instanceof oh.F) {
            return new W((oh.F) obj);
        }
        throw new IOException("unknown object encountered: " + obj.getClass().getName());
    }

    public oh.H a() throws IOException {
        this.f120626d = true;
        InterfaceC14516g readObject = this.f120623a.readObject();
        this.f120625c = readObject;
        if (readObject instanceof oh.N) {
            oh.N n10 = (oh.N) readObject;
            if (n10.p(0)) {
                oh.H h10 = (oh.H) n10.d(false, 17);
                this.f120625c = null;
                return h10;
            }
        }
        return null;
    }

    public oh.H b() throws IOException {
        if (!this.f120626d) {
            throw new IOException("getCerts() has not been called.");
        }
        this.f120627e = true;
        if (this.f120625c == null) {
            this.f120625c = this.f120623a.readObject();
        }
        Object obj = this.f120625c;
        if (obj instanceof oh.N) {
            oh.N n10 = (oh.N) obj;
            if (n10.p(1)) {
                oh.H h10 = (oh.H) n10.d(false, 17);
                this.f120625c = null;
                return h10;
            }
        }
        return null;
    }

    public oh.H c() throws IOException {
        InterfaceC14516g readObject = this.f120623a.readObject();
        return readObject instanceof oh.G ? ((oh.G) readObject).L() : (oh.H) readObject;
    }

    public C15625p d() throws IOException {
        return new C15625p((oh.F) this.f120623a.readObject());
    }

    public oh.H f() throws IOException {
        if (!this.f120626d || !this.f120627e) {
            throw new IOException("getCerts() and/or getCrls() has not been called.");
        }
        if (this.f120625c == null) {
            this.f120625c = this.f120623a.readObject();
        }
        return (oh.H) this.f120625c;
    }

    public C14539s g() {
        return this.f120624b;
    }
}
