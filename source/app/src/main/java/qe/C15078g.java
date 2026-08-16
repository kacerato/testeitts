package qe;

import androidx.annotation.NonNull;
import re.C15173c;
import ve.AbstractC15836b;
import we.AbstractC15994a;
import ze.C16307b;
import ze.InterfaceC16306a;

public class C15078g {

    public final C15173c f106140a;

    public final AbstractC15836b f106141b;

    public final InterfaceC16306a f106142c;

    public final InterfaceC15074c f106143d;

    public final AbstractC15994a f106144e;

    public final ve.i f106145f;

    public final InterfaceC15082k f106146g;

    public static class b {

        public C15173c f106147a;

        public AbstractC15836b f106148b;

        public InterfaceC16306a f106149c;

        public InterfaceC15074c f106150d;

        public AbstractC15994a f106151e;

        public ve.i f106152f;

        public InterfaceC15082k f106153g;

        @NonNull
        public b h(@NonNull AbstractC15836b abstractC15836b) {
            this.f106148b = abstractC15836b;
            return this;
        }

        @NonNull
        public C15078g i(@NonNull C15173c c15173c, @NonNull InterfaceC15082k interfaceC15082k) {
            this.f106147a = c15173c;
            this.f106153g = interfaceC15082k;
            if (this.f106148b == null) {
                this.f106148b = AbstractC15836b.c();
            }
            if (this.f106149c == null) {
                this.f106149c = new C16307b();
            }
            if (this.f106150d == null) {
                this.f106150d = new C15075d();
            }
            if (this.f106151e == null) {
                this.f106151e = AbstractC15994a.a();
            }
            if (this.f106152f == null) {
                this.f106152f = new ve.j();
            }
            return new C15078g(this);
        }

        @NonNull
        public b j(@NonNull AbstractC15994a abstractC15994a) {
            this.f106151e = abstractC15994a;
            return this;
        }

        @NonNull
        public b k(@NonNull ve.i iVar) {
            this.f106152f = iVar;
            return this;
        }

        @NonNull
        public b l(@NonNull InterfaceC15074c interfaceC15074c) {
            this.f106150d = interfaceC15074c;
            return this;
        }

        @NonNull
        public b m(@NonNull InterfaceC16306a interfaceC16306a) {
            this.f106149c = interfaceC16306a;
            return this;
        }
    }

    @NonNull
    public static b b() {
        return new b();
    }

    @NonNull
    public AbstractC15836b a() {
        return this.f106141b;
    }

    @NonNull
    public AbstractC15994a c() {
        return this.f106144e;
    }

    @NonNull
    public ve.i d() {
        return this.f106145f;
    }

    @NonNull
    public InterfaceC15074c e() {
        return this.f106143d;
    }

    @NonNull
    public InterfaceC15082k f() {
        return this.f106146g;
    }

    @NonNull
    public InterfaceC16306a g() {
        return this.f106142c;
    }

    @NonNull
    public C15173c h() {
        return this.f106140a;
    }

    public C15078g(@NonNull b bVar) {
        this.f106140a = bVar.f106147a;
        this.f106141b = bVar.f106148b;
        this.f106142c = bVar.f106149c;
        this.f106143d = bVar.f106150d;
        this.f106144e = bVar.f106151e;
        this.f106145f = bVar.f106152f;
        this.f106146g = bVar.f106153g;
    }
}
